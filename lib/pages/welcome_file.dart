import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",


  ];
  List texts = [
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web",
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",


  ];
  List titles =[
    "Trips",
    "Discover",
    "Limits",
  ];
  List subtitles =[
    "Mountains",
    "New world",
    "are your limits",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(

          scrollDirection: Axis.vertical,
          itemCount: images.length,

          itemBuilder: (_,index){
            return Container(
              width:  double.maxFinite,// permet d'occupper la totalité de l'écran
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/"+images[index]),
                  fit: BoxFit.cover
                ),

              ),
              child: Container(
                margin: const EdgeInsets.only(top:150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text:titles[index]),
                        AppText(text: subtitles[index],size: 30,color: Colors.black38),
                        SizedBox(height: 20,),
                        Container(
                          width: 300,
                          child: AppText(
                            text: texts[index],
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(widths: 140,)


                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),// to show image


            );


      }),




    );
  }
}
