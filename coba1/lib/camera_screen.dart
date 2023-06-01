// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:virtual_posyandu/src/constants/colors.dart';
// import 'package:virtual_posyandu/src/constants/images.dart';
// import 'package:virtual_posyandu/src/constants/size.dart';
// import 'package:virtual_posyandu/src/constants/text.dart';
// import 'package:virtual_posyandu/src/features/pages/camera/camera_proses.dart';
// import 'package:virtual_posyandu/src/features/pages/camera_frontbody/proses_front.dart';

// class CameraPage extends StatelessWidget {
//   const CameraPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(LineAwesomeIcons.angle_left),
//             color: isDark ? putihColor : tDarkColor),
//         title: Text("Camera", style: Theme.of(context).textTheme.headline4),
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
//       body: SingleChildScrollView(
//         child: Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.all(tDashboardPadding),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     onPressed: () => Get.to(() => CameraScreenFront()),
//                     child: Text(
//                       "Front Body".toUpperCase(),
//                       style: TextStyle(color: tDarkColor),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: tPrimaryColor,
//                         side: BorderSide.none,
//                         shape: const StadiumBorder())),
//               ),
//               const SizedBox(height: tDashboardPadding),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     onPressed: () => Get.to(() => CameraScreenFront()),
//                     child: Text(
//                       "Beside Body".toUpperCase(),
//                       style: TextStyle(color: tDarkColor),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: tPrimaryColor,
//                         side: BorderSide.none,
//                         shape: const StadiumBorder())),
//               ),
//               const SizedBox(height: tDashboardPadding),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     onPressed: () => Get.to(() => CameraScreen()),
//                     child: Text(
//                       "Circular Head".toUpperCase(),
//                       style: TextStyle(color: tDarkColor),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: tPrimaryColor,
//                         side: BorderSide.none,
//                         shape: const StadiumBorder())),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
