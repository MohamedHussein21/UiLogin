import 'package:flutter/material.dart';
import 'package:task3/widget/body.dart';

class pageOne extends StatefulWidget {
  @override
  _pageOneState createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff7f7f7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContinerBody("بيانات حسابي"),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('asserts/images/soso.jpeg'),
                          radius: 70,
                        ),
                        Positioned(
                            top: 99,
                            right: 78,
                            left: 10,
                            child: MaterialButton(
                              onPressed: () {},
                              color: Color(0xff5c3435),
                              textColor: Colors.white,
                              child: Icon(
                                Icons.edit,
                                size: 22,
                              ),
                              padding: EdgeInsets.all(10),
                              shape: CircleBorder(),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Text("Mohamed",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5c3435))),
              SizedBox(height: 25),
              buildText("رقم الجوال"),
              buildTextFormField("01000000", TextInputType.phone),
              SizedBox(height: 20),
              buildText("اسم المستخدم"),
              buildTextFormField("Mohamed", TextInputType.text),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/second');
                    },
                  child: Text(
                    "تغير كلمه المرور",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5c3435),
                    ),
                  )),
              FlatButton(
                onPressed: (){},
                child: Text("تأكيد",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                color:  Color(0xff5c3435),
                padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildText(String txttitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 250, bottom: 3),
      child: Text(
        txttitle,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff5c3435)),
      ),
    );
  }

  TextFormField buildTextFormField(String hinttxt, TextInputType txtinput) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttxt,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xff5c3435)),
            borderRadius: BorderRadius.circular(50)),
        prefixIcon: Icon(Icons.edit),
      ),
      keyboardType: txtinput,
    );
  }
}
