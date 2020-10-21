import 'package:flutter/material.dart';
import 'package:game_streaming/utils/constants.dart';
import 'package:game_streaming/shared/broadcast_item.dart';
import 'package:game_streaming/shared/rounded_label.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Stack(
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.transparent,
                  kSecondaryColor,
                ],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: Colors.white,
                        ),
                        RoundedLabel(
                          small: true,
                          color: Colors.grey[200],
                          text: "Subscribe",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/avatar_8.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Aquiles20",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "468.523 followers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedLabel(
                          small: false,
                          color: Colors.red,
                          text: "Live",
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        RoundedLabel(
                          small: false,
                          color: Colors.grey[200],
                          text: "Previus broadcasts",
                        ),
                      ],
                    ),
                  ),
                  BroadcastItem(
                    live: true,
                    title: "Verdansk in mine! Follow on discord and twitch too",
                    users: "690",
                    imageUrl: "assets/images/broadcast_1.jpg",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.replay,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Previus broadcasts",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  BroadcastItem(
                    live: false,
                    title: "90 kills on solos WarZone",
                    users: "389",
                    imageUrl: "assets/images/broadcast_2.jpg",
                  ),
                  BroadcastItem(
                    live: false,
                    title: "My first FIFA 20 tournament",
                    users: "596",
                    imageUrl: "assets/images/broadcast_3.jpg",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
