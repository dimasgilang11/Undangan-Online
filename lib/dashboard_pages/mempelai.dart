import 'package:flutter/material.dart';

class Mempelai extends StatelessWidget {
  final Size screenSize;
  const Mempelai({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if(screenSize.height < 700){
      return mempelaiWeb(screenSize);
    }else{
      return mempelaiMobile(screenSize);
    }
  }

  Container mempelaiMobile(Size screenSize) {
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
          return Opacity(opacity: value, child: child,);
        },
        child: Column(
          children: [
            Text(
              "BRIDE & GROOM",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ragam',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Assalamualaikum Warahmatullahi Wabarakatuh",
              style: TextStyle(
                  fontFamily: 'Charmonman', fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Maha suci Allah SWT yang telah menciptakan makhluk-Nya berpasang-pasangan. Ya Allah, perkenankan kami merangkai kasih sayang yang kau ciptakan di antara putra-putri kami:",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12),
            ),
            Row(
              children: [
                
              ],
            ),
            // MEMPELAI PRIA
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/men.png'),
              radius: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "BUDI",
              style:
                  TextStyle(fontFamily: 'Ragam', fontWeight: FontWeight.bold),
            ),
            Text(
              "Budi Doremi",
              style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12),
            ),
            Text("Putra Pertama dari Pasangan",
                style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12)),
            Text("Bambang & Mulyani",
                style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text("Bandar Lampung",
                    style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.facebook),
                Icon(Icons.facebook),
                Icon(Icons.facebook),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // MEMPELAI WANITA
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/women.jpg'),
              radius: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text("RATNA",
            style:
                  TextStyle(fontFamily: 'Ragam', fontWeight: FontWeight.bold),),
            Text("Ratna Fasola",
            style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12)),
            Text("Putri Pertama dari Pasangan",
            style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12)),
            Text("Mulyadi & Marisah",
            style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.location_on), Text("Pringsewu", style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.facebook),
                Icon(Icons.facebook),
                Icon(Icons.facebook),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }


  Container mempelaiWeb(Size screenSize) {
    return Container(
      height: screenSize.height+200,
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
              SizedBox(height: 150,),
              Text(
                "BRIDE & GROOM",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Ragam',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Assalamualaikum Warahmatullahi Wabarakatuh",
                style: TextStyle(
                    fontFamily: 'Charmonman', fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Maha suci Allah SWT yang telah menciptakan makhluk-Nya berpasang-pasangan. Ya Allah, perkenankan kami merangkai kasih sayang yang kau ciptakan di antara putra-putri kami:",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'YoungSerif', fontSize: 12),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //PRIA
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/men.png'),
                        radius: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "BUDI",
                        style: TextStyle(
                            fontFamily: 'Ragam', fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Budi Doremi",
                        style:
                            TextStyle(fontFamily: 'YoungSerif', fontSize: 12),
                      ),
                      Text("Putra Pertama dari Pasangan",
                          style: TextStyle(
                              fontFamily: 'YoungSerif', fontSize: 12)),
                      Text("Bambang & Mulyani",
                          style: TextStyle(
                              fontFamily: 'YoungSerif', fontSize: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on),
                          Text("Bandar Lampung",
                              style: TextStyle(
                                  fontFamily: 'YoungSerif', fontSize: 12))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 50,),
                  //WANITA
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/women.jpg'),
                        radius: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "RATNA",
                        style: TextStyle(
                            fontFamily: 'Ragam', fontWeight: FontWeight.bold),
                      ),
                      Text("Ratna Fasola",
                          style: TextStyle(
                              fontFamily: 'YoungSerif', fontSize: 12)),
                      Text("Putri Pertama dari Pasangan",
                          style: TextStyle(
                              fontFamily: 'YoungSerif', fontSize: 12)),
                      Text("Mulyadi & Marisah",
                          style: TextStyle(
                              fontFamily: 'YoungSerif', fontSize: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on),
                          Text("Pringsewu",
                              style: TextStyle(
                                  fontFamily: 'YoungSerif', fontSize: 12))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
