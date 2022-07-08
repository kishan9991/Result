import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Sum()
  ));
}

class Sum extends StatefulWidget {
  const Sum({Key? key}) : super(key: key);

  @override
  _SumState createState() => _SumState();
}

class _SumState extends State<Sum> {

  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
  TextEditingController t3= TextEditingController();

  int Sum=0;
  String str="";
  String a="0";
  String b="0";
  String c="0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(

        child : Column(
          children: [

            TextField(controller: t1,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },

              decoration: InputDecoration(
                labelText: "Enter AJ Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: ("*required"),
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 45",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),

            ),
            TextField(controller: t2,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter AJ Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: ("*required"),
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 45",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),
            ),
            TextField(controller: t3,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter AJ Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: ("*required"),
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 45",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),
            ),

            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;

                  if(t1.text=="")
                    {
                      a="0";
                      b=t2.text;
                      c=t3.text;
                    }
                  if(t2.text=="")
                    {
                      b="0";
                      a=t1.text;
                      c=t3.text;
                    }
                  if(t3.text=="")
                    {
                      c="0";
                      b=t2.text;
                      a=t1.text;
                    }
                  if(t1.text=="" && t2.text=="")
                    {
                      a="0";
                      b="0";
                      c=t3.text;
                    }
                  if(t1.text=="" && t3.text=="")
                    {
                      a="0";
                      c="0";
                      b=t2.text;
                    }
                  if(t3.text=="" && t2.text=="")
                    {
                      b="0";
                      c="0";
                      a=t1.text;
                    }
                  if(t1.text=="" && t2.text=="" && t3.text=="")
                  {
                      a="0";
                      b="0";
                      c="0";
                  }
                  if(t1.text!="" && t2.text!="" && t3.text!="")
                    {
                      a=t1.text;
                      b=t2.text;
                      c=t3.text;
                    }
                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  setState(() {
                    Sum = n1+n2+n3;
                  });

                  print("sum=$Sum");

                },
                child: Text("Sum",
                ),

            ),
            Text("Sum = $Sum"),

          ],
        )
        )
    );
  }
}


