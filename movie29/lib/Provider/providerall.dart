import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HttpProvider with ChangeNotifier {
  List<dynamic> _alldata = [];
  List<dynamic> get alldata => _alldata;

  List<dynamic> _alldataUpcoming = [];
  List<dynamic> get alldataUpcoming => _alldataUpcoming;

  List<dynamic> _alldataPopular = [];
  List<dynamic> get alldataPopular => _alldataPopular;

  List<dynamic> _alldataTvOnAir = [];
  List<dynamic> get alldataTVOnAir => _alldataTvOnAir;

  List<dynamic> _alldataPopularTv = [];
  List<dynamic> get alldataPopularTv => _alldataPopularTv;

  int get allgetdataPopulerTvOnAir => _alldataTvOnAir.length;

  int get allgetdataPopularTv => _alldataPopularTv.length;

  int get allgetdataPopuler => _alldataPopular.length;

  int get allgetdataUpcoming => _alldataUpcoming.length;

  int get allgetdata => _alldata.length;

  void getNowPlaying() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/movie/now_playing?api_key=067aa6cabf3888396a2e5c7bcd13a4cc&language=en-US&page=1");
    var hasilresponse = await http.get(url);
    var jsonObject = json.decode(hasilresponse.body);
    _alldata = (jsonObject as Map<String, dynamic>)['results'];
    notifyListeners();
  }

  void getUpcoming() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/movie/upcoming?api_key=067aa6cabf3888396a2e5c7bcd13a4cc&language=en-US&page=1");
    var hasilresponse = await http.get(url);
    var jsonObject = json.decode(hasilresponse.body);
    _alldataUpcoming = (jsonObject as Map<String, dynamic>)['results'];
    notifyListeners();
  }

  void getPopular() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/movie/popular?api_key=067aa6cabf3888396a2e5c7bcd13a4cc&language=en-US&page=1");
    var hasilresponse = await http.get(url);
    var jsonObject = json.decode(hasilresponse.body);
    _alldataPopular = (jsonObject as Map<String, dynamic>)['results'];
    notifyListeners();
  }

  void getTvOnAir() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/tv/on_the_air?api_key=067aa6cabf3888396a2e5c7bcd13a4cc&language=en-US&page=1");
    var hasilresponse = await http.get(url);
    var jsonObject = json.decode(hasilresponse.body);
    _alldataTvOnAir = (jsonObject as Map<String, dynamic>)['results'];
    notifyListeners();
  }

  void getTvPopular() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/tv/popular?api_key=067aa6cabf3888396a2e5c7bcd13a4cc&language=en-US&page=1");
    var hasilresponse = await http.get(url);
    var jsonObject = json.decode(hasilresponse.body);
    _alldataPopularTv = (jsonObject as Map<String, dynamic>)['results'];
    notifyListeners();
  }
}
