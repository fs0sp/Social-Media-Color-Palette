import 'package:color_picker/CenteredView.dart';
import 'package:color_picker/Colors.dart';
import 'package:color_picker/widget/ColorPalette.dart';
import 'package:color_picker/widget/Footer.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_widgets/responsive_widgets.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    ResponsiveWidgets.init(
      context,
      height: 1080,
      width: 1920,
      allowFontScaling: true,
    );

    return Scaffold(
      backgroundColor: bg,
      body: CenteredView(
              child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Color Picker", style: TextStyle(fontSize: ScreenUtil().setSp(48, allowFontScalingSelf: true), color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Color Picker is a website to pick the best UI colors for your next project.", style: TextStyle(fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true), color: Colors.white54, fontWeight: FontWeight.w100),),
                SizedBox(height: 20,),
                Text("Social Media UI Colors",style: TextStyle(fontSize: ScreenUtil().setSp(30, allowFontScalingSelf: true), color: Colors.white, fontWeight: FontWeight.normal),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    ColorPalette(colorName: 'Snap Chat', thisColor: snapchat, colorText: 'FFFC00', ),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Product Hunt', thisColor: producthunt, colorText: 'da552f',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Linkedin', thisColor: linkedin, colorText: '0077B5',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Quora', thisColor: quora, colorText: 'b92b27',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Twitter', thisColor: twitter, colorText: '55acee',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Reddit', thisColor: reddit, colorText: 'ff5700',)
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    ColorPalette(colorName: 'Facebook', thisColor: facebook, colorText: '3b5999',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Yahoo', thisColor: yahoo, colorText: '410093',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'YouTube', thisColor: youtube, colorText: 'cd201f',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'WhatsApp', thisColor: whatsapp, colorText: '25D366',),
                    SizedBox(width: 20),
                    ColorPalette(colorName: 'Behance', thisColor: behance, colorText: '131418',),
                    SizedBox(width: 20,),
                    ColorPalette(colorName: 'Medium', thisColor: medium, colorText: '02b875',)
                  ],
                ),
                SizedBox(height: screenHeight * .15,),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}