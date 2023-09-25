class Weather {
  String? city;
  String? region;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  double? gust;
  String? date;
  int? isDay;
  String? icon;

  String? day_1; 
  double? temp_1;
  String? img_1;
  String? day_2;
  double? temp_2;
  String? img_2;
  String? day_3;
  double? temp_3;
  String? img_3;

  Weather({this.city, this.region, this.temp, this.wind, this.feelsLike, this.gust, this.humidity, this.date, this.isDay, this.icon,
              this.day_1, this.temp_1, this.img_1, this.day_2, this.temp_2, this.img_2, this.day_3, this.temp_3, this.img_3});

  Weather.fromJSON(Map<String, dynamic> json){
    city = json['location']['name'];
    region = json['location']['region'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    feelsLike = json['current']['feelslike_c'];
    gust = json['current']['gust_kph'];
    date = json['location']['localtime'];
    date = date!.substring(11);
    isDay = json['current']['is_day'];
    icon = json['current']['condition']['icon'];

    day_1 = json['forecast']['forecastday'][0]['date'];
    temp_1 = json['forecast']['forecastday'][0]['day']['avgtemp_c'];
    img_1 = json['forecast']['forecastday'][0]['day']['condition']['icon'];
    day_2 = json['forecast']['forecastday'][1]['date'];
    temp_2 = json['forecast']['forecastday'][1]['day']['avgtemp_c']; 
    img_2 = json['forecast']['forecastday'][1]['day']['condition']['icon'];
    day_3 = json['forecast']['forecastday'][2]['date'];
    temp_3 = json['forecast']['forecastday'][2]['day']['avgtemp_c']; 
    img_3 = json['forecast']['forecastday'][2]['day']['condition']['icon'];
  }


}