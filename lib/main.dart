import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';
import 'Anime_List.dart';


void main(){
  runApp(MaterialApp(
    home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name;
  double spinSize = 1.0;
  Color spinColor = Colors.black;

  void getData() async{
    http.Response response = await http.get('$kApiPath$name');
    var jsonResponse = jsonDecode(response.body);
    if(response.statusCode==200)
      {
        spinColor = Colors.black;spinSize=1.0;
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return ListAnime(animeData: jsonResponse, searchText:name);
        }));
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/HomePage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: kTextFieldDecoration,
                onChanged: (value){
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),

            FlatButton(
              child: Text(
                "Let's Go",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: (){
                setState(() {
                  spinSize = 40.0;
                  spinColor = Colors.white;
                  getData();
                });
              },
            ),
            SpinKitChasingDots(
              color: spinColor,
              size: spinSize,
            )
          ],
        ),
      ),
    );
  }
}

