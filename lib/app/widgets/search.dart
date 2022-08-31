import 'package:flutter/material.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({ this.controller, this.onChanged, Key? key }) : super(key: key);
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return  Container(
      height: size.height * 0.08,
      child: TextField( 
        controller: controller, 
        style: textTheme.headline6,    
        decoration: const InputDecoration(
         prefixIcon: Icon(Icons.search),
         hintText: "Search City",        
        ),
        onChanged: onChanged,
      ),
    );
  }
} 