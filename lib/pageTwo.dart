import 'package:flutter/material.dart';
import 'package:task3/pageOne.dart';
import 'package:task3/widget/body.dart';

class pageTwo extends StatefulWidget {
  @override
  _pageTwoState createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ContinerBody("تغير كلمه المرور"),
            SizedBox(
              height: 20,
            ),
            buildTextFormField("كلمة المرور القديمة"),
            SizedBox(height: 20),
            buildTextFormField("كلمة المرور الجديدة"),
            SizedBox(height: 20),
            buildTextFormField("كلمة المرور الجديدة"),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: FlatButton(
                color:  Color(0xff5c3435),
                onPressed: () {},
                child: Text(
                  "تأكيد",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            )
          ],
        ),
      ),
    ));
  }

  TextFormField buildTextFormField(String LableTex) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff5c3435)),
              borderRadius: BorderRadius.circular(10)),
          labelText: LableTex,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          fillColor: Color(0xfff4f0ef),
          filled: true),
    );
  }
}
