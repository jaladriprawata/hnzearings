import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:hnzearings/pages/barang.dart';
import 'webview_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String kode = "";
  var getKode;
  Future scanBarcode() async {
    getKode = await BarcodeScanner.scan();
    setState(() {
      kode = "https://www.instagram.com/hnzearings_id/?hl=id";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Website",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: 10,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
          Image.network(
              "https://1.bp.blogspot.com/-rgW6jAphRkY/XwcmmQlwOoI/AAAAAAAACeY/1mIi_FVVIR4tSqS1HS-EhO-yz3JID4umwCLcBGAsYHQ/s320/WhatsApp%2BImage%2B2020-07-09%2Bat%2B21.57.43.jpeg"),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {
              scanBarcode();
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Scan QR Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          FlatButton(
            onPressed: kode == ""
                ? () {}
                : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebScreen(kode),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: kode == ""
                      ? Text(
                    "Open Website",
                    style: TextStyle(
                      color: Colors.black26,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  )
                      : Text(
                    kode,
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}