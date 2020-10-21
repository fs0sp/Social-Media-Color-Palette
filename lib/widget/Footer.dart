import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ResponsiveWidgets.init(
      context,
      height: 1080,
      width: 1920,
      allowFontScaling: true,
    );

    return Container(
      height: ScreenUtil().setHeight(100),
      width: ScreenUtil().setWidth(600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Made with ❤️️ by Shivam Pokhriyal", style: TextStyle(color: Colors.cyan),),
          Text("Star on Github ⭐️", style: TextStyle(color: Colors.cyan),),
        ],
      ),
    );
  }
}