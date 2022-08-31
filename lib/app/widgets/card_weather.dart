import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/model/forecast_view_model.dart';

class MyCardDisplay extends StatefulWidget {
  const MyCardDisplay({ Key? key }) : super(key: key);

  @override
  State<MyCardDisplay> createState() => _MyCardDisplayState();
}

class _MyCardDisplayState extends State<MyCardDisplay> {
  @override
  Widget build(BuildContext context) {
  var baseSize = MediaQuery.of(context).size.width * 0.04;
    return  Consumer<ForecastViewModel>(
      builder: (context, model, child) {
        print("get model: ${model.visibility}");
        return Card(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: baseSize, horizontal: baseSize),
            child: Column(
              children: [
                Row(
                  children:[
                    MyExpanded(
                      model.visibility ?? 9, 
                      "UV", 
                      "assets/images/UV 1.png"
                    ),
                     MyExpanded(
                      model.visibility ?? 9, 
                      "Visibility", 
                      "assets/images/VISIBILITY 1.png"
                    ),
                    MyExpanded(
                      model.main?.humidity ?? 9, 
                      "Humidity", 
                      "assets/images/HUMIDITY 1.png"
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: baseSize/2),
                  child:  Divider(thickness: 1.0, color: Theme.of(context).backgroundColor),
                ),
                Row(
                  children: [
                    MyExpanded(
                      model.wind?.speed?.toInt() ?? 9, 
                      "Wind", 
                      "assets/images/WIND 1.png"
                    ),
                    MyExpanded(
                      model.main?.pressure ?? 9, 
                      "Pressure", 
                      "assets/images/PRESSURE 1.png"
                    ),
                    MyExpanded(
                      model.wind?.degree ?? 9, 
                      "Air Quality", 
                      "assets/images/AIR PRESSURE 1.png"
                    )
                  ],
                ),
              ],
            ),
          ),
          
        );
      }
    );
  }
}


class MyExpanded extends StatelessWidget {
  const MyExpanded(this.firstText, this.secondText, this.imageString,{ Key? key }) : super(key: key);

  final int firstText;
  final String secondText;
  final String imageString;
  @override
  Widget build(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children:  [
          Image.asset(imageString, color: Colors.orange,),
          Text(firstText.toString() , style: textTheme.caption,),
          Text(secondText, style: textTheme.caption,)
        ],
      )
    );
  }
}