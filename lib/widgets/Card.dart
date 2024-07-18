import 'package:flutter/material.dart';
import 'package:sportsapp/models/Leagues_model.dart';

class LeaguesContainer extends StatelessWidget {
  const LeaguesContainer({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color:const Color(0xff5C5470), borderRadius: BorderRadius.circular(15)),
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
       const  Padding(
           padding:  EdgeInsets.all(9.0),
           child:   Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text('League Key', style: TextStyle(color: Color(0xffFAF0E6))),
                 Text('League Name', style: TextStyle(color: Color(0xffFAF0E6)))
               ],
             ),
         ),
         const   SizedBox(height: 15),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'country key',
                  style: TextStyle(color: Color(0xffFAF0E6)),
                ),
                Text('contry Name', style: TextStyle(color: Color(0xffFAF0E6)))
              ],
            ),
          const  SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/real.png',
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  'assets/images/real.png',
                  height: 50,
                  width: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
