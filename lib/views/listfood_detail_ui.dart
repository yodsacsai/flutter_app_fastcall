import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';

class ListfoodDetailUI extends StatefulWidget {

  FoodList? foodListDetail;



   ListfoodDetailUI({ Key? key, required FoodList foodListDetail}) : super(key: key);

  @override
  _ListfoodDetailUIState createState() => _ListfoodDetailUIState();
}

class _ListfoodDetailUIState extends State<ListfoodDetailUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text(
          'Food Detial รายละเอียดร้าน',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/iamges/f1.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}