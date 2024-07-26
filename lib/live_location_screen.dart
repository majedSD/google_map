// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
//
// class LiveLocationScreen extends StatefulWidget {
//   const LiveLocationScreen({super.key});
//
//   @override
//   State<LiveLocationScreen> createState() => _LiveLocationScreenState();
// }
//
// class _LiveLocationScreenState extends State<LiveLocationScreen> {
//   Location location=Location();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Live Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: ()async{
//              final LocationData currentLocation=await location.getLocation();
//              print(currentLocation.latitude);
//              print(currentLocation.longitude);
//              print(currentLocation.altitude);
//             }, child:const Text('Current Location')),
//           ],
//         ),
//       ),
//     );
//   }
// }
