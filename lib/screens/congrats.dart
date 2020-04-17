import 'package:flutter/material.dart';
import 'package:real_estate_network/util/util.dart';
import 'package:real_estate_network/components/reuasable_text.dart';

class Congrats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Container(
              // alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/onboard2.2.png'),
            ),
            SizedBox(height: 15),
            Container(
              child: ReusableText(
                alignment: Alignment.bottomRight,
                text: 'You did it!',
                textColor: UIColors.textColor,
                size: 50,
              ),
            ),
            SizedBox(height: 10),
            ReusableText(
              alignment: Alignment.bottomRight,
              text: 'Sucessfully created account',
              textColor: UIColors.text2Color,
            ),
            Spacer(),
            Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                          color: UIColors.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.play_arrow),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
