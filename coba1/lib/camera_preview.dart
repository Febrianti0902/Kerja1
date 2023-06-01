// import 'dart:io';
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:virtual_posyandu/src/constants/colors.dart';
// import 'package:virtual_posyandu/src/constants/size.dart';
// import 'package:virtual_posyandu/src/constants/text.dart';
// import 'package:virtual_posyandu/src/features/pages/camera/camera_proses.dart';
// import 'package:virtual_posyandu/src/features/pages/camera/camera_screen.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class PreviewScreen extends StatefulWidget {
//   final XFile imgPath;
//   PreviewScreen({this.imgPath});  

//   @override
//   _PreviewScreenState createState() => _PreviewScreenState();
// }

// class _PreviewScreenState extends State<PreviewScreen> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //leading: const Icon(Icons.menu, color: Colors.black),
//         title: Text("Preview", style: Theme.of(context).textTheme.headline4),
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         actions: [
//           Container(
//             margin: const EdgeInsets.only(right: 20, top: 7),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               // color: tCardBgColor,
//             ),
//             //child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(tUserProfileImage))),
//           )
//         ],
//       ),
//         body: Container(
//           padding: const EdgeInsets.all(tDashboardPadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Expanded(
//                 flex: 3,
//                 child: Image.file(
//                   File(widget.imgPath.path),
//                   height: 300,
//                   width: 300,
//                   //fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(
//                   height: tFormHeight
//               ),
//               SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () async {

//                       String imageUrl='';
//                       if(widget.imgPath.path==null) return;
//                       String uniqueFileName=DateTime.now().millisecondsSinceEpoch.toString();

//                       final storageRef = FirebaseStorage.instance.ref();
//                       final referenceDirImages = storageRef.child('images');
//                       final referenceSubDirImages = referenceDirImages.child("frontBody");
//                       final referenceImageToUpload = referenceSubDirImages.child(uniqueFileName);

//                       try{
//                         await referenceImageToUpload.putFile(File(widget.imgPath.path));                        
//                         imageUrl = await referenceImageToUpload.getDownloadURL();
//                       }catch(error){}                     

//                     },
//                     child: Text(tSubmit.toUpperCase(), style: TextStyle(color: tDarkColor),),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: tPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()
//                       )
//                     ),
//                 ),
//               const SizedBox(
//                   height: tFormHeight
//               ),
//               SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () => Get.to(() => CameraPage()),
//                     child: Text(tBack.toUpperCase(), style: TextStyle(color: tDarkColor),),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: tPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()
//                       )
//                     ),
//               ),
//               const SizedBox(
//                   height: tFormHeight
//               ),             
//             ],
//           ),
//         )
//       );
//   }
// }