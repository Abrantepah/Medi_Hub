// ignore_for_file: avoid_print, unused_local_variable, unused_field, use_build_context_synchronously, unused_element, non_constant_identifier_names, depend_on_referenced_packages

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:med_hub/widgets/navbar.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Navbar()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: const Text(
          "Select & Crop image",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 142, 201, 249),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Set a photo of yourself",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text("Photos make your profile more engaging",
                style: TextStyle(fontSize: 15)),
            const SizedBox(height: 50),
            imageFile == null
                ? Image.asset("lib/images/profile.png",
                    height: 300.0, width: 300.0)
                : ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.file(
                      imageFile!,
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async {
                  Map<Permission, PermissionStatus> statuses = await [
                    Permission.storage,
                    Permission.camera,
                  ].request();
                  if (statuses[Permission.storage]!.isGranted &&
                      statuses[Permission.camera]!.isGranted) {
                    showImagePicker(context);
                  } else {
                    var snackBar =
                        const SnackBar(content: Text('Permission not granted'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text("Select Image"))
          ],
        ),
      ),
    ));
  }
}

final picker = ImagePicker();
void showImagePicker(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Card(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5.2,
            margin: const EdgeInsets.only(top: 8.8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    _imgFromGallery();
                    Navigator.pop(context);
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 60,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    _imgFromCamera();
                    Navigator.pop(context);
                  },
                  child: const Column(
                    children: [
                      Icon(
                        Icons.camera_alt_rounded,
                        size: 60,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Camera",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}

//Method for the imgfromgallery
Future<void> _imgFromGallery() async {
  final PickedFile = await picker.pickImage(source: ImageSource.gallery);
  if (PickedFile != null) {
    // _cropImage(File(PickedFile.path));
  }
}

//Method for the _imgFromCamera;
Future<void> _imgFromCamera() async {
  final PickedFile = await picker.pickImage(source: ImageSource.camera);
  if (PickedFile != null) {
    // _cropImage(File(PickedFile.path));
  }
}

//imageCropper
// Future<void> _cropImage(File imgFile) async {
//   final CroppedFile = await ImageCropper().cropImage(
//       sourcePath: imgFile.path,
//       aspectRatioPresets: Platform.isAndroid
//           ? [
//               CropAspectRatioPreset.square,
//               CropAspectRatioPreset.ratio3x2,
//               CropAspectRatioPreset.ratio4x3,
//               CropAspectRatioPreset.ratio16x9,
//               CropAspectRatioPreset.original,
//             ]
//           : [
//               CropAspectRatioPreset.original,
//               CropAspectRatioPreset.square,
//               CropAspectRatioPreset.ratio3x2,
//               CropAspectRatioPreset.ratio4x3,
//               CropAspectRatioPreset.ratio5x3,
//               CropAspectRatioPreset.ratio5x4,
//               CropAspectRatioPreset.ratio7x5,
//               CropAspectRatioPreset.ratio16x9,
//             ],
//       uiSettings: [
//         AndroidUiSettings(
//           toolbarTitle: "Image Cropper",
//           toolbarColor: Colors.blue,
//           toolbarWidgetColor: Colors.white,
//           initAspectRatio: CropAspectRatioPreset.original,
//           lockAspectRatio: false,
//         ),
//         IOSUiSettings(
//           title: "Image Cropper",
//         ),
//       ]);
// }
