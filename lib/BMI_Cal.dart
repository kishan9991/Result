import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:BMI_Cal()
  ));
}

class BMI_Cal extends StatefulWidget {
  const BMI_Cal({Key? key}) : super(key: key);

  @override
  _BMI_CalState createState() => _BMI_CalState();
}

class _BMI_CalState extends State<BMI_Cal> {

  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();

  int BMI=0;
  String str="";

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
                    labelText: "Weight",
                    labelStyle: TextStyle(
                        color: Colors.green
                    ),
                    helperText: ("*required"),
                    helperStyle: TextStyle(
                        color: Colors.red
                    ),
                    hintText: "e.g. kg",
                    hintStyle: TextStyle(
                        color: Colors.blue
                    ),
                    prefixIcon: Icon(Icons.accessibility_new),
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
                    labelText: "Height",
                    labelStyle: TextStyle(
                        color: Colors.green
                    ),
                    helperText: ("*required"),
                    helperStyle: TextStyle(
                        color: Colors.red
                    ),
                    hintText: "e.g. meter",
                    hintStyle: TextStyle(
                        color: Colors.blue
                    ),
                    prefixIcon: Icon(Icons.accessibility_new),
                    suffixIcon: Icon(Icons.arrow_drop_down_circle),

                  ),
                ),

                ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();

                    setState(() {
                      BMI = n1~/(n2*n2);
                    });

                    print("BMI=$BMI");

                    if(18.5<BMI && BMI<25)
                    {
                      print("Bmi is Normal");
                    }
                    if(BMI<=18.5)
                    {
                      print("Bmi is less");
                    }
                    if(BMI>=25)
                    {
                      print("Bmi is Over");
                    }

                  },
                  child: Text("BMI",),
                ),
                Text("BMI= $BMI"),
              ],
            )
        )
    );
  }
}


