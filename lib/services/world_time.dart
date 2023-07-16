import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


class WorldTime {
  late String continent;
  late String country;
  late String time;

  WorldTime({required this.continent, required this.country})
  void getTime() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$continent/$country'));
    Map data = jsonDecode(response.body);

    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print(datetime);
    // print(offset);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}


