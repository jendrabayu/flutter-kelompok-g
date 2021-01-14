import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smart_home/constans.dart';
import 'package:smart_home/screens/camera/preview_camera_screen.dart';
import 'package:ext_storage/ext_storage.dart';

class CameraScreen extends StatefulWidget {
  static String routeName = '/camera';

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State {
  List cameras;
  CameraController controller;
  int selectedCameraIndex;
  String imgPath;

  @override
  void initState() {
    super.initState();

    //Mendapatkan daftar kamera yang tersedia
    availableCameras().then((value) {
      cameras = value;
      if (cameras.length > 0) {
        setState(() {
          //Default kamera adalah kamera belakang index ke-0
          selectedCameraIndex = 0;
        });
        _initializeCameraController(cameras[selectedCameraIndex])
            .then((void v) {});
      } else {
        print('Tidak ada kamera yang tersedia');
      }
    }).catchError((err) {
      print('Error :${err.code}Error message : ${err.message}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: _buildCameraPreview(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _buildCameraToggleRow(),
                      _buildCameraControl(context),
                      Spacer()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Inisialisasi camera controller
  Future _initializeCameraController(
      CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (err) {
      print('Error:${err.code}\nError message : ${err.description}');
    }
    if (mounted) {
      setState(() {});
    }
  }

  Widget _buildCameraPreview() {
    if (controller == null || !controller.value.isInitialized) {
      return Center(
        child: Container(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            backgroundColor: kBgColorPrimary,
          ),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }

  Widget _buildCameraControl(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(
                Icons.camera,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              onPressed: () async {
                try {
                  //path untuk directory project
                  // final path =
                  //     join((await getTemporaryDirectory()).path, '${DateTime.now()}.jpg');
                  // await controller.takePicture().then((value) => value.saveTo(path));

                  //path untuk external storage ke directory "pictures"
                  final extPath = join(
                      await ExtStorage.getExternalStoragePublicDirectory(
                          ExtStorage.DIRECTORY_PICTURES),
                      '${DateTime.now()}.jpg');

                  if (!(await Permission.storage.status).isGranted) {
                    var status = await Permission.storage.request();
                    if (!status.isGranted) {
                      return null;
                    }
                  }

                  await controller
                      .takePicture()
                      .then((value) => value.saveTo(extPath));

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PreviewCameraScreen(
                              imagePath: extPath,
                            )),
                  );
                } catch (err) {
                  print(
                      'Error:${err.code}\nError message : ${err.description}');
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCameraToggleRow() {
    if (cameras == null || cameras.isEmpty) {
      return Spacer();
    }
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton.icon(
          onPressed: () {
            selectedCameraIndex = selectedCameraIndex < cameras.length - 1
                ? selectedCameraIndex + 1
                : 0;
            CameraDescription selectedCamera = cameras[selectedCameraIndex];
            _initializeCameraController(selectedCamera);
          },
          icon: Icon(
            _getCameraIcon(lensDirection),
            color: Colors.white,
            size: 24,
          ),
          label: Text(
            '${lensDirection.toString().substring(lensDirection.toString().indexOf('.') + 1).toUpperCase()}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  IconData _getCameraIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.back:
        return CupertinoIcons.switch_camera;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }
}
