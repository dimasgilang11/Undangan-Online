import 'package:flutter/material.dart';
import 'dart:math';



class Beranda extends StatelessWidget {
  final Size screenSize;
  const Beranda({super.key, required this.screenSize});


  Widget flipImage(String namaAsset, double scale) {

    return Transform(
      transform: Matrix4.rotationY(pi),
      alignment: Alignment.center,
      child: Image.asset(
        namaAsset,
        scale: scale,
      ),
    );
  }

  Widget rotateImage(String namaAsset, double scale) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Image.asset(
        namaAsset,
        scale: scale,
      ),
    );
  }

  @override
  Widget build(BuildContext context) { 
    // Size screenSize = MediaQuery.of(context).size;
    if(screenSize.height < 700){
      return berandaWeb(screenSize, context);
    }else{
      return berandaMobile(screenSize, context);
    }
  }

  Container berandaMobile(Size screenSize, BuildContext context) {
    return Container(
    height: screenSize.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      child: Container(
        color: Colors.white.withOpacity(50 / 100),
        child: Stack(
          children: [
            Positioned(
                bottom: -100,
                right: -180,
                child: Image.asset(
                  "assets/leaf.png",
                  scale: 5.0,
                )),
            Positioned(
                bottom: -100,
                left: -180,
                child: flipImage("assets/leaf.png", 5.0)),
            Positioned(
                top: -80,
                left: -100,
                child: rotateImage('assets/leaf2.png', 7.0)),
            Positioned(
                top: -80,
                right: -100,
                child: Transform(
                    transform: Matrix4.rotationY(pi),
                    alignment: Alignment.center,
                    child: rotateImage('assets/leaf2.png', 7.0))),

            //  Buat Gambar Love Disini
            Positioned(
                top: -400,
                right: 0,
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/brush.png",
                  scale: 5.0,
                  color: Colors.white.withOpacity(0.5),
                )),
            Positioned(
                top: -350,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/love.png',
                  scale: 6.0,
                )),
            Positioned(
                top: -450,
                right: -200,
                left: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/flower.png',
                  scale: 30.0,
                )),
            Positioned(
                top: -320,
                left: -150,
                right: 0,
                bottom: 0,
                child: flipImage('assets/flower.png', 30)),
            Positioned(
                top: -400,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: Text(
                    "BR",
                    style: TextStyle(
                        fontFamily: 'GreatVibes',
                        fontSize: 80,
                        fontWeight: FontWeight.w100),
                  ),
                )),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "WE ARE GETTING MARRIED ",//+ "width:"+screenSize.width.toString()+ " height:"+screenSize.height.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'TheSeasons',
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Invite you to witness the begining of our new life",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Glacial',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Budi   &   Ratna",
                    style: TextStyle(
                        fontFamily: 'Themysion',
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.linear_scale,
                            size: 20,
                          ),
                        ),
                        TextSpan(
                            text: '   SAVE THE DATE   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TheSeasons')),
                        WidgetSpan(
                          child: Icon(
                            Icons.linear_scale,
                            size: 20,
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        shape: StadiumBorder(side: BorderSide(width: 2))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, size: 15,),
                        Text("    11 November 2023    ", style: TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),),
                        Icon(Icons.circle, size: 15,)
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Jl. ZA. Pagar Alam, Bandar Lampung",
                  style: TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 18,
                          fontWeight: FontWeight.w500)
                  ),
                  SizedBox(height: 80,)
                ],
              ),
            )
          ],
        ),
      ));
  }

  Container berandaWeb(Size screenSize, BuildContext context) {
    return Container(
    height: screenSize.height+200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      child: Container(
        color: Colors.white.withOpacity(50 / 100),
        child: Stack(
          children: [
            Positioned(
                bottom: -100,
                right: -180,
                child: Image.asset(
                  "assets/leaf.png",
                  scale: 5.0,
                )),
            Positioned(
                bottom: -100,
                left: -180,
                child: flipImage("assets/leaf.png", 5.0)),
            Positioned(
                top: -80,
                left: -100,
                child: rotateImage('assets/leaf2.png', 7.0)),
            Positioned(
                top: -80,
                right: -100,
                child: Transform(
                    transform: Matrix4.rotationY(pi),
                    alignment: Alignment.center,
                    child: rotateImage('assets/leaf2.png', 7.0))),

            //  Buat Gambar Love Disini
            Positioned(
                top: -400,
                right: 0,
                left: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/brush.png",
                  scale: 5.0,
                  color: Colors.white.withOpacity(0.5),
                )),
            Positioned(
                top: -350,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/love.png',
                  scale: 6.0,
                )),
            Positioned(
                top: -450,
                right: -200,
                left: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/flower.png',
                  scale: 30.0,
                )),
            Positioned(
                top: -320,
                left: -150,
                right: 0,
                bottom: 0,
                child: flipImage('assets/flower.png', 30)),
            Positioned(
                top: -400,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: Text(
                    "BR",
                    style: TextStyle(
                        fontFamily: 'GreatVibes',
                        fontSize: 80,
                        fontWeight: FontWeight.w100),
                  ),
                )),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "WE ARE GETTING MARRIED",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'TheSeasons',
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Invite you to witness the begining of our new life",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Glacial',
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Budi   &   Ratna",
                    style: TextStyle(
                        fontFamily: 'Themysion',
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.linear_scale,
                            size: 20,
                          ),
                        ),
                        TextSpan(
                            text: '   SAVE THE DATE   ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TheSeasons')),
                        WidgetSpan(
                          child: Icon(
                            Icons.linear_scale,
                            size: 20,
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        shape: StadiumBorder(side: BorderSide(width: 2))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.circle, size: 15,),
                        Text("    11 November 2023    ", style: TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),),
                        Icon(Icons.circle, size: 15,)
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Jl. ZA. Pagar Alam, Bandar Lampung",
                  style: TextStyle(
                          fontFamily: 'Glacial',
                          fontSize: 18,
                          fontWeight: FontWeight.w500)
                  ),
                  Text("width: "+ screenSize.width.toString()+"\n height: "+ screenSize.height.toString()),
                  SizedBox(height: 80,)
                ],
              ),
            )
          ],
        ),
      ));
  }
}


