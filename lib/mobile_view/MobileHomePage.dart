import 'package:color_picker/CenteredView.dart';
import 'package:color_picker/Colors.dart';
import 'package:color_picker/widget/ColorPalette.dart';
import 'package:color_picker/widget/ColorPaletteMobile.dart';
import 'package:color_picker/widget/Footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';


class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
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

    return Scaffold(
      backgroundColor: bg,
      body: CenteredView(
              child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Color Picker", style: TextStyle(fontSize: ScreenUtil().setSp(40, allowFontScalingSelf: true), color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Color Picker is a website to pick the best UI colors for your next project.", style: TextStyle(fontSize: ScreenUtil().setSp(10, allowFontScalingSelf: true), color: Colors.white54, fontWeight: FontWeight.w100),),
                SizedBox(height: 20,),
                Text("Social Media UI Colors",style: TextStyle(fontSize: ScreenUtil().setSp(14, allowFontScalingSelf: true), color: Colors.white, fontWeight: FontWeight.normal),),
                SizedBox(height: 20,),
                Column(
                  children: [
                    ColorPaletteMobile(colorName: 'Snap Chat', thisColor: snapchat, colorText: 'FFFC00', ),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Product Hunt', thisColor: producthunt, colorText: 'da552f',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Linkedin', thisColor: linkedin, colorText: '0077B5',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Quora', thisColor: quora, colorText: 'b92b27',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Twitter', thisColor: twitter, colorText: '55acee',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Reddit', thisColor: reddit, colorText: 'ff5700',)
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    ColorPaletteMobile(colorName: 'Facebook', thisColor: facebook, colorText: '3b5999',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Yahoo', thisColor: yahoo, colorText: '410093',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'YouTube', thisColor: youtube, colorText: 'cd201f',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'WhatsApp', thisColor: whatsapp, colorText: '25D366',),
                    SizedBox(height: 20),
                    ColorPaletteMobile(colorName: 'Behance', thisColor: behance, colorText: '131418',),
                    SizedBox(height: 20,),
                    ColorPaletteMobile(colorName: 'Medium', thisColor: medium, colorText: '02b875',)
                  ],
                ),
                SizedBox(height: screenHeight * .05,),
                Footer(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}