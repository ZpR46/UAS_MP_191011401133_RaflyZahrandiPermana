import 'package:flutter/material.dart';

class DetailArtikelScreen extends StatefulWidget{
  final String? title;
  const DetailArtikelScreen({this.title,Key? key});

  @override
  State<DetailArtikelScreen>createState()=>_DetailArtikelScreenState();

}

class _DetailArtikelScreenState extends State<DetailArtikelScreen>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : Text("${widget.title}"),

      ),
      
    );
  }
}