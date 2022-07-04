import 'package:artikel/models/artikelmodels.dart';

import 'package:dio/dio.dart';

class ArtikelService{
  Future<artikel>tampilkanartikel()async{
    try {
      var response = await Dio().get(
        'https://api.indosiana.com/api/articles/id_artikel');
        return artikel.fromJson({"data": response.data});
        } on DioError catch (e) {
        print(e);
        return artikel.fromJson({});
    }
  }
}

