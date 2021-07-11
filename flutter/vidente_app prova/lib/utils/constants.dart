class Constants {
  static const String baseUrl = 'http://dataservice.accuweather.com';
  static const String cityPath = '$baseUrl/locations/v1/cities/search';
  static const String weatherPath = '$baseUrl/forecasts/v1/hourly/12hour/{locationKey}';
}
