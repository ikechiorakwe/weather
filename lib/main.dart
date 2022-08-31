import 'package:flutter/material.dart';
import 'package:weather/app/pages/home.dart';
import 'package:weather/data/model/city_entry.dart';
import 'package:weather/data/model/forecast_view_model.dart';
import 'package:weather/themes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CityEntryViewModel>(
            create: (_) => CityEntryViewModel()),
        ChangeNotifierProvider<ForecastViewModel>(
            create: (_) => ForecastViewModel()),
      ], 
      child: const MyApp()
    ));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() { 
    currentTheme.addListener(() {
      setState(() {});
    });   
    super.initState();    
  }

  @override
  void dispose() {
    currentTheme.removeListener(() {
      setState(() {});
    });    
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
    );
  }
}


