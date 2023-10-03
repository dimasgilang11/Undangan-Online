import 'package:flutter/material.dart';

class PopupCard extends StatelessWidget {
  PopupCard({super.key});

  final nameStyle = TextStyle(
    fontSize: 40,
    fontFamily: 'GreatVibes',
    color: Colors.white,
  );

  final guestNameStyle = TextStyle(
    fontSize: 30,
    fontFamily: 'Charmonman',
    color: Colors.white,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        
        fit: StackFit.expand, 
        children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Image.asset(
            'assets/Cover.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blueGrey.withOpacity(0.7),
                // Color.fromARGB(255, 77, 50, 77).withOpacity(0.7),
                Color.fromARGB(255, 245, 201, 251).withOpacity(0.2)
              ])),
        ),
        //NAMA PASANGAN
        Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "Budi Doremi      ",
                  style: nameStyle,
                ),
                Text("&", style: nameStyle),
                Text(
                  "      Ratna Fasola",
                  style: nameStyle,
                ),
              ],
            )),
    
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Dear,", style: guestNameStyle.copyWith(fontSize: 25),),
              Text("Galih Wiratama", style: guestNameStyle,),
              Text("di Lampung", style: guestNameStyle.copyWith(fontSize: 25),),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 197, 121, 216))
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Open Invitation"),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
