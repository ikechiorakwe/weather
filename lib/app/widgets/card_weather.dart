import 'package:flutter/material.dart';

class MyCardDisplay extends StatefulWidget {
  const MyCardDisplay({ Key? key }) : super(key: key);

  @override
  State<MyCardDisplay> createState() => _MyCardDisplayState();
}

class _MyCardDisplayState extends State<MyCardDisplay> {
  @override
  Widget build(BuildContext context) {
  var baseSize = MediaQuery.of(context).size.width * 0.04;
    return  Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: baseSize, horizontal: baseSize),
        child: Column(
          children: [
            Row(
              children:const [
                MyExpanded(
                  "3", 
                  "UV 1", 
                  "assets/images/UV 1.png"
                ),
                MyExpanded(
                  "4 km ", 
                  "Visibility", 
                  "assets/images/VISIBILITY 1.png"
                ),
                MyExpanded(
                  "71", 
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
              children:const [
                MyExpanded(
                  "7", 
                  "Wind", 
                  "assets/images/WIND 1.png"
                ),
                MyExpanded(
                  "412 mph", 
                  "Pressure", 
                  "assets/images/PRESSURE 1.png"
                ),
                MyExpanded(
                  "8 mph", 
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
}


class MyExpanded extends StatelessWidget {
  const MyExpanded(this.firstText, this.secondText, this.imageString,{ Key? key }) : super(key: key);

  final String firstText;
  final String secondText;
  final String imageString;
  @override
  Widget build(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children:  [
          Image.asset(imageString, color: Colors.orange,),
          Text(firstText, style: textTheme.caption,),
          Text(secondText, style: textTheme.caption,)
        ],
      )
    );
  }
}