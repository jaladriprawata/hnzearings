import 'package:flutter/material.dart';
import 'package:hnzearings/pages/barang.dart';
import 'package:hnzearings/pages/home_screen.dart';
import 'package:hnzearings/main.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {


  


  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            //backgroundColor: Colors.blue[100],
            
            appBar: AppBar(
              //backgroundColor: Colors.blue[100],
              centerTitle: true,
              leading: Icon(
                Icons.apps,
                color: Colors.white,
              ),
              title: Text('HNZ EARINGS',style: TextStyle(color: Colors.white, fontSize: 18),),
             
              backgroundColor: Colors.pinkAccent,
                
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                        ),
                      ),
                      Image.network(
                          "https://1.bp.blogspot.com/-rgW6jAphRkY/XwcmmQlwOoI/AAAAAAAACeY/1mIi_FVVIR4tSqS1HS-EhO-yz3JID4umwCLcBGAsYHQ/s320/WhatsApp%2BImage%2B2020-07-09%2Bat%2B21.57.43.jpeg"),
                      SizedBox(
                        height: 5.0,
                      ),

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => Employee()),
                         );
                       },
                       
                       color: Colors.pinkAccent,
                        textColor: Colors.white,
                       child: Text(
                         'Data Barang',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),


                   Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => HomeScreen()),
                         );
                       },
                       
                       color: Colors.pinkAccent,
                        textColor: Colors.white,
                       child: Text(
                         'Halaman Website',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),
               
                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparen,
            child: Container(
              height: 30,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(
                'Developed by I Gede Putu Jaladri Prawata',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}