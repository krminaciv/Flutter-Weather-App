import 'package:flutter/material.dart';

const Color LIGHT_TEXT = Color.fromRGBO(237, 236, 237, 1.0);
const Color LIGHT_TEXT_2 = Color.fromRGBO(182, 159, 173, 1.0);
//const Color COLOR_PINK = Color.fromRGBO(173,73,117,1.0);


Widget additionalWeather(String feelsLike, String wind, String humidity){
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      
      Column(
        children: [
          Text(
            "$feelsLike°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontWeight: FontWeight.w300,
              fontSize: 23,
            ),
          ),
          Text(
            "Feels like",
            style: TextStyle(
              color: LIGHT_TEXT_2,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),

      Column(
        children: [
          Text(
            "$wind km/h",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontWeight: FontWeight.w300,
              fontSize: 23,
            ),
          ),
          Text(
            "Wind",
            style: TextStyle(
              color: LIGHT_TEXT_2,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),

      Column(
        children: [
          Text(
            "$humidity %",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontWeight: FontWeight.w300,
              fontSize: 23,
            ),
          ),
          Text(
            "Humidity",
            style: TextStyle(
              color: LIGHT_TEXT_2,
              fontWeight: FontWeight.w300
            ),
          )
        ],
      ),

    ],);
}