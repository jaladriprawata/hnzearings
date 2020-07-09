import 'package:flutter/material.dart';
import 'package:hnzearings/pages/home.dart';
import 'package:hnzearings/pages/home_screen.dart';
import 'pages/barang.dart';
import 'package:provider/provider.dart';
import 'package:hnzearings/providers/employee_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EmployeeProvider(),
        )
      ],
      child: MaterialApp(
        
        home: home(),
      ),
    );
  }
}