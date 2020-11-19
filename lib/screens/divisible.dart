import 'package:flutter/material.dart';


class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {
  TextEditingController getNum=TextEditingController();
  String checkresult="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: getNum,
            decoration: InputDecoration(
                hintText: "Enter the number",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
            double getNum1=double.parse(getNum.text);
            setState(() {
              if (getNum1 % 8 == 0)
              {
                checkresult="Divisible by 8";
              }
              else{
                checkresult="Not Divisible By 8";
              }


            });

          },
            child: Text("CHECK"),
            color: Colors.amber,
          ),
          Text(checkresult,
            style: TextStyle(fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
