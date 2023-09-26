import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color LIGHT_TEXT = Color.fromRGBO(237, 236, 237, 1.0);
Color LIGHT_TEXT_2 = Color.fromRGBO(182, 159, 173, 1.0);
double temp_font_size = 20;

Widget forecastWeather(String day_1, String temp_1, String icon_1, String day_2, String temp_2, String icon_2,
                          String day_3, String temp_3, String icon_3){


  return Row(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    
      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weekdayName(day_1),
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 10,),
          Image.network("https:$icon_1", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 10,),
          Text("$temp_1°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: temp_font_size
          ),),
      ],),
      ),

      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weekdayName(day_2),
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 10,),
          Image.network("https:$icon_2", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 10,),
          Text("$temp_2°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: temp_font_size
          ),),
      ],),
      ),
      
      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weekdayName(day_3),
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 10,),
          Image.network("https:$icon_3", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 10,),
          Text("$temp_3°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: temp_font_size
          ),),
      ],),
      ),
      
      

    ],
  );
  

}


String weekdayName(String day){
    DateTime date = DateTime.parse(day);
    String name = DateFormat('EEEE').format(date);
    return name.substring(0,3);
}