import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  final String veri;
  const secondPage(this.veri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Değerler"),

      ),
      body: Center(child: Text(veri,style: TextStyle(color: Colors.blueAccent,fontSize: 24,fontWeight: FontWeight.bold),),),
    );
  }
}
