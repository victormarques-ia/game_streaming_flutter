import 'package:flutter/material.dart';
import 'package:game_streaming/screens/search/channel_item_result.dart';
import 'package:game_streaming/screens/search/game_item_result.dart';
import 'package:game_streaming/screens/search/other_item_result.dart';
import 'package:game_streaming/utils/constants.dart';
import 'package:game_streaming/shared/rounded_button.dart';
import 'package:game_streaming/shared/custom_filled_field.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: CustomFilledField(
                  label: "Search games, channels...",
                  iconData: Icons.search,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      GameItemResult(
                          imageUrl: "assets/images/game_1.jpg",
                          name: "Fortnite",
                          morePadding: true),
                      ChannelItemResult(
                        live: true,
                        name: "ForeverYoungGaming",
                      ),
                      ChannelItemResult(
                        live: true,
                        name: "FortniteWorld",
                      ),
                      ChannelItemResult(
                        live: false,
                        name: "vegeta777",
                      ),
                      OtherItemResult(
                        name: "Fortnite",
                      ),
                      OtherItemResult(
                        name: "Fortnite customs",
                      ),
                      OtherItemResult(
                        name: "Fortnite fashion show",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: RoundedButton(
                  color: Colors.white12,
                  text: "All results",
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
