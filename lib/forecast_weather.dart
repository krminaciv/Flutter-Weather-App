import 'package:flutter/material.dart';

Color LIGHT_TEXT = Color.fromRGBO(237, 236, 237, 1.0);
Color LIGHT_TEXT_2 = Color.fromRGBO(182, 159, 173, 1.0);
double temp_font_size = 18;

Widget forecastWeather(String temp_1, String temp_2, String temp_3, String temp_4, String temp_5, String img_1,
                          String img_2, String img_3){

  /*
  return Column(

    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Mon",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
            ),
          ),
          Image.network("https:$img_1", 
            //height: 50, 
            //width: 50, 
            fit: BoxFit.fill,
          ),
          Text("23",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 19
            ),
          ),
        ],
      ),
      

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Tue",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
            ),
          ),
          Image.network("https:$img_1", 
            //height: 50, 
            //width: 50, 
            fit: BoxFit.fill,
          ),
          Text("25",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 19
            ),
          ),
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Wed",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
            ),
          ),
          Image.network("https:$img_1", 
            //height: 50, 
            //width: 50, 
            fit: BoxFit.fill,
          ),
          Text("26",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 19
            ),
          ),
        ],
      ),
      

    ],
  );
*/


  return Row(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    
      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Mon",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 20,),
          Image.network("https:$img_1", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 20,),
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
          Text("Tue",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 20,),
          Image.network("https:$img_2", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 20,),
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
          Text("Wed",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 20,),
          Image.network("https:$img_3", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 20,),
          Text("$temp_3°",
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
          Text("Thu",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 20,),
          Image.network("https:$img_3", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 20,),
          Text("$temp_3°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: temp_font_size
          ),),
      ],),
      ),

      //
      Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Fri",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: 17
          ),), 
          SizedBox(height: 20,),
          Image.network("https:$img_3", 
            height: 50, 
            width: 50, 
            fit: BoxFit.fill,
          ), 
          SizedBox(height: 20,),
          Text("$temp_3°",
            style: TextStyle(
              color: LIGHT_TEXT,
              fontSize: temp_font_size,
          ),),
      ],),
      ),
      

    ],
  );
  

}