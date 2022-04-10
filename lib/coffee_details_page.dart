// ignore_for_file: non_constant_identifier_names

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailsPage extends StatelessWidget {
  const CoffeeDetailsPage({Key key, String name, String hotelname, hotelimage, double hotelprise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String todo=ModalRoute.of(context).settings.arguments;
    String Hotel_name=" ",Hotel_prise=" ",Hotel_description=" ";
    if(todo == "images/hotel1.jpg"){
      Hotel_name="Novotel Chennai";
      Hotel_prise="4949";
      Hotel_description="Novotel Chennai Chamiers Road - An Accor Brand is located in the city center near Anna Salai. The hotel is 10-min drive from T Nagar, Marina Beach, business districts of Nungambakkam, Egmore, Adyar, Mylapore and Alwarpet. US Consulate, Apollo Hospital and Shankara Eye Hospital are within a 15 minutes' drive. This pet friendly hotel also features a rooftop swimming pool over looking city skylines and a modern fitness center. The hotel also has state of the art banqueting and co-working options.";
    }
    if(todo == "images/hotel2.jpg"){
      Hotel_name="Holiday Inn";
      Hotel_prise="3890";
      Hotel_description="Conveniently located in the heart of Old Mahabalipuram Road, Holiday Inn Express Chennai OMR Thoraipakkam, is the smart choice for smart travelers looking for a comfortable and hassle-free stay. The hotel is strategically located near the IT Tech parks like Ascendas Tech Park 4.5 mi, Tidel Park 4.3 mi ,Elcot SEZ 3.1 mi, Futura Tech Park 2.5 mi, Apollo Hospital 4.3 mi and Marina Mall are 4.3 mi,ECR Beach 3.7 mi, ISKON Temple 1.2 mi, Mahabalipuram UNESCO World heritage site is 22 mi away. Gleneagles Global Health City 3.7 mi, Chettinad Hospital 1.9 mi away. The hotel is a 35 minute drive from the Chennai International Airport.";
    }
    if(todo == "images/hotel3.jpg"){
      Hotel_name="The Madras Grand";
      Hotel_prise="2879";
      Hotel_description="Well located in the Egmore-Nungambakam district of Chennai, The Madras Grand is located a 6-minute walk from Government Museum Chennai, one kilometer from Spencer Plaza Mall and 2.6 km from US Embassy. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi throughout the property. Free private parking is available and the hotel also provides car rental for guests who want to explore the surrounding area.";
    }
    if(todo == "images/hotel4.jpg"){
      Hotel_name="Welcomhotel";
      Hotel_prise="5500";
      Hotel_description="Welcomhotel Chennai Erst while My Fortune Chennai is a luxurious hotel located 2.5 mi from T Nagar Shopping District and 2 mi from the Marina Beach. It features 3 dining options, 1 bar, an outdoor pool and free parking on site. Each air-conditioned guest room is fitted with a mini-bar, tea/coffee making facilities and a flat-screen TV with cable channels. The private bathroom includes toiletries and a hairdryer.";
    }
    if(todo == "images/hotel5.jpg"){
      Hotel_name="The Leela Palace";
      Hotel_prise="12000";
      Hotel_description="Spread across 4.8 acres of peaceful land, the luxurious Leela Palace Chennai offers an outdoor pool and a fitness center. Its grand and well-designed rooms enjoy 24-hour room services. Free parking is available. Overlooking the sea, the spacious air-conditioned guestrooms all come with a 40-inch flat-screen TV, Blu-ray player, well-stocked mini-bar and a sofa.";
    }
    if(todo == "images/hotel6.jpg"){
      Hotel_name="Le Royal Meridien";
      Hotel_prise="5250";
      Hotel_description="Set amidst landscaped grounds, the 5-star Le Royal Meridien includes an outdoor swimming pool, a variety of recreational facilities and 6 dining options. It has spacious rooms with a flat-screen TV. Guests can exercise in the well-equipped fitness center, relax in the whirlpool or indulge in a relaxing massage at the spa. Car rental and currency exchange services are available at the tour desk.";
    }
    if(todo == "images/hotel7.jpg"){
      Hotel_name="ITC Grand Chola";
      Hotel_prise="10500";
      Hotel_description="Located along Mount Road in Chennai, ITC Grand Chola is 5 mi from the Chennai International Airport. It features 10 dining options and an outdoor swimming pool and a fitness center. The spa and wellness center, Kayakalp The Royal Spa offers 12 treatment rooms with a wide variety of massages and therapies.";
    }
    if(todo == "images/hotel9.jpg"){
      Hotel_name="Taj Club House";
      Hotel_prise="6300";
      Hotel_description="Offering a fusion of rich South Indian design cues and European elegance, Taj Coromandel features a large landscaped pool, fitness facilities and a business center. Located in Chennai’s city center, air-conditioned rooms offer a flat-screen TV and a spacious marble bathroom.";
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage(todo),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 320,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: 140,
                      bgColor: Color(0xff141921),
                      width: 377,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Hotel_name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Chennai",
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "images/star.svg",
                                    height: 20,
                                    color: Color(0xffd17842),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("2934",
                                    style: TextStyle(color: Color(0xff919296)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "AC",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "NON- AC",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 120,
                      child: SingleChildScrollView(
                      child: Text(Hotel_description,
                        style: TextStyle(color: Color(0xff919296), fontSize: 15),
                      ),
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(
                                    color: Color(0xff919296),
                                    fontSize: 18,
                                    ),
                              )),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffd17842))),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                    color: Color(0xff919296),
                                    fontSize: 18,
                                    ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                                "L",
                                style: TextStyle(
                                    color: Color(0xff919296),
                                    fontSize: 18,
                                    ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Color(0xff919296),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  r'₹',
                                  style: TextStyle(
                                      color: Color(0xffd17842), fontSize: 21),
                                ),
                                Text(Hotel_prise,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                )
                              ],
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            color: Color(0xffd17842),
                            child: Text(
                              "Book Now",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
