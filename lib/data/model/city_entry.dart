import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/model/forecast_view_model.dart';


class CityEntryViewModel with ChangeNotifier {
  String _city = "";

  CityEntryViewModel();

  String get city => _city;

  void refreshWeather(String newCity, BuildContext context) {
    Provider.of<ForecastViewModel>(context, listen: false)
        .getLatestWeather(_city, context);

    notifyListeners();
  }

  void updateCity(String newCity) {
    _city = newCity;
  }
}