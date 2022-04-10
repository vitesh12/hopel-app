import 'package:flutter/material.dart';
import 'coffee_details_page.dart';

// ignore: must_be_immutable
class HotelCardThree extends StatelessWidget {
  
  List<String> images = [
    "images/hotel5.jpg",
    "images/hotel6.jpg",
    "images/hotel7.jpg",
    "images/hotel9.jpg",
  ];

  // ignore: non_constant_identifier_names
  List<String> hotel_names = [
    "The Leela Palace",
    "Le Royal Meridien",
    "ITC Grand Chola",
    "Taj Club House"
  ];

  List<double> price = [12000, 5250, 10500, 6300];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CoffeeDetailsPage(),
                    settings: RouteSettings(
                      arguments: images[index], 
                    ),
                  )
                );
                },
                
                child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.cyan.shade100,
                        borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 3,
                        width: 200, //200
                        margin: EdgeInsets.all(10),
                        
                      ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
              );
            }),
      ),
    );
  }
}
