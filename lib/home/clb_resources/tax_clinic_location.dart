import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../helper/fetch_resources.dart';

class TaxClinicLocation extends StatefulWidget {
  const TaxClinicLocation({Key? key}) : super(key: key);

  @override
  State<TaxClinicLocation> createState() => _TaxClinicLocationState();
}

class _TaxClinicLocationState extends State<TaxClinicLocation> {
  initState() {
    super.initState();
    getCurrentPosition();
  }

  getCurrentPosition() async {
    final hasPermission = await handleLocationPermission(context);
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      print(position);
      setState(() => {long = position.longitude, lat = position.latitude});
    }).catchError((e) {
      debugPrint(e);
    });
  }

  double long = 9.2856616;
  double lat = 4.1538727;
  double _ratingValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                    color: Theme.of(context).unselectedWidgetColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.arrow_back_ios_new)
            ),
          ),
        ),
        centerTitle: true,
        title:  Text("CLB Support",
          style: Theme.of(context).textTheme.headline4,),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0 , top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    // Navigator.pop(context);
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).unselectedWidgetColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Icon(Icons.person)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Tax Clinic Locations",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const Text("Tax clinics near your area",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                      height: 1.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 16)),
              Container(
                alignment: Alignment.center,
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(
                        158, 158, 158, 0.4),
                borderRadius: BorderRadius.circular(30)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(target: LatLng(lat , long), zoom: 14.0, tilt: 0, bearing: 0),
                    markers: {
                      Marker(
                        markerId: const MarkerId("marker1"),
                        position:  LatLng(lat, long),
                        draggable: true,
                        onDragEnd: (value) {
                          // value is the new position
                        },
                        // To do: custom marker icon
                      ),

                    },
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Liberty Tax",
                        style: Theme.of(context).textTheme.headline6,),
                        Row(

                          children: [
                            const Text(
                                "4.8",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Opensans',
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: RatingBar(
                                itemSize: 20,
                                  initialRating: _ratingValue,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(
                                      full: const Icon(
                                        Icons.star, color: Colors.orange, size: 5,
                                      ),
                                      half: const Icon(
                                        Icons.star_half,
                                        color: Colors.orange,
                                        size: 5,
                                      ),
                                      empty: const Icon(
                                        Icons.star_outline,
                                        color: Colors.orange,
                                        size: 2.0,
                                      )),
                                  onRatingUpdate: (value) {
                                    setState(() {
                                      _ratingValue = value;
                                    });
                                  },),
                            ),
                            const Text(
                              "(92)",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Opensans',
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ]

                        ),

                        const Text("Tax preparation  \u2022  43234 Hanstinf st",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Opensans',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),

                        Row(
                          children: const [
                            Text("Closed",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Opensans',
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200),),
                            Text(" \u2022 ",
                              ),
                             Text("Opens 9am \u2022 Thu \u2022 (604)",
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Opensans',
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200),
                            ),

                          ],
                        ),

                        const Text("Onsite services \u2022  Online appointments ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Opensans',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.blue
                            ),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Icon(Icons.public,
                          color: Colors.blue,
                          size: 20,),
                        ),
                        const Text("Website",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14
                        ),)
                      ],

                    ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Colors.blue
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Icon(Icons.directions,
                          color: Colors.blue,
                          size: 20,),
                      ),
                      const Text("Directions",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14
                        ),)
                    ],)
                  ],
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                // indent: 20,
                endIndent: 0,
                color: Colors.grey,
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Broadway Tax Clinic",
                          style: Theme.of(context).textTheme.headline6,),
                        const Text("Tax Consulting  \u2022  546w broadway",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Opensans',
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),


                      ],
                    ),

                    Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.blue
                              ),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Icon(Icons.directions,
                            color: Colors.blue,
                            size: 20,),
                        ),
                        const Text("Directions",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14
                          ),)
                      ],)
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
