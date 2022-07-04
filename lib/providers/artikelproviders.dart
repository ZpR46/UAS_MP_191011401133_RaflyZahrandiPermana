import 'package:artikel/models/artikelmodels.dart';
import 'package:artikel/services/artikelservices.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier{
  ArtikelProvider(){
    showListArtikel();
  }

  final ArtikelService _artikelService =ArtikelService();
  artikel Artikel =artikel();


  showListArtikel() async {
    Artikel = await _artikelService .tampilkanartikel();


  }
ShowDetailArtikel({String? inputKey})async{
  Artikel =await _artikelService.tampilkanartikel();
    notifyListeners();
}

}