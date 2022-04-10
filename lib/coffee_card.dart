import 'package:flutter/material.dart';
import 'coffee_details_page.dart';

// ignore: must_be_immutable
class CoffeeCard extends StatelessWidget {
  
  List<String> images = [
    "images/hotel1.jpg",
    "images/hotel2.jpg",
    "images/hotel3.jpg",
    "images/hotel4.jpg",
  ];

  // ignore: non_constant_identifier_names
  List<String> hotel_names = [
    "Novotel Chennai Chamiers Road",
    "Holiday Inn Chennai OMR IT Expressway",
    "The Madras Grand",
    "Welcomhotel by ITC Hotels"
  ];

  List<double> price = [ 4949, 3890, 2879, 5500];

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
                    height: 270,
                    width: 160,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 135,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hotel_names[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Chennai",
                                style: TextStyle(
                                    color: Color(0xff919293), fontSize: 11),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        r'₹ ',
                                        style: TextStyle(
                                            color: Color(0xffd17842),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "${price[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Color(0xffd17842),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(20)),
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
