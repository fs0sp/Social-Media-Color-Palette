import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class ColorPaletteMobile extends StatefulWidget {

  final String colorName;
  final Color thisColor;
  final String colorText;

  const ColorPaletteMobile({Key key, this.colorText, this.colorName, this.thisColor}) : super(key: key);

  @override
  _ColorPaletteMobileState createState() => _ColorPaletteMobileState();
}

class _ColorPaletteMobileState extends State<ColorPaletteMobile> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    ResponsiveWidgets.init(
      context,
      height: 800,
      width: 400,
      allowFontScaling: true,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      // height: 200,
      // width: 200,
      height: ScreenUtil().setHeight(200),
      width: ScreenUtil().setWidth(200),
      child: Column(
        children: [
          Text(widget.colorName, style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(16, allowFontScalingSelf: true), fontWeight: FontWeight.w100),),
          Container(
            // height: 100,
            // width: 100,
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(100),
            color: widget.thisColor,
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.white30.withOpacity(0),
            child: RaisedButton(
              // color: Colors.transparent,
              color: Colors.white.withOpacity(.2),
              onPressed: () async{
                await FlutterClipboard.copy(widget.colorText);
              },
              child: Text("copy", style: TextStyle(fontSize: ScreenUtil().setSp(12, allowFontScalingSelf: true),color: Colors.cyan),
            ),
          ),
          ),
        ],
      ),
    );
  }
}