import 'package:flutter/material.dart';
import 'package:provider_example/pages/firstpage.dart';
import 'package:provider/provider.dart';
import 'providers/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider (
      builder: (context)=>MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstPage(),
      ),
    );
  }
}

