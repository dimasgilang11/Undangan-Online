import 'package:flutter/material.dart';

TextStyle profilePageTextStyle = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Comfortaa');

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width >= 750) {
      return profileWeb(context);
    } else {
      return profileMobile(context);
    }
  }

  Scaffold profileMobile(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
        child: Container(
          color: Colors.white.withOpacity(50 / 100),
          padding: EdgeInsets.all(20),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/Cover.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent.shade100,
                              shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 30,
                              )),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nama",
                                    style: profilePageTextStyle.copyWith(
                                        fontSize: 11),
                                  ),
                                  Text(
                                    "Dimas Gilang",
                                    style: profilePageTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit_outlined))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Info",
                                    style: profilePageTextStyle.copyWith(
                                        fontSize: 11),
                                  ),
                                  Text(
                                    "Available",
                                    style: profilePageTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit_outlined))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone",
                                    style: profilePageTextStyle.copyWith(
                                        fontSize: 11),
                                  ),
                                  Text(
                                    "+6234567891123",
                                    style: profilePageTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Scaffold profileWeb(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'), fit: BoxFit.cover)),
        child: Container(
          color: Colors.white.withOpacity(50 / 100),
          padding: EdgeInsets.all(20),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage('assets/Cover.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent.shade100,
                            shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                            )),
                      ),
                    )
                  ]),
                  SizedBox(width: 100,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nama",
                                  style: profilePageTextStyle.copyWith(
                                      fontSize: 11),
                                ),
                                Text(
                                  "Dimas Gilang",
                                  style: profilePageTextStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.edit_outlined))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Info",
                                  style: profilePageTextStyle.copyWith(
                                      fontSize: 11),
                                ),
                                Text(
                                  "Available",
                                  style: profilePageTextStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.edit_outlined))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone",
                                  style: profilePageTextStyle.copyWith(
                                      fontSize: 11),
                                ),
                                Text(
                                  "+6234567891123",
                                  style: profilePageTextStyle,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
