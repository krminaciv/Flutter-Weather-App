import 'dart:convert';

import 'package:http/http.dart' as http;
import 'weather_model.dart';

class WeatherAPI {

  Future<Weather> getCurrentWeather(String? city) async {
    var url = Uri.parse("http://api.weatherapi.com/v1/forecast.json?key=29099c280da646579f1115002230103&q=$city&days=7&aqi=no&alerts=no");
    
    var response = await http.get(url);
    //print(response.statusCode);
    var body = jsonDecode(response.body);
    return Weather.fromJSON(body);
  }

}

