import 'package:flutter/material.dart';

TextStyle textStyle =
    TextStyle(fontFamily: 'YoungSerif', fontSize: 15, color: Colors.white);

class Acara extends StatelessWidget {
  const Acara({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if(screenSize.height < 700 && screenSize.width >= 870){
      return acaraWeb(screenSize);
    }else if (screenSize.height < 700 && screenSize.width < 870){
      return acaraMobile(screenSize, 100);
    }else{
      return acaraMobile(screenSize, 0);
    }
  }

  Container acaraMobile(Size screenSize, double additionalHeight) {
    return Container(
    height: screenSize.height + additionalHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      //ISI HALAMAN MULAI DARI SINI
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
            children: [
              SizedBox(
                height: 30,
              ),
              //Akad Nikah
              ClipRRect(
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
                    //Tulisan
                    child: Column(
                      children: [
                        Text(
                          "AKAD NIKAH",
                          style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Ragam',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rabu, 1 November 2023",
                          style: textStyle,
                        ),
                        Text(
                          "08:00 - 09:00",
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Masjid Al-Wasii UNILA",
                          style: textStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              "Jl. Prof. Dr. Sumantri Brojonegoro",
                              style: textStyle,
                            )
                          ],
                        ),
                        Text(
                          "Gedong Meneng, Kec. Rajabasa, Kota Bandar Lampung, Lampung 35141",
                          textAlign: TextAlign.center,
                          style: textStyle,
                        ),
                        Text(
                          "Lampung",
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Google Maps",
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Ragam'),
                          ),
                          style: ButtonStyle(
                              shape:
                                  MaterialStateProperty.all(StadiumBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //Resepsi
              ClipRRect(
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
                    //Tulisan
                    child: Column(
                      children: [
                        Text(
                          "RESEPSI",
                          style: TextStyle(
                              color: Colors.amber,
                              fontFamily: 'Ragam',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Senin, 11 November 2023",
                          style: textStyle,
                        ),
                        Text(
                          "08:00 - 09:00",
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Princhsto Equestrian Park",
                          style: textStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              "Jl. Kesehatan, Pringsewu Timur",
                              style: textStyle,
                            )
                          ],
                        ),
                        Text(
                          "Kecamatan Pringsewu, Kabupaten Pringsewu, Lampung 35373",
                          textAlign: TextAlign.center,
                          style: textStyle,
                        ),
                        Text(
                          "Lampung",
                          style: textStyle,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Google Maps",
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Ragam'),
                          ),
                          style: ButtonStyle(
                              shape:
                                  MaterialStateProperty.all(StadiumBorder()),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
  }

  Container acaraWeb(Size screenSize) {
    return Container(
    height: screenSize.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
      //ISI HALAMAN MULAI DARI SINI
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
          child: Row(
            children: [
              //Akad Nikah
              SizedBox(
                width: 400,
                height: 300,
                child: ClipRRect(
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
                      //Tulisan
                      child: Column(
                        children: [
                          Text(
                            "AKAD NIKAH",
                            style: TextStyle(
                                color: Colors.amber,
                                fontFamily: 'Ragam',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Rabu, 1 November 2023",
                            style: textStyle,
                          ),
                          Text(
                            "08:00 - 09:00",
                            style: textStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Masjid Al-Wasii UNILA",
                            style: textStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                "Jl. Prof. Dr. Sumantri Brojonegoro",
                                style: textStyle,
                              )
                            ],
                          ),
                          Text(
                            "Gedong Meneng, Kec. Rajabasa, Kota Bandar Lampung, Lampung 35141",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          Text(
                            "Lampung",
                            style: textStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Google Maps",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'Ragam'),
                            ),
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all(StadiumBorder()),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //Resepsi
              SizedBox(width: 30,),
              SizedBox(
                width: 400,
                height: 300,
                child: ClipRRect(
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
                      //Tulisan
                      child: Column(
                        children: [
                          Text(
                            "RESEPSI",
                            style: TextStyle(
                                color: Colors.amber,
                                fontFamily: 'Ragam',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Senin, 11 November 2023",
                            style: textStyle,
                          ),
                          Text(
                            "08:00 - 09:00",
                            style: textStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Princhsto Equestrian Park",
                            style: textStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                "Jl. Kesehatan, Pringsewu Timur",
                                style: textStyle,
                              )
                            ],
                          ),
                          Text(
                            "Kecamatan Pringsewu, Kabupaten Pringsewu, Lampung 35373",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          Text(
                            "Lampung",
                            style: textStyle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Google Maps",
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'Ragam'),
                            ),
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all(StadiumBorder()),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
  }
}
