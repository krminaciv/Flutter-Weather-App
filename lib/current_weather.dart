import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color LIGHT_TEXT = Color.fromRGBO(237, 236, 237, 1.0);  //0xB3FFFFFF
Color LIGHT_TEXT_2 = Color.fromRGBO(182, 159, 173, 1.0);


Widget currentWeather(String city, String region, String temp, String icon, String date) {

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //if(imgUrl != null)
          Container(
            //color: Colors.blue,
            //height: 80,
            child: Image.network("https:$icon", 
                height: 80, 
                width: 80, 
                fit: BoxFit.contain,
            ),           
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                    color: LIGHT_TEXT,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                )
              ),
              //Container(height: 5,),
              Text(
                date, 
                style: TextStyle(
                  color: LIGHT_TEXT_2, 
                  fontSize: 18,
                  fontWeight: FontWeight.w300
                )) //datum
            ],
          )
        ],
      ),
      SizedBox(
        height: 0,
      ),
      Text(
        //temp
        "$temp°",
        style: TextStyle(
            fontSize: 70, 
            fontWeight: FontWeight.w300, 
            color: LIGHT_TEXT),
      ),
      Text(
        //city
        "$city, $region",
        style: TextStyle(
          fontWeight: FontWeight.w300, 
          fontSize: 19,
          color: LIGHT_TEXT_2,
        ),
      ),
    ],
  );
}
