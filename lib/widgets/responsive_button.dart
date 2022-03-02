import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? widths;
  const ResponsiveButton({Key? key, this.widths, this.isResponsive= false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      width: widths,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset("img/button-one.png")

        ],
      ),


    );
  }
}
