// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';


// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Image Picker',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         primarySwatch: Colors.teal,
// //       ),
// //       home: const ImagePickerPage(),
// //     );
// //   }
// // }

// class ImagePickerPage extends StatefulWidget {
//   const ImagePickerPage({Key? key}) : super(key: key);

//   @override
//   State<ImagePickerPage> createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//   XFile? _image;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           leadingWidth: 35,
//           iconTheme: const IconThemeData(color: Colors.white),
//           title: Container(
//             padding: const EdgeInsets.only(top: 10, bottom: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const <Widget>[
//                 Text(
//                   "Image Picker",
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             GestureDetector(
//                 onTap: () {
//                   showModalBottomSheet(
//                     context: context,
//                     backgroundColor: Colors.transparent,
//                     builder: ((builder) => _ambilGambar()),
//                   );
//                 },
//                 child: Container(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: const Icon(Icons.image_search)))
//           ],
//         ),
//         body: Container(
//           color: const Color(0xFFf2f2f2),
//           child: _image == null
//               ? const Center(
//                   child: Icon(
//                   Icons.image_aspect_ratio,
//                   color: Color(0xFFE0E0E0),
//                   size: 100,
//                 ))
//               : Image(
//                   width: double.infinity,
//                   height: double.infinity,
//                   image: FileImage(File(_image!.path))),
//         ));
//   }

//   Widget _ambilGambar() {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//       ),
//       child: Wrap(
//         children: <Widget>[
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.only(top: 10, bottom: 20),
//             child: const Text(
//               "Ambil Gambar",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                   getImage(ImageSource.camera);
//                 },
//                 child: Column(
//                   children: [
//                     const Icon(
//                       Icons.camera,
//                       size: 40,
//                     ),
//                     Container(
//                         margin: const EdgeInsets.only(top: 5),
//                         child: const Text("Ambil dari Kamera"))
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                   getImage(ImageSource.gallery);
//                 },
//                 child: Column(
//                   children: [
//                     const Icon(
//                       Icons.image,
//                       size: 40,
//                     ),
//                     Container(
//                         margin: const EdgeInsets.only(top: 5),
//                         child: const Text("Ambil dari Galeri"))
//                   ],
//                 ),
//               ),
//             ),
//           ]),
//           Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               margin: const EdgeInsets.only(top: 20),
//               color: Theme.of(context).colorScheme.primary,
//               child: const Text(
//                 'TUTUP',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),
//               ))
//         ],
//       ),
//     );
//   }

//   Future getImage(ImageSource src) async {
//     var image = await _picker.pickImage(source: src);
//     setState(() {
//       _image = image;
//     });
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Capturing Image'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageFile != null)
              Container(
                width: 640,
                height: 480,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: FileImage(imageFile!), fit: BoxFit.cover),
                  border: Border.all(width: 8, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            Container(
              width: 640,
              height: 480,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(width: 8, color: Colors.black12),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Text(
                'Image Should Appear here',
                style: TextStyle(fontSize: 26),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => getImage(source: ImageSource.camera),
                    child: const Text(
                      'Capture Image',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => getImage(source: ImageSource.gallery),
                    child: const Text(
                      'Selected Image',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 640,
      maxHeight: 480,
    );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}