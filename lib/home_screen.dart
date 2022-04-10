import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel/coffee_card.dart';
import 'package:hotel/coffee_card2.dart';
import 'package:hotel/hotel_card3.dart';
import 'package:hotel/mapscreen.dart';
import 'package:hotel/navbar.dart';
import 'package:hotel/offers.dart';
import 'package:hotel/profile.dart';

import 'booking_page.dart';
import 'favorites.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController tabController;
  int _selectedIndex = 0;
  
  List<String> urlImages = [
    "images/slide1.jpg",
    "images/slide2.jpg",
    "images/slide3.jpg",
    "images/slide4.jpg",
    "images/slide5.jpg",
    "images/slide6.jpg",
    "images/slide7.jpg",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex ==1){
        Navigator.push(context,
              MaterialPageRoute(builder: (context) => FavoutitesPage()));
      }
      if(_selectedIndex ==2){
        Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookingPage()));
      }
      if(_selectedIndex ==3){
        Navigator.push(context,
              MaterialPageRoute(builder: (context) => offers()));
      }
      if(_selectedIndex ==4){
        Navigator.push(context,
              MaterialPageRoute(builder: (context) => EditProfileui()));
      }
      
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 10, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => navbar())),
                            color: Colors.black
                            )),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      child: IconButton(
                            icon: Icon(Icons.map_rounded),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapScreen())),
                            color: Colors.black
                            )
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Find the best hotel for",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 6.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Find your hotel...",
                        hintStyle: TextStyle(color: Color(0xff3c4046)),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        )),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                TabBar(
                    isScrollable: true,
                    controller: tabController,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Color(0xff3c4046),
                    indicator: CircleTabIndicator(
                        color: Colors.black,
                        radius: 4),
                    tabs: [
                  Tab(
                    text: "Chennai",
                  ),
                  Tab(
                    text: "Hyderabad",
                  ),
                  Tab(
                    text: "Bengaluru",
                  ),
                  Tab(
                    text: "jaipur",
                  ),
                  Tab(
                    text: "nagpur",
                  ),
                  Tab(
                    text: "kolkata",
                  ),
                  Tab(
                    text: "Ahmedabad",
                  ),
                  Tab(
                    text: "pune",
                  ),
                  Tab(
                    text: "surat",
                  ),
                  Tab(
                    text: "kochi",
                  ),
                ]),
                SizedBox(height: 10),
// slide show
                ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    reverse: false,
                    pageSnapping: false,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: 1,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
                CoffeeCard(),
                Text(
                  "Special for you",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                CoffeeCardSecond(),
                SizedBox(height: 30),
                HotelCardThree(),
               
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue.shade500,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "FAVOURITE"),
          BottomNavigationBarItem(icon: Icon(Icons.luggage_outlined), label: "BOOKINGS"),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined), label: "OFFERS"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "PROFILE"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
    Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.red,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
