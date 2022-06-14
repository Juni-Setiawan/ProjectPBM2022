import 'dart:async';

import 'package:CasperCar/home.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {
  Completer<GoogleMapController> _controller = Completer();

  Future<Position> getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  "Rental Mobil Terdekat",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              backgroundColor: Color.fromARGB(255, 97, 203, 115),
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            body: FutureBuilder<Position>(
                future: getGeoLocationPosition(),
                builder: (context, snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    return GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(snapshot.data!.latitude, snapshot.data!.longitude),
                        zoom: 14.4746,
                      ),
                      myLocationButtonEnabled: true,
                      myLocationEnabled: true,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                      markers: {
                        Marker(
                            markerId: MarkerId("Rental"),
                            position: LatLng(snapshot.data!.latitude - 0.005, snapshot.data!.longitude - 0.005),
                            icon: BitmapDescriptor.defaultMarker,
                            onTap: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                    ),
                                  ),
                                  context: context,
                                  backgroundColor: Colors.white,
                                  builder: (context) {
                                    return _TrashMapDetail();
                                  });
                            }
                        )
                      },
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            ),
      )
    );
  }
}

class _TrashMapDetail extends StatelessWidget {
  const _TrashMapDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Color(0xFF5CD870),
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "Rental Berkah Lumajang",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              child: Center(
                                child: Text(
                                  "Buka setiap hari pukul 07.00 - 21.00",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Color(0xFFC4C4C4),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Alamat : Jl. Semeru no. 10",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2.1 KM",
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: (){},
                        child: const Text('Hubungi Rental'),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(Color(0xFF5CD870)),
                            foregroundColor: MaterialStateProperty.all(Colors.black)
                        )
                    )
                  ],
                )
              ],
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
