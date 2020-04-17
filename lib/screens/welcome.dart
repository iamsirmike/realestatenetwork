import 'package:flutter/material.dart';
import 'package:real_estate_network/util/util.dart';
import 'package:real_estate_network/components/reuasable_text.dart';
import 'package:real_estate_network/components/reusablebutton.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Container(
              child: Image.asset('assets/images/onboard1.1.png'),
            ),
            Spacer(),
            ReusableText(
              text: 'MAKE YOUR OWN',
              textColor: UIColors.text2Color,
            ),
            SizedBox(height: 10),
            ReusableText(
              text: 'Real estate network',
              textColor: UIColors.textColor,
              size: 50,
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ReusableButton(
                    onpress: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    text: 'GET STARTED',
                    size: 20,
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
