import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                  top: 320,
                  child: Container(
                    child: Container(

                      padding: EdgeInsets.only(left: 20,right: 20,top: 30),

                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              AppLargeText(text: "Yosemite", color : Colors.grey),
                              AppLargeText(text: "\$ 250",color: AppColors.textColor1,),

                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              AppLargeText(text: "People",color: Colors.black38,)
                            ],
                          ),
                          Row(
                            children: [
                              AppText(text: "Number of people in your group",color: Colors.black38,),

                            ],
                          ),


                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
