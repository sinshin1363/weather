import 'package:get/get.dart';
import 'package:weather/pages/weatherpage.dart';

class Routes {
  static List<GetPage> get pages => [
    GetPage(name: '/weatherpage', page: () => const WeatherPage())
     

  ];
}