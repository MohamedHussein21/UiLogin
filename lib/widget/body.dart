import 'package:flutter/material.dart';

class ContinerBody extends StatelessWidget {
  final String Title ;

  const ContinerBody(this.Title);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfff7f7f7),
        child: Column(children: [
          Stack(
            children: [
              Image.asset('asserts/images/Mo.jpeg'),
              Padding(
                  padding:
                      const EdgeInsets.only(top: 50, left: 120, right: 120),
                  child: Text(Title,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5c3435)))),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 45),
                child: IconButton(icon:
                Icon(Icons.arrow_back_ios)
                    , onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/First');
                    }),
              ),
            ],
          ),
        ]));
  }
}
