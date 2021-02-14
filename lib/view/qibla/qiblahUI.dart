// import 'dart:async';
// import 'dart:math' show pi;

// import 'package:app/view/qibla/loading_indicator.dart';
// import 'package:app/view/qibla/location_error_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_qiblah/flutter_qiblah.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:geolocator/geolocator.dart';

// class QiblahCompass extends StatefulWidget {
//   @override
//   _QiblahCompassState createState() => _QiblahCompassState();
// }

// class _QiblahCompassState extends State<QiblahCompass> {
//   final _locationStreamController =
//       StreamController<LocationStatus>.broadcast();

//   get stream => _locationStreamController.stream;

//   @override
//   void initState() {
//     _checkLocationStatus();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Qibla'),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         padding: const EdgeInsets.all(8.0),
//         child: StreamBuilder(
//           stream: stream,
//           builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting)
//               return LoadingIndicator();
//             if (snapshot.data.enabled == true) {
//               switch (snapshot.data.status) {
//                 case LocationPermission.always:
//                 case LocationPermission.whileInUse:
//                   return QiblahCompassWidget();

//                 case LocationPermission.denied:
//                   return LocationErrorWidget(
//                     error: "Location service permission denied",
//                     callback: _checkLocationStatus,
//                   );
//                 case LocationPermission.deniedForever:
//                   return LocationErrorWidget(
//                     error: "Location service Denied Forever !",
//                     callback: _checkLocationStatus,
//                   );
//                 // case GeolocationStatus.unknown:
//                 //   return LocationErrorWidget(
//                 //     error: "Unknown Location service error",
//                 //     callback: _checkLocationStatus,
//                 //   );
//                 default:
//                   return Container();
//               }
//             } else {
//               return LocationErrorWidget(
//                 error: "Please enable Location service",
//                 callback: _checkLocationStatus,
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }

//   Future<void> _checkLocationStatus() async {
//     final locationStatus = await FlutterQiblah.checkLocationStatus();
//     if (locationStatus.enabled &&
//         locationStatus.status == LocationPermission.denied) {
//       await FlutterQiblah.requestPermissions();
//       final s = await FlutterQiblah.checkLocationStatus();
//       _locationStreamController.sink.add(s);
//     } else
//       _locationStreamController.sink.add(locationStatus);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _locationStreamController.close();
//     FlutterQiblah().dispose();
//   }
// }

// class QiblahCompassWidget extends StatelessWidget {
//   final _compassSvg = SvgPicture.asset('images/compass.svg');
//   final _needleSvg = SvgPicture.asset(
//     'images/needle.svg',
//     fit: BoxFit.contain,
//     height: 300,
//     alignment: Alignment.center,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FlutterQiblah.qiblahStream,
//       builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting)
//           return LoadingIndicator();

//         final qiblahDirection = snapshot.data;

//         return Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             Transform.rotate(
//               angle: ((qiblahDirection.direction ?? 0) * (pi / 180) * -1),
//               child: _compassSvg,
//             ),
//             Transform.rotate(
//               angle: ((qiblahDirection.qiblah ?? 0) * (pi / 180) * -1),
//               alignment: Alignment.center,
//               child: _needleSvg,
//             ),
//             Positioned(
//               bottom: 8,
//               child: Text("${qiblahDirection.offset.toStringAsFixed(3)}°"),
//             )
//           ],
//         );
//       },
//     );
//   }
// }