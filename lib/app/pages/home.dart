import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/app/enums.dart';
import 'package:weather/app/utils/globals.dart';
import 'package:weather/app/widgets/search.dart';
import 'package:weather/data/model/city_entry.dart';
import 'package:weather/data/model/forecast_view_model.dart';
import 'package:weather/themes.dart';

import '../widgets/card_weather.dart';

/**This basically the weather page, 
where you search for different places 
and the page rebuilds with weather details for new search */


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cityController = TextEditingController();

  @override

  void initState() {
    // cityController = TextEditingController();
    cityController.addListener(() {
      Provider.of<CityEntryViewModel>(context, listen: false)
          .updateCity(cityController.text);
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
  var baseSize = MediaQuery.of(context).size.width * 0.04;
  var size = MediaQuery.of(context).size;
  TextTheme textTheme = Theme.of(context).textTheme;
  
    
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: baseSize , vertical: baseSize),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: baseSize),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          onPressed: () {
                            debugPrint("hell0");
                            currentTheme.toggleTheme();
                            
                          }, 
                          icon: const Icon( Icons.dark_mode_outlined, size: 40.0,)
                        ),
                      ),
                    ),
                    Consumer<CityEntryViewModel>(
                      builder: (context, model, child) {
                        return MySearchWidget(
                          controller: cityController,
                          onChanged: (String city) {
                            model.refreshWeather(city, context);
                          },
                        );
                      }
                    ),
                    Consumer<ForecastViewModel>(
                      builder: (context, model, child) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: baseSize),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: model.name ?? 'Lagos',
                                    style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold)),
                                  
                                  // TextSpan(
                                  //   text: ' Nigeria',
                                  //   style: textTheme.headline6!.copyWith(fontSize: 16, fontWeight: FontWeight.normal)),
                                ]
                              ),
                            ),
                            // Text("Lagos, Nigeria", style: textTheme.headline5)
                          ),
                        );
                      }
                    ),                
                    Padding(
                      padding: EdgeInsets.only(top: baseSize/2),
                      child: Image.asset("assets/images/5-1.png", height: size.height * 0.3, width: size.width * 8.0,),
                    ),
                    Consumer<ForecastViewModel>(
                      builder: (context, model, child) {
                        return RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: model.main?.temp?.floor().toString() ?? '24',
                                style: textTheme.headline3),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(-2, -12),
                                  child: Text(
                                    'o',
                                    //superscript is usually smaller in size
                                    textScaleFactor: 3.0,
                                    style: textTheme.caption,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'k',
                                style: textTheme.headline3),
                            ]
                          ),
                        );
                      }
                    ),
                    Consumer<ForecastViewModel>(
                      builder: (context, model, child) {
                        return Text( model.weather?.first.description ?? "Thunderstorm", style: textTheme.caption!.copyWith(fontSize: 15.0));
                      }
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: baseSize, horizontal: baseSize),
                      child: const MyCardDisplay(),
                    ),
                  ]
                ),
              ),
            ),
            
          ),
        );
  }
}

// Widget _mapWeatherConditionToImage(
//       WeatherCondition condition) {
//     Image image;
//     switch (condition) {
//       case WeatherCondition.thunderstorm:
//         image = Image.asset('assets/images/thunder_storm.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.heavyCloud:
//         image = Image.asset('assets/images/cloudy.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.lightCloud:        
//           image = Image.asset('assets/images/light_cloud-night.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.drizzle:
//       case WeatherCondition.mist:
//         image = Image.asset('assets/images/drizzle.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.clear:      
//         image = Image.asset('assets/images/clear-night.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.fog:
//         image = Image.asset('assets/images/fog.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.snow:
//         image = Image.asset('assets/images/snow.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.rain:
//         image = Image.asset('assets/images/rain.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;
//       case WeatherCondition.atmosphere:
//         image = Image.asset('assets/images/fog.png', height: size.height * 0.3, width: size.width * 8.0,);
//         break;

//       default:
//         image = Image.asset('assets/images/unknown.png', height: size.height * 0.3, width: size.width * 8.0,);
//     }

//     // return Padding(padding: const EdgeInsets.only(top: 5), child: image);
//     return Padding(
//       padding: EdgeInsets.only(top: baseSize/2),
//       child: Image.asset("assets/images/5-1.png", height: size.height * 0.3, width: size.width * 8.0,),
//     ),
//   }



//  String kelvinToCelcius (double? kelvin) {
//   var answer = kelvin?? - 273.15 ;
//   return answer.floor().toString();
// }


