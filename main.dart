import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  double operand1 = 0.0;
  double operand2 = 0.0;
  String operation;
  String calculation = "0";

  void onPressOfButton(String text,double num1) {
    //Por hacer

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(calculation, style: TextStyle(fontSize: 30)),
                )),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Componente boton
                  CalcButton(
                        txt: "1",
                        callback: () { 
                          onPressOfButton("1",1);
                        }),
                  
                  //Componente boton
                 CalcButton(
                        txt: "2",
                        callback: () { 
                          onPressOfButton("2",2);
                        }),

                  //Componente boton
                 CalcButton(
                        txt: "3",
                        callback: () { 
                          onPressOfButton("3",3);
                        }),

                  //Componente boton
                     CalcButton(
                        txt: "4",
                        callback: () { 
                          onPressOfButton("4",4);
                        }),

                  
                ]),
            
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Componente boton
                  CalcButton(
                        txt: "5",
                        callback: () { 
                          onPressOfButton("5",5);
                        }),
                  
                  //Componente boton
                 CalcButton(
                        txt: "6",
                        callback: () { 
                          onPressOfButton("6",6);
                        }),

                  //Componente boton
                 CalcButton(
                        txt: "7",
                        callback: () { 
                          onPressOfButton("7",7);
                        }),

                  //Componente boton
                     CalcButton(
                        txt: "8",
                        callback: () { 
                          onPressOfButton("8",8);
                        }),



                ]),
            
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Componente boton
                  CalcButton(
                        txt: "9",
                        callback: () { 
                          onPressOfButton("9",9);
                        }),
                  
                  //Componente boton
                 CalcButton(
                        txt: "0",
                        callback: () { 
                          onPressOfButton("0",0);
                        }),

                  
                  //Componente boton c
                     CalcButton(
                        txt: "C",
                        callback: () { 
                          onPressOfButton("C",11);
                        }),

                  //Componente boton %
                     CalcButton(
                        txt: "%",
                        callback: () { 
                          onPressOfButton("%",12);
                        }),


                ]),
            
            
 Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Componente boton
                  CalcButton(
                        txt: "+",
                        callback: () { 
                          onPressOfButton("+",13);
                        }),
                  
                  //Componente boton
                 CalcButton(
                        txt: "-",
                        callback: () { 
                          onPressOfButton("-",14);
                        }),

                  
                  //Componente boton c
                     CalcButton(
                        txt: "*",
                        callback: () { 
                          onPressOfButton("*",15);
                        }),

                  //Componente boton %
                     CalcButton(
                        txt: "=",
                        callback: () { 
                          onPressOfButton("=",16);
                        }),


                ]),
          ],
        ),
      ),
    );
  }
}


class CalcButton extends StatelessWidget {
  final Function callback;
  final String txt;

  const CalcButton({Key key, @required this.txt, @required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 160,
        padding: EdgeInsets.all(2.0),
        child: ElevatedButton(
          child: Text(
            this.txt,
            style: TextStyle(color: Colors.yellow, fontSize: 80),
          )
          , style: ElevatedButton.styleFrom(
             primary: Colors.green,
             onPrimary: Colors.black,
             shadowColor: Colors.red,
             elevation: 15,
          ),
          
          onPressed: this.callback,
        ));
  }
}
