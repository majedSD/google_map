import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Google Map Screen"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition:const CameraPosition(
            target:LatLng(24.91240514604402, 91.90479593372717),
            zoom:13,
            bearing:0,
          tilt: 50
        ),
        onTap:(LatLng positon){
          print(positon);
        },
        onLongPress:(LatLng positon){
          print(positon);
        },
        onCameraMove:(positon){
          print(positon);
        },
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: {
          Marker(
            markerId: const MarkerId('Marker 1'),
            position: const LatLng(24.91240514604402, 91.90479593372717),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: const InfoWindow(
              title: 'This is a marker',
              snippet: 'The Google marker is very useful',
            ),
            draggable: true,
            onDragStart: (LatLng startPosition) {
              print('Drag start: $startPosition');
            },
            onDragEnd: (LatLng endPosition) {
              print('Drag end: $endPosition');
            },
            onDrag: (LatLng dragPosition) {
              print('Dragging: $dragPosition');
            },
          ),
          Marker(
            markerId: const MarkerId('Marker 2'),
            position: const LatLng(24.884514288197785, 91.89562607556581),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            infoWindow: const InfoWindow(
                title: 'This is a marker',
                snippet: 'The google marker is very useful'
            ),
            draggable: true,
            onDragStart: (LatLng startPosition){
              print(startPosition);
            },
            onDragEnd: (LatLng endPosition){
              print(endPosition);
            },
            onDrag: (LatLng dragPosition){
              print(dragPosition);
            },
          ),
          Marker(
            markerId: const MarkerId('Marker 3'),
            position: const  LatLng(24.87464093420451, 91.9344312697649),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
            infoWindow: const InfoWindow(
                title: 'This is a marker',
                snippet: 'The google marker is very useful'
            ),
            draggable: true,
            onDragStart: (LatLng startPosition){
              print(startPosition);
            },
            onDragEnd: (LatLng endPosition){
              print(endPosition);
            },
            onDrag: (LatLng dragPosition){
              print(dragPosition);
            },
          ),
        },
        polylines: {
          const Polyline(
          polylineId: PolylineId('polyline id 1'),
            color: Colors.purple,
            width: 5,
            visible: true,
            endCap: Cap.roundCap,
            jointType: JointType.round,
            patterns:[
              ///Here you can creat the polyline
              ///patterns but not mandatory
              // PatternItem.gap(10),
              // PatternItem.dot,
              // PatternItem.dash(10),
              // PatternItem.dash(10)
            ],
            points: [
              LatLng(24.91240514604402, 91.90479593372717),
              LatLng(24.884514288197785, 91.89562607556581),
              LatLng(24.87464093420451, 91.9344312697649),
              LatLng(24.91240514604402, 91.90479593372717),
            ]
          )
          ///Here you can add multiple polyline same as marker
      },
        polygons: {
           Polygon(
              polygonId:const PolygonId('This is polygon 1'),
              visible: true,
             strokeColor: Colors.purple,
             strokeWidth: 5,
             fillColor:Colors.cyanAccent,
             consumeTapEvents: true,
             onTap: (){
               print('ontapping the polygon');
             },
             points:const [
               LatLng(24.98841320682578, 91.85876850038767),
               LatLng(25.01375609900315, 91.8980598449707),
               LatLng(24.977651311908776, 91.89183812588453),
               LatLng(24.95547419587641, 91.90847586840391),
               LatLng(24.933345073276797, 91.88739236444235),
             ]
          )
        },
        circles:{
          Circle(
            circleId:const CircleId('this is circle 1'),
            center: const LatLng(24.896609371469886, 91.86544753611088),
            radius: 1000,
            fillColor: Colors.purple,
            consumeTapEvents: true,
            strokeColor: Colors.black,
            strokeWidth: 5,
            onTap: (){
              print('this ontap is worked');
            }
          ),
          Circle(
              circleId:const CircleId('this is circle 1'),
              center: const LatLng(24.896609371469886, 91.86544753611088),
              radius: 1000,
              fillColor: Colors.purple,
              consumeTapEvents: true,
              strokeColor: Colors.black,
              strokeWidth: 5,
              onTap: (){
                print('this ontap is worked');
              }
          ),
          ///draw another more and more circle the circle centre latlong is difference
        },
      ),
    );
  }
}
