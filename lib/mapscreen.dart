// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel/home_screen.dart';

class MapScreen extends StatefulWidget{
    const MapScreen({Key key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();

}

class _MapScreenState extends State<MapScreen>{
  Set<Marker> _marker={};


  void _onMapCreated(GoogleMapController controller){
    final String todo=ModalRoute.of(context).settings.arguments;
    if(todo == "images/hotel1.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(12.905932355188629, 80.22912713785193),
          infoWindow: InfoWindow(
            title: "Novotel Chennai",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel2.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(12.930902148404709, 80.2311393832872),
          infoWindow: InfoWindow(
            title: "Holiday Inn",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel3.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.07554360958942, 80.25604625477139),
          infoWindow: InfoWindow(
            title: "The Madras Grand",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel4.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.045941133109125, 80.25687393943066),
          infoWindow: InfoWindow(
            title: "Welcomhotel",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel5.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.017406493977102, 80.27374405292507),
          infoWindow: InfoWindow(
            title: "The Leela Palace",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel6.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.006892622969055, 80.20549192408987),
          infoWindow: InfoWindow(
            title: "Le Royal Meridien",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel7.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.010771172619338, 80.22052702408986),
          infoWindow: InfoWindow(
            title: "ITC Grand Chola",
            snippet: "my project",
          ),
        ),
      );
    });
    }
    if(todo == "images/hotel9.jpg"){
      setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id-1"),
          position: LatLng(13.06188198208115, 80.26398221059571),
          infoWindow: InfoWindow(
            title: "Taj Club House",
            snippet: "my project",
          ),
        ),
      );
    });
    }
  }
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            "MAPS",
          ),
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition: CameraPosition(
          target: LatLng(13.079797270643192, 80.19670057884525),
          zoom: 11.0),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen(),
                      ),
                      (Route<dynamic> route) => false);
                  //signin();
                },
                child: const Icon(Icons.arrow_back_rounded),
                ),
      );
  }
}
