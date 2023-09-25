import 'package:flutter/material.dart';
import 'package:weather_forecast_app/current_weather.dart';
import 'package:weather_forecast_app/weather_api.dart';
import 'package:weather_forecast_app/weather_model.dart';
import 'package:weather_forecast_app/forecast_weather.dart';

import 'additional_weather.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {return _HomePageState();}
}


/*
class _HomePageState extends State<HomePage> {

  WeatherAPI client = WeatherAPI();
  Weather? data = Weather();
  String city = "Paris";

  Future<void> getData() async {
    final response = await client.getCurrentWeather(city);
    //print(data!.country);
    //setState(() {
      //data = response;
    //});
    print(data!.city);
  }


  Icon searchIcon = Icon(Icons.search, color: Colors.white);
  Widget title = Text("Weather Forecast");
  TextEditingController searchValue = TextEditingController();

  /*
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchValue.dispose();
    super.dispose();
  }
  */


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container (
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, 
          colors: [Color.fromRGBO(0, 5, 21, 1.0), Color.fromRGBO(8, 19, 55, 1.0)])
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: title,
            //elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(onPressed: (){
                setState(() {
                  if(this.searchIcon.icon == Icons.search){
                    this.searchIcon = Icon(Icons.cancel);
                    this.title = TextField(
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      decoration: InputDecoration(border: InputBorder.none, hintText: "Search location",hintStyle: TextStyle(color: Colors.white30)),
                      textInputAction: TextInputAction.go,
                      controller: searchValue,
                      onSubmitted: (value) {
                        //getData(searchValue.text);
                        city = value;
                        //print("enterrr");
                        //getData(value);
                      },
                    );
                  } else {
                    this.searchIcon = Icon(Icons.search);
                    this.title = Text("Weather Forecast");
                  }
                });
              }, icon: searchIcon,
          )],
          ),
          body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                //kada nam stignu podaci
                return Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ 
                    Container(  //padding
                      height: 40,
                    ),
                    currentWeather("${data!.city}", "${data!.temp}", "${data!.region}", "${data!.date}", "${data!.imgUrl}"),
                    Container(
                      height: 80,
                      child: Divider(color: Color.fromARGB(94, 242, 234, 234), indent: 40, endIndent: 40,)
                    ),
                    additionalWeather("${data!.feelsLike}", "${data!.wind}", "${data!.humidity}"),
                ]);
              } else if(snapshot.connectionState == ConnectionState.waiting){
                //dok cekamo podatke
                return Center(child: CircularProgressIndicator(),);
              }
              return Container();
            },
            )
      )));
    
  }
  
}
*/




class _HomePageState extends State<HomePage> {

  WeatherAPI client = WeatherAPI();
  Weather? data = Weather();
  String city = "Banja Luka";

  Color LIGHT_TEXT = Color.fromRGBO(237, 236, 237, 1.0);
  Color LIGHT_TEXT_2 = Color.fromRGBO(182, 159, 173, 1.0);

  Icon searchIcon = Icon(Icons.search, color: Color.fromRGBO(237, 236, 237, 1.0));
  Widget title = Text("Weather Forecast");
  TextEditingController searchValue = TextEditingController();

  

  void getData() async {
    final response = await client.getCurrentWeather(city);
    data = response;

    setState(() {
      data = response;
    });

  }


  @override
  Widget build(BuildContext context) {

    getData();

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: Container (
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, 
          colors: [Color.fromRGBO(61, 43, 65, 1.0), Color.fromRGBO(39, 35, 52, 1.0)])
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: title,
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(onPressed: (){
                setState(() {
                  if(this.searchIcon.icon == Icons.search){
                    this.searchIcon = Icon(Icons.cancel);
                    this.title = TextField(
                      style: TextStyle(color: LIGHT_TEXT, fontSize: 15),
                      decoration: InputDecoration(border: InputBorder.none, hintText: "Search location",hintStyle: TextStyle(color: Colors.white30)),
                      textInputAction: TextInputAction.go,
                      controller: searchValue,
                      onSubmitted: (value) {
                        city = value;
                        this.title = Text("Weather Forecast");
                        this.searchIcon = Icon(Icons.search);
                        this.searchValue.text = "";
                      },
                    );
                  } else {
                    this.searchIcon = Icon(Icons.search);
                    this.title = Text("Weather Forecast");
                  }
                });
              }, icon: searchIcon,
          )],
          ),
          

          body: Column( 
            children: [ 
              if(data != null)
                Container(  
                  height: 40,
                ),
                //currentWeather("${data!.city}", "${data!.temp}", "${data!.region}", "${data!.date}", "${data!.imgUrl}"),
                currentWeather("${data!.city}", "${data!.region}", "${data!.temp}", "${data!.icon}", "${data!.date}"),
                Container(
                  height: 80,
                  child: Divider(color: LIGHT_TEXT_2, indent: 40, endIndent: 40,)
                ),
                //additionalWeather("${data!.feelsLike}", "${data!.wind}", "${data!.humidity}"),
                additionalWeather("${data!.feelsLike}", "${data!.wind}", "${data!.humidity}"),
                Container(
                  height: 80,
                  child: Divider(color: LIGHT_TEXT_2, indent: 40, endIndent: 40,)
                ),
                Container(height: 10,),
                //forecastWeather("${data2.temp_1}", "${data2.temp_2}", "${data2.temp_3}", "${data2.temp_4}", "${data2.temp_5}",
                                  //"${data!.img_1}", "${data!.img_2}", "${data!.img_3}"),
            ])
        
         )   
     )
     );
    
  }

  

  
}

/*
Column( 
            children: [ 
              if(data != null)
                Container(  
                  height: 40,
                ),
                currentWeather("${data!.city}", "${data!.temp}", "${data!.region}", "${data!.date}", "${data!.imgUrl}"),
                Container(
                  height: 80,
                  child: Divider(color: LIGHT_TEXT_2, indent: 40, endIndent: 40,)
                ),
                additionalWeather("${data!.feelsLike}", "${data!.wind}", "${data!.humidity}"),
                  
            ])
*/