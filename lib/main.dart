//nama : Rapi Maulana
//NPM  : 20552011179

import 'dart:async';
import 'dart:ui';

import 'package:portal_berita/data.dart';
import 'package:portal_berita/header_draw.dart';
import 'package:portal_berita/item_widget.dart';
import 'package:portal_berita/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInScreen())));
  }

  _MainPageState newMethod() => _MainPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 138, 210, 228),
                Color.fromARGB(255, 56, 117, 230),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Resource News",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "News Update For You",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product('sport', 'assets/cibay.png',
      ' Cibay sendiri adalah singkatan dari aci ngambay. Sesuai dengan namanya, jajanan khas Sunda satu ini menggunakan tepung aci atau tapioka sebagai bahan utamanya. Dalam bahasa Sunda, ngambay berarti aci basah');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 142, 255),
        title: const Text("Resource News"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [
            MyHeaderDrawer(),
            ListTile(
              title: const Text("beranda"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("pengaturan"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("berlangganan"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("profil"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("logout"),
              onTap: () {},
            ),
          ],
        )),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
