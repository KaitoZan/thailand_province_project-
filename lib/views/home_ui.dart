// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI>with SingleTickerProviderStateMixin
 {
   Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  late TabController _tabController;
  int _currentTabIndex = 0;

  
  void initState(){
      _tabController = TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 210, 208),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 247, 66, 135),
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0); //exit app
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 214, 214, 214),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[300],
            indicatorColor: Colors.yellow,
            indicatorWeight: 10.0,
            tabAlignment: TabAlignment.start,
            controller:  _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Ivan factory',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Chateraise',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Custard Nakamura',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Three Bears Pastry',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Bake A Wish',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'ORGANIC SUPPLY',
              ),
              Tab(
                icon: Icon(
                  Icons.cake_outlined,
                ),
                text: 'Truly Scrumptious',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 231, 247, 189),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_welcome.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.snpfood.com/image/upload/q_auto/v1/brands/15/inventory/products/16269-vanilla-garden-cake-2-lbs-y8B4IU',
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrP3-Rib6g7ryJRtPvahKZoIXpQNymAiDTmg&usqp=CAU',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://bakingamoment.com/wp-content/uploads/2023/07/IMG_2051-ice-cream-cake.jpg',
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });

                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Ivan factory',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 1;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck02.png',
                  ),
                ),
                title: Text(
                  'Chateraise',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 2;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck03.png',
                  ),
                ),
                title: Text(
                  'Custard Nakamura',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 3;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'Three Bears Pastry',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 4;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck05.png',
                  ),
                ),
                title: Text(
                  'Bake A Wish',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 5;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck06.png',
                  ),
                ),
                title: Text(
                  'ORGANIC SUPPLY',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  _tabController.index = 6;
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck07.png',
                  ),
                ),
                title: Text(
                  'Truly Scrumptious',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text(
                  'ออกจากแอพ',
                  style: GoogleFonts.kanit(
                      color: Color.fromARGB(255, 255, 15, 175)),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller:  _tabController,
          children: [
            showShopWidget('Ivan factory','assets/images/ck01.png','0864949365','https://www.wongnai.com/restaurants/388697kL-ivan-factory',"https://www.google.com/maps/place/13%C2%B050'11.6%22N+100%C2%B034'51.7%22E/@13.836542,100.581016,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.836542!4d100.581016?entry=ttu"),
            showShopWidget('Chateraise','assets/images/ck02.png','020157283','https://www.wongnai.com/photos/be8a1986c3634007910957fd3019b531',"https://www.google.com/maps/place/13%C2%B043'09.0%22N+100%C2%B035'07.0%22E/@13.719161,100.585268,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.719161!4d100.585268?entry=ttu"),
            showShopWidget('Custard Nakamura','assets/images/ck03.png','022599630','https://www.wongnai.com/restaurants/custardnakamura',"https://www.google.com/maps/place/13%C2%B043'56.6%22N+100%C2%B034'06.3%22E/@13.7323939,100.5684247,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.7323939!4d100.5684247?entry=ttu"),
            showShopWidget('Three Bears Pastry','assets/images/ck04.png','0955369465','https://www.wongnai.com/restaurants/202310ek-three-bears-pastry',"https://www.google.com/maps/place/13%C2%B040'34.2%22N+100%C2%B029'44.0%22E/@13.676173,100.495542,17z/data=!3m1!4b1!4m4!3m3!8m2!3d13.676173!4d100.495542?entry=ttu"),
            showShopWidget('Bake A Wish','assets/images/ck05.png','024273120','https://www.wongnai.com/restaurants/bakeawish-ssw',"https://www.google.com/maps/search/?api=1&query=13.676173,100.495542"),
            showShopWidget('ORGANIC SUPPLY','assets/images/ck06.png','0954837589','https://wongnai.com/restaurants/organicsupply',"https://www.google.com/maps/search/?api=1&query=13.799976,100.606831"),
            showShopWidget('Truly Scrumptious','assets/images/ck07.png','020198080','https://www.wongnai.com/restaurants/387135DM-truly-scrumptious-sukhumvit-49-11',"https://www.google.com/maps/search/?api=1&query=13.73691223413287,100.57537797753332"),
          
          ],
        ),
      ),
    );
  }

 Widget showShopWidget(String shopName , String shopImage , String shopPhone , String shopWeb , String shopGPS){
            return Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Text(
                    shopName,
                    style: GoogleFonts.kanit(
                        fontSize: MediaQuery.of(context).size.height * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    shopImage,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        _makePhoneCall(shopPhone);                      },
                      tileColor: Color.fromARGB(255, 243, 239, 27),
                      leading: Icon(
                        Icons.phone,
                      ),
                      title: Text(
                        shopPhone,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        _launchInBrowser(
                             Uri.parse(shopWeb),);
                      },
                      tileColor: Color.fromARGB(255, 243, 239, 27),
                      leading: Icon(
                        Icons.web,
                      ),
                      title: Text(
                        'เว็บไซต์ของร้าน',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.0,
                      right: 50.0,
                    ),
                    child: ListTile(
                      onTap: () {
                        _launchInBrowser(
                             Uri.parse(shopGPS),);
                      },
                      tileColor: Color.fromARGB(255, 243, 239, 27),
                      leading: Icon(
                        Icons.gps_fixed,
                      ),
                      title: Text(
                        'นำทางไปที่ร้าน',
                      ),
                    ),
                  ),
                ],
              ),
            );

 } 
}
