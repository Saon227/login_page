import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
              Icons.arrow_back_ios_new, size: 18, color: HexColor("#0080FF")),
        ),
        centerTitle: true,
        title: Text("회원가입 하기", style: TextStyle(
            color: HexColor("#767676"),
            fontSize: 14.0,
            fontWeight: FontWeight.w400
        ),),
      ),
      body: _signupPageBody(),
    );
  }

  Widget _signupPageBody() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        //height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  _makeInput(label: '학번을 입력해주세요'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(color: HexColor("#A3DAFF"), thickness: 1.0,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Column(
                children: [
                  _makeInput(label: '비밀번호를 입력해주세요', obscureText: true),
                  _makeInput(label: '비밀번호를 한 번 더 입력해주세요', obscureText: true),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(color: HexColor("#A3DAFF"), thickness: 1.0,),
            ),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(color: HexColor("#A3DAFF"), thickness: 1.0,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 10),
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
                  child: Text("회원가입", style: TextStyle(
                      color: HexColor("#FFFFFF"),
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          //쉐도우 넣기
          textAlign: TextAlign.center,
          maxLines: 1,
          cursorHeight: 20,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            hintText: label, hintStyle: TextStyle(
            fontSize: 12,
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