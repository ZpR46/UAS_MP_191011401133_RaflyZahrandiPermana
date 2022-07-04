import 'package:artikel/providers/artikelproviders.dart';
import 'package:artikel/screens/artikelscreens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ArtikelProvider(),
        ),
      ],
      child: const MaterialApp(
        home: ArtikelScreen(),
      ),
    );
  }
}