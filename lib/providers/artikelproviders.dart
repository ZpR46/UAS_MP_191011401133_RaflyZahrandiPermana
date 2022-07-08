import 'package:artikel/models/artikelmodels.dart';
import 'package:artikel/models/detailartikelmod.dart';
import 'package:artikel/services/artikelservices.dart';
import 'package:flutter/cupertino.dart';

class ArtikelProvider extends ChangeNotifier{
  ArtikelProvider(){
    showListArtikel();
  }

final artikelservice _artikelService = artikelservice();
  artikel Artikel = artikel();
  detail_Artikel Detail_artikel = detail_Artikel();

  showListArtikel() async {
    Artikel = await _artikelService.tampilkanartikel();
    notifyListeners();
  }

  ShowDetailArtikel({String? inputKey}) async {
    Detail_artikel =
        await _artikelService.tampilkanDetail_artikel(id: inputKey);
    notifyListeners();
  }
}