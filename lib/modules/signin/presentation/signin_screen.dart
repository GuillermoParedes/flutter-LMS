import 'package:flutter/material.dart';
import 'package:flutter_lms/shared/style/theme.dart';
import 'package:flutter_lms/shared/widgets/button_widget.dart';
import 'package:flutter_lms/shared/widgets/text_widget.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
      color: primaryColor,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 320,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  TextWidget(label: 'TUTATOR LMS',color: Colors.white, size: 24,),
                  SizedBox(height: 20),
                  TextWidget(label: 'Learn from anything and anywhere',color: Colors.white, ),
                ],
              )),

          Container(
            width: width,
            height: height - 320,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
              color: base2LightColor,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                _emailPasswordWidget(),
                ButtonWidget(label: 'Sign In',bgColor: primaryColor, textColor: Colors.white,),
                SizedBox(height: 20),

                ButtonWidget(label: 'Create a new account',bgColor: secondaryColor, textColor: Colors.white,),
              ],
            ),
          )

        ],
      ),
    ));
  }
}