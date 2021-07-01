import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/password.dart';
import 'package:login_page/signup.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: new _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),

          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('ST',style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#0080ff"),
                    //폰트 지정

                  ),)
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    _makeInput(label: '학번을 입력해주세요'),
                    _makeInput(label: '비밀번호를 입력해주세요', obscureText: true),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {},
                    color: HexColor("#0080FF"),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("LOGIN", style: TextStyle(
                      color: HexColor("#FFFFFF"),
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            //margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: MaterialButton(
                              height: 20,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => FindPasswordPage()));
                              },
                              child: Text("비밀번호 찾기", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: HexColor("0080FF"),
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            //margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: MaterialButton(
                              height: 20,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => SignupPage()));
                              },
                              child: Text("회원가입 하기", style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: HexColor("0080FF"),
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

  Widget _makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          //쉐도우 넣기
          maxLines: 1,
          cursorHeight: 20,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            hintText: label, hintStyle: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: HexColor("#C2C2C2"),
          ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: HexColor("#0080FF"))
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: HexColor("#0080FF")),
            ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}

