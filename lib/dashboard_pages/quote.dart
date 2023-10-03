import 'package:flutter/material.dart';
import 'beranda.dart';

class Quote extends StatelessWidget {
  final Size screenSize;
  const Quote({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    Beranda beranda = Beranda(screenSize: screenSize);
    return Container(
      height: screenSize.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
        child: Container(
          color: Colors.white.withOpacity(50 / 100),
          padding: EdgeInsets.all(20),
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: Duration(seconds: 2),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Material(
                  borderRadius: BorderRadius.circular(50),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/flower.png',
                              scale: 20,
                            ),
                            beranda.flipImage('assets/flower.png', 20)
                          ],
                        ),
                        Text("OUR QUOTE",
                        style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'Ragam',
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 30,),
                        Text("Tidak ada solusi yang lebih baik bagi dua insan yang saling mencintai di banding pernikahan.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'YoungSerif',
                          color: Colors.white
                        ),
                        ),
                        SizedBox(height: 30,),
                        Text("HR. IBNU MAJAH",
                        style: TextStyle(
                          color: Colors.amber,
                          fontFamily: 'Ragam',
                          fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ]
            ),
          ),
        ));
  }
}
