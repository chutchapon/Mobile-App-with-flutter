import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Homescreen extends StatefulWidget {
  Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController input = new TextEditingController();
  bool isCameraPermissionEnabled = false;

  void scan() async {
    String cameraScanResult = await scanner.scan();
    setState(
      () {
        input.text = cameraScanResult;
      },
    );
  }

  void copy() {}
  void share() {}
  void checkPermissions() async {
    if (await Permission.camera.request().isGranted) {
      setState(
        () {
          isCameraPermissionEnabled = true;
        },
      );
    }
    if (await Permission.camera.isPermanentlyDenied) {
      openAppSettings();
    }
  }
  @override
  void initState() {
    checkPermissions();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QRCode Scanner"),
      ),
      body: !isCameraPermissionEnabled
          ? Center(
              child: ElevatedButton(
                onPressed: () => openAppSettings(),
                child: Text("Please Set Camera Permission On!!"),
              ),
            )
          : Container(
              child: Column(
                children: [
                  Text("Push Scan button for start scan"),
                  Stack(
                    children: [
                      TextFormField(
                        controller: input,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10,
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Column(
                          children: [
                            ElevatedButton.icon(
                              onPressed: copy,
                              icon: Icon(Icons.copy),
                              label: Text("Copy"),
                            ),
                            ElevatedButton.icon(
                              onPressed: share,
                              icon: Icon(Icons.share),
                              label: Text("Share"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: scan,
                      icon: Icon(Icons.camera),
                      label: Text("Scan"),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
