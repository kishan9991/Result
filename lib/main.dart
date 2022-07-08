import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatelessWidget {

  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
  TextEditingController t3= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [

            TextField(controller: t1,),
            TextField(controller: t2,),
            TextField(controller: t3),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();

                  int sum=n1+n2+n3;

                  print("sum=$sum");

                },
                child: Text("submit",
                )
            ),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();

                  int Muliplication=n1*n2*n3;

                  print("Muliplication=$Muliplication");

                },
                child: Text("multiplication",
                )
            )

          ],
        )
    );
  }
}