import 'package:flutter/material.dart';
import 'package:flutter_foodlist/secondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "YEMEK LİSTEM",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          body: KitapListesi()),
    );
  }
}

class KitapListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String veri="Kuru Fasülye";
    return ListView.builder(


        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => secondPage(veri),
                  ),
                );
              },
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              leading: Image.asset('assets/turuncu.jpg'),
              trailing: Text(
                "GFG",
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
              title: Text("Yemek Numarası:$index"));
        });
  }
}
