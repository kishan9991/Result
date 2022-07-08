import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Student_Result()
  ));
}

class Student_Result extends StatefulWidget {
  const Student_Result({Key? key}) : super(key: key);

  @override
  _Student_ResultState createState() => _Student_ResultState();
}

class _Student_ResultState extends State<Student_Result> {

  int Total=0;
  int Avg=0;
  String str="";

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
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
                labelText: "Enter MPI Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 55",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t3,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter IOT Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 65",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t4,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter TOC Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 75",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t5,
              onChanged: (value) {
                print(value);
                setState(() {
                  str=value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter WP Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 85",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),

            Container(
              margin: EdgeInsets.all(10),
              child:
              ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;
                    String c=t3.text;
                    String d=t4.text;
                    String e=t5.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();
                    int n3=num.parse(c).toInt();
                    int n4=num.parse(d).toInt();
                    int n5=num.parse(e).toInt();

                    setState(() {
                      Total=n1+n2+n3+n4+n5;
                    });

                    print("Total=$Total");

                  },
                  child: Text("Total",
                  )
              ),

            ),
            Text("Total=$Total"),
            Container(
              margin: EdgeInsets.all(10),
              child:
              ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;
                    String c=t3.text;
                    String d=t4.text;
                    String e=t5.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();
                    int n3=num.parse(c).toInt();
                    int n4=num.parse(d).toInt();
                    int n5=num.parse(e).toInt();

                    setState(() {
                      Avg=(n1+n2+n3+n4+n5)~/5;
                    });

                    print("Avarege=$Avg");

                  },
                  child: Text("Avarage",
                  )
              ),),
            Text("Average=$Avg"),
            Container(
              margin: EdgeInsets.all(10),
              child:
              ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;
                    String c=t3.text;
                    String d=t4.text;
                    String e=t5.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();
                    int n3=num.parse(c).toInt();
                    int n4=num.parse(d).toInt();
                    int n5=num.parse(e).toInt();

                    setState(() {
                      if(n1<n2 && n1<n3 && n1<n4 && n1<n5)
                      {
                        print("Min=$n1");
                      }
                      if(n2<n1 && n2<n3 && n2<n4 && n2<n5)
                      {
                        print("Min=$n2");
                      }
                      if(n3<n1 && n3<n2 && n3<n4 && n3<n5)
                      {
                        print("Min=$n3");
                      }
                      if(n4<n1 && n4<n2 && n4<n3 && n4<n5)
                      {
                        print("Min=$n4");
                      }
                      if(n5<n1 && n5<n2 && n5<n3 && n5<n4)
                      {
                        print("Min=$n5");
                      }
                    });

                  },
                  child: Text("Min",
                  )
              ),),

            Container(
              margin: EdgeInsets.all(10),
              child:
              ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;
                    String c=t3.text;
                    String d=t4.text;
                    String e=t5.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();
                    int n3=num.parse(c).toInt();
                    int n4=num.parse(d).toInt();
                    int n5=num.parse(e).toInt();

                    setState(() {
                      if(n1>n2 && n1>n3 && n1>n4 && n1>n5)
                      {
                        print("Max=$n1");
                      }
                      if(n2>n1 && n2>n3 && n2>n4 && n2>n5)
                      {
                        print("Max=$n2");
                      }
                      if(n3>n1 && n3>n2 && n3>n4 && n3>n5)
                      {
                        print("Max=$n3");
                      }
                      if(n4>n1 && n4>n2 && n4>n3 && n4>n5)
                      {
                        print("Max=$n4");
                      }
                      if(n5>n1 && n5>n2 && n5>n3 && n5>n4)
                      {
                        print("Max=$n5");
                      }
                    });

                  },
                  child: Text("Max",
                  )
              ),),
            Container(
              margin: EdgeInsets.all(10),
              child:
              ElevatedButton(
                  onPressed: (){

                    String a=t1.text;
                    String b=t2.text;
                    String c=t3.text;
                    String d=t4.text;
                    String e=t5.text;

                    int n1=num.parse(a).toInt();
                    int n2=num.parse(b).toInt();
                    int n3=num.parse(c).toInt();
                    int n4=num.parse(d).toInt();
                    int n5=num.parse(e).toInt();

                    setState(() {
                      if(n1<33 || n2<33 || n3<33 || n4<33 || n5<33)
                      {
                        print("Student is Fail");
                      }
                      else
                      {
                        print("Student is Pass");
                      }
                    });
                  },
                  child: Text("Pass/Fail",
                  )
              ),)
          ],
        ),
      ),
    );
  }
}

