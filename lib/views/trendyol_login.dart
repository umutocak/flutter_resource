import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resource/widgets/app_button.dart';
import 'package:flutter_resource/widgets/input_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FormLogin extends StatefulWidget {

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin>
    with SingleTickerProviderStateMixin {
  var tweenLeft = Tween<Offset>(begin: Offset.zero, end: Offset(-1.1, 0))
      .chain(CurveTween(curve: Curves.ease));
  var tweenRight = Tween<Offset>(begin: Offset(1.1, 0), end: Offset(0, 0))
      .chain(CurveTween(curve: Curves.ease));

  late AnimationController _animationController;

  var _isMoved = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffCF2F31), Color(0xffBE3511)],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 7,
            left: MediaQuery.of(context).size.width / 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 7,
                ),
              ],
            ),
          ),

          // Login Screen
          SlideTransition(
            position: _animationController.drive(tweenRight),
            child:
            Stack(fit: StackFit.loose, clipBehavior: Clip.none, children: [
              _registerScreen(context),
            ]),
          ),
          SlideTransition(
            position: _animationController.drive(tweenLeft),
            child:
            Stack(fit: StackFit.loose, clipBehavior: Clip.none, children: [
              _loginScreen(context),
            ]),
          ),
        ],
      ),
    );
  }

  Positioned _registerScreen(BuildContext context) {
    return Positioned(
      left: 0,
      top: MediaQuery.of(context).size.height / 3.3,
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: EdgeInsets.all(20.0),
            elevation: 0.7,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15,),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFe3e3e3),
                          ),
                        ),
                        hintText: "E-Posta",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(105, 108, 121, 0.7),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFe3e3e3),
                          ),
                        ),
                        hintText: "Şifre",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(105, 108, 121, 0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: "Şifreniz",
                                style: TextStyle(color: Colors.grey),
                                children: <TextSpan>[
                                  TextSpan(text: " en az 7 karakter", style: TextStyle(color: Colors.black),),
                                  TextSpan(text: " ve", style: TextStyle(color: Colors.grey),),
                                  TextSpan(text: " en fazla 15 karakter", style: TextStyle(color: Colors.black),),
                                  TextSpan(text: " olmalı,", style: TextStyle(color: Colors.grey),),
                                  TextSpan(text: " harf ve rakam", style: TextStyle(color: Colors.black),),
                                  TextSpan(text: " içermelidir.", style: TextStyle(color: Colors.grey),)
                                ]
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200,
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: double.infinity,
                        height: 44,
                        decoration: BoxDecoration(
                            color: Color(0xFFf78f20),
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(color: Color(0xFFf78f20), width: 1)),
                        child: Center(
                          child: Text(
                            "Üye Ol",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Wrap(
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "Üye misin?",
                            style: GoogleFonts.openSans(
                              fontSize: 14.0,
                              color: Color.fromRGBO(64, 74, 106, 1),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (_isMoved) {
                                _animationController.reverse();
                              } else {
                                _animationController.forward();
                              }
                              _isMoved = !_isMoved;
                            },
                            child: Text(
                              "Giriş Yap",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.0,
                                color: Color(0xFFf78f20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )),
    );
  }

  Positioned _loginScreen(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height / 3.3,
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.all(20.0),
                elevation: 0.7,
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 15,),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFe3e3e3),
                              ),
                            ),
                            hintText: "E-Posta",
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(105, 108, 121, 0.7),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFe3e3e3),
                              ),
                            ),
                            hintText: "Şifre",
                            hintStyle: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromRGBO(105, 108, 121, 0.7),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Şifremi Unuttum",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Color(0xFFf78f20),),
                          ),
                        ),
                        SizedBox(height: 16.0,),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            width: double.infinity,
                            height: 44,
                            decoration: BoxDecoration(
                                color: Color(0xFFf78f20),
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(color: Color(0xFFf78f20), width: 1)),
                            child: Center(
                              child: Text(
                                "Giriş Yap",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 10.0,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset("assets/images/google.png", width: 50, height: 50,),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  width: 70,
                                  child: Text("Google ile giriş yap"),
                                )
                              ],
                            ),
                            SizedBox(width: 10.0,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset("assets/images/facebook.png", width: 50, height: 50,),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  width: 70,
                                  child: Text("Facebook ile giriş yap"),
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(color: Colors.black, thickness: 0.1,),
                        Center(
                          child: Wrap(
                            runAlignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                "Üye değil misin?",
                                style: GoogleFonts.openSans(
                                  fontSize: 14.0,
                                  color: Color.fromRGBO(64, 74, 106, 1),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (_isMoved) {
                                    _animationController.reverse();
                                  } else {
                                    _animationController.forward();
                                  }
                                  _isMoved = !_isMoved;
                                },
                                child: Text(
                                  "Üye Ol",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            )));
  }
}