import 'package:flutter/material.dart';
import 'package:sportsapp/widgets/Card.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff352F44),
        title: Text(
          'Leagues',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
               return  LeaguesContainer();
              }),
            ),
          )
        ],
      ),
    );
  }
}

