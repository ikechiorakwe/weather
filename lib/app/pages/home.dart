import 'package:flutter/material.dart';
import 'package:weather/app/utils/globals.dart';
import 'package:weather/app/widgets/search.dart';
import 'package:weather/themes.dart';

/**This basically the weather page, 
where you search for different places 
and the page rebuilds with weather details for new search */


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
  var baseSize = MediaQuery.of(context).size.width * 0.04;
  var size = MediaQuery.of(context).size;
  TextTheme textTheme = Theme.of(context).textTheme;
    return  SafeArea(
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
                        debugPrint("hellp");
                        currentTheme.toggleTheme();
                      }, 
                      icon: const Icon(Icons.dark_mode_outlined, size: 40.0,)
                    ),
                  ),
                ),
                const MySearchWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: baseSize),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Lagos,',
                            style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold)),
                          
                          TextSpan(
                            text: ' Nigeria',
                            style: textTheme.headline6!.copyWith(fontSize: 16, fontWeight: FontWeight.normal)),
                        ]
                      ),
                    ),
                    // Text("Lagos, Nigeria", style: textTheme.headline5)
                  ),
                ),
                // Image.asset("assets/images/cloudy 2.png", height: size.height * 0.5, width: size.width * 6.0,),
                Image.asset("assets/images/bird.png", height: size.height * 0.2, width: size.width * 3.0,),
                Padding(
                  padding:  EdgeInsets.only(bottom: baseSize * 4),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '24',
                          style: textTheme.headline2),
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
                          text: 'c',
                          style: textTheme.headline3),
                      ]
                    ),
                  ),
                )
              ]
            ),
          ),
        ),
        
      ),
    );
  }
}

