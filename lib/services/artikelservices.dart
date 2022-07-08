import 'package:artikel/models/artikelmodels.dart';
import 'package:artikel/models/detailartikelmod.dart';

import 'package:dio/dio.dart';

class artikelservice {
  Future<artikel> tampilkanartikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    return artikel.fromJson(response.data);
  }

  Future<detail_Artikel> tampilkanDetail_artikel({String? id}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$id');
    return detail_Artikel.fromJson(response.data);
    }
  }