/*
class Student_Result extends StatelessWidget {

  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
  TextEditingController t3= TextEditingController();
  TextEditingController t4= TextEditingController();
  TextEditingController t5= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [

            TextField(controller: t1,
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

              ),),
            TextField(controller: t2,
              decoration: InputDecoration(
                labelText: "Enter MPI Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 55",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t3,
              decoration: InputDecoration(
                labelText: "Enter IOT Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 65",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t4,
              decoration: InputDecoration(
                labelText: "Enter TOC Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 75",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),
            TextField(controller: t5,
              decoration: InputDecoration(
                labelText: "Enter WP Mark",
                labelStyle: TextStyle(
                    color: Colors.green
                ),
                helperText: "*required",
                helperStyle: TextStyle(
                    color: Colors.red
                ),
                hintText: "e.g. 85",
                hintStyle: TextStyle(
                    color: Colors.blue
                ),
                prefixIcon: Icon(Icons.calculate),
                suffixIcon: Icon(Icons.arrow_drop_down_circle),

              ),),

            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;
                  String d=t4.text;
                  String e=t5.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  int n4=num.parse(d).toInt();
                  int n5=num.parse(e).toInt();

                  int Total=n1+n2+n3+n4+n5;

                  print("Total=$Total");

                },
                child: Text("Total",
                )
            ),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;
                  String d=t4.text;
                  String e=t5.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  int n4=num.parse(d).toInt();
                  int n5=num.parse(e).toInt();

                  int Avg=(n1+n2+n3+n4+n5)~/5;

                  print("Avarege=$Avg");

                },
                child: Text("Avarage",
                )
            ),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;
                  String d=t4.text;
                  String e=t5.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  int n4=num.parse(d).toInt();
                  int n5=num.parse(e).toInt();

                  if(n1<n2 && n1<n3 && n1<n4 && n1<n5)
                    {
                      print("Min=$n1");
                    }
                  if(n2<n1 && n2<n3 && n2<n4 && n2<n5)
                    {
                      print("Min=$n2");
                    }
                  if(n3<n1 && n3<n2 && n3<n4 && n3<n5)
                    {
                      print("Min=$n3");
                    }
                  if(n4<n1 && n4<n2 && n4<n3 && n4<n5)
                    {
                      print("Min=$n4");
                    }
                  if(n5<n1 && n5<n2 && n5<n3 && n5<n4)
                    {
                      print("Min=$n5");
                    }

                },
                child: Text("Min",
                )
            ),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;
                  String d=t4.text;
                  String e=t5.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  int n4=num.parse(d).toInt();
                  int n5=num.parse(e).toInt();

                  if(n1>n2 && n1>n3 && n1>n4 && n1>n5)
                  {
                    print("Max=$n1");
                  }
                  if(n2>n1 && n2>n3 && n2>n4 && n2>n5)
                  {
                    print("Max=$n2");
                  }
                  if(n3>n1 && n3>n2 && n3>n4 && n3>n5)
                  {
                    print("Max=$n3");
                  }
                  if(n4>n1 && n4>n2 && n4>n3 && n4>n5)
                  {
                    print("Max=$n4");
                  }
                  if(n5>n1 && n5>n2 && n5>n3 && n5>n4)
                  {
                    print("Max=$n5");
                  }

                },
                child: Text("Max",
                )
            ),
            ElevatedButton(
                onPressed: (){

                  String a=t1.text;
                  String b=t2.text;
                  String c=t3.text;
                  String d=t4.text;
                  String e=t5.text;

                  int n1=num.parse(a).toInt();
                  int n2=num.parse(b).toInt();
                  int n3=num.parse(c).toInt();
                  int n4=num.parse(d).toInt();
                  int n5=num.parse(e).toInt();

                  if(n1<33 || n2<33 || n3<33 || n4<33 || n5<33)
                    {
                      print("Student is Fail");
                    }
                  else
                    {
                      print("Student is Pass");
                    }
                },
                child: Text("Pass/Fail",
                )
            ),

          ],
        )

    );
  }
}

 */