import 'package:flutter/material.dart';
import 'package:real_estate_network/util/util.dart';
import 'package:real_estate_network/components/reuasable_text.dart';
import 'package:real_estate_network/components/reusablebutton.dart';
import '../components/inputdecoration.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bgColor,
      body: GestureDetector(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      ReusableText(
                        alignment: Alignment.bottomLeft,
                        text: 'SignUp',
                        textColor: UIColors.textColor,
                        size: 50,
                      ),
                      Spacer(),
                      TextFormField(
                        decoration: inputDecoration(labelText: 'Email address'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        decoration: inputDecoration(
                          labelText: 'Password',
                          sicon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/congrats');
                        },
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: UIColors.textColor,
                            child: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ),
                      Spacer(),
                      ReusableText(
                        alignment: Alignment.bottomLeft,
                        text: 'Already have an account?',
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ReusableButton(
                            text: 'LOGIN',
                            size: 19,
                            onpress: () {},
                          ),
                          Icon(Icons.play_arrow),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
