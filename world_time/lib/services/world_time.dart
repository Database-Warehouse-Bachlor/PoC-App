import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {

  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;


  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      //make request
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
      //print(data);

      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(0,3);

      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      print(offset);
      isDaytime = now.hour > 5 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      print(offset);
    }
    catch(e) {
      print("caught error: $e");
      time = "could not get time data";
    }
  }
}