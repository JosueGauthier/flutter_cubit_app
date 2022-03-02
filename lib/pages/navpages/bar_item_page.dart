import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top:70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black,),

              ],
            ),
          )
        ],
      ),


    );
  }
}
