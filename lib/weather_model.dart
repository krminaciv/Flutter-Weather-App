class Weather {

  //current weather
  String? city;
  String? region;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  double? gust;
  double? visibility;
  double? uv;
  String? date;
  int? isDay;
  String? icon;

  //forecast
  String? day_1; 
  double? temp_1;
  String? icon_1;
  String? day_2;
  double? temp_2;
  String? icon_2;
  String? day_3;
  double? temp_3;
  String? icon_3;

  Weather({this.city, this.region, this.temp, this.wind, this.feelsLike, this.gust, this.visibility, this.uv, this.humidity, this.date, this.isDay, this.icon,
              this.day_1, this.temp_1, this.icon_1, this.day_2, this.temp_2, this.icon_2, this.day_3, this.temp_3, this.icon_3});

  Weather.fromJSON(Map<String, dynamic> json){
    city = json['location']['name'];
    region = json['location']['region'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    feelsLike = json['current']['feelslike_c'];
    gust = json['current']['gust_kph'];
    visibility = json['current']['vis_km'];
    uv = json['current']['uv'];
    //int uvv = uv!.round();
    date = json['location']['localtime'];
    date = date!.substring(11);
    isDay = json['current']['is_day'];
    icon = json['current']['condition']['icon'];

    day_1 = json['forecast']['forecastday'][0]['date'];
    temp_1 = json['forecast']['forecastday'][0]['day']['avgtemp_c'];
    icon_1 = json['forecast']['forecastday'][0]['day']['condition']['icon'];
    day_2 = json['forecast']['forecastday'][1]['date'];
    temp_2 = json['forecast']['forecastday'][1]['day']['avgtemp_c']; 
    icon_2 = json['forecast']['forecastday'][1]['day']['condition']['icon'];
    day_3 = json['forecast']['forecastday'][2]['date'];
    temp_3 = json['forecast']['forecastday'][2]['day']['avgtemp_c']; 
    icon_3 = json['forecast']['forecastday'][2]['day']['condition']['icon'];
  }


}