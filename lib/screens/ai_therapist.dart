import 'package:flutter/material.dart';

import '../widget/aitherapist/askingchat.dart';
import '../widget/aitherapist/responsingchat.dart';
import '../widget/aitherapist/sendbutton.dart';
import '../widget/aitherapist/suggeestmessage.dart';

class ChaBot extends StatefulWidget {
  const ChaBot({super.key});

  @override
  State<ChaBot> createState() => _ChaBotState();
}

class _ChaBotState extends State<ChaBot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFECF2FF), // Corresponds to #ECF2FF at 0%
            Color(0xFFE5D1FA), // Corresponds to #E5D1FA at 41.3%
            Color(0xFFE3DFFD), // Corresponds to #E3DFFD at 100%
          ],
          stops: [0.0, 0.550, 1.0],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
              color: Colors.black,
            ),
            title: Text(
              "AI Therapist",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'workSans',
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              AskingChat(),
              ResponsingChat(),
              Padding(
                padding: const EdgeInsets.only(top: 425.0, bottom: 10.0),
                child: SuggestMessage(),
              ),
              SendButton()
            ],
          )),
    );
  }
}