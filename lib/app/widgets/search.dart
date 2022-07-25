import 'package:flutter/material.dart';

// class MySearchWidget extends StatelessWidget {
//   const MySearchWidget({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   var size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height * 0.1,
//       width: size.width,
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle
//       ),
//       child: const TextField(
//         decoration: InputDecoration(
//          prefix: Icon(Icons.search), 
//         ),
//       ),
//     );
//   }
// }

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return  TextField(  
      style: textTheme.headline6,    
      decoration: const InputDecoration(
       prefixIcon: Icon(Icons.search),
       hintText: "Search City",        
      ),
    );
  }
}