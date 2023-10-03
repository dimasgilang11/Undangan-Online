import 'package:datenglah/dashboard_pages/acara.dart';
import 'package:datenglah/dashboard_pages/beranda.dart';
import 'package:datenglah/dashboard_pages/mempelai.dart';
import 'package:datenglah/dashboard_pages/quote.dart';
import 'package:datenglah/popup_card.dart';
import 'package:datenglah/profile_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //POP UP Disini
    Future.delayed(Duration.zero, () {
      _popUpCard(context);
    });
  }

  void _popUpCard(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return PopupCard();
        });
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;

    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 226, 234, 232),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey,
            mini: true,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProfilePage();
                },
              ));
            },
            child: Icon(
              Icons.account_circle,
              size: 40,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

        // Halaman dimulai disini
        body: ListView(
          children: [
            Beranda(screenSize: _screenSize),
            Mempelai(screenSize: _screenSize),
            Acara(),
            Quote(
              screenSize: _screenSize,
            )
          ],
        ));
    // body: PageView(
    //   pageSnapping: false,
    //   scrollDirection: Axis.vertical,
    //   children: [Beranda(), Mempelai(), Acara(), Quote()],
    // ));
  }
}
