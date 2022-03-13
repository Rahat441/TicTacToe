import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIC TAC TOE',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'No time for titles'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  String display00 =' ';
  String display01 ='';
  String display02 ='  ';
  String display10 ='  ';
  String display11 =' ';
  String display12 ='   ';
  String display20 =' ';
  String display21 ='  ';
  String display22 ='  ';
  double measurements =100.0;
  //
  String data="   ";
  int num = 0;
  int n1=0; int n2=0;int n3=0;int n4=0;int n5=0; int n6=0;int n7=0;int n8=0;int n9=0;
  bool whoseMove=false;

  //FUNC
  void switchSides(){

    if(whoseMove==true){whoseMove = false;
    data = "Circles move";
    }
    else if(whoseMove==false){whoseMove = true;
    data = "Player1's move";}
    if(checkBoard()==1){
      data = 'WIN';
    }
  }

  ///////////////////////////
  void whenPress1(){setState(() {
    if(n1<1){
      if(whoseMove==true){display00= 'X';}
      else if(whoseMove==false){display00='O';}
      n1++;
      switchSides();}
    else{n1=1;}
  }
  );

  }

  void whenPress2(){setState(() {
    if(n2<1){
      if(whoseMove==true){display01= 'X';}
      else if(whoseMove==false){display01='O';}
      n2++;
      switchSides();
    }
    else{n2=2;}
  }
  );
  }

  void whenPress3() {
    setState(() {
      if (n3 < 1) {
        if (whoseMove == true) {
          display02 = 'X';
        }
        else if (whoseMove == false) {
          display02 = 'O';
        }
        n3++;
        switchSides();
      }
      else {
        n3 = 2;
      }
    }
    );
  }


  void whenPress4() {
    setState(() {
      if (n4 < 1) {
        if (whoseMove == true) {
          display10 = 'X';
        }
        else if (whoseMove == false) {
          display10 = 'O';
        }
        n4++;
        switchSides();
      }
      else {
        n4 = 2;
      }
    }
    );
  }


  void whenPress5(){setState(() {
    if(n5<1){
      if(whoseMove==true){display11= 'X';}
      else if(whoseMove==false){display11='O';}
      n5++;
      switchSides();
    }
    else{n5=2;}
  }
  );
  }
  void whenPress6(){setState(() {
    if(n6<1){
      if(whoseMove==true){display12= 'X';}
      else if(whoseMove==false){display12='O';}
      switchSides();
      n6++;
    }
    else{n2=2;}
  }
  );}


  void whenPress7(){setState(() {
    if(n7<1){
      if(whoseMove==true){display20= 'X';}
      else if(whoseMove==false){display20='O';}
      n7++;
      switchSides();
    }
    else{n7=2;}
  }
  );}
  void whenPress8(){setState(() {
    if(n8<1){
      if(whoseMove==true){display21= 'X';}
      else if(whoseMove==false){display21='O';}
      n8++;
      switchSides();
    }
    else{n8=2;}
  }
  );}
  void whenPress9(){setState(() {
    if(n9<1){
      if(whoseMove==true){display22= 'X';}
      else if(whoseMove==false){display22='O';}
      n9++;
      switchSides();
    }
    else{n9=2;}
  }
  );
  }

  int checkBoard(){
    // horizontal
    num = 0;
    if(display00==display01 && display01 == display02){
      num = 1;}
    else if(display10==display11 && display11 == display12){
      num = 1;
    }
    else if(display20==display21 && display21 == display22){
      num = 1;
    }
    //diagonal
    else if(display00==display11 && display11 == display22){
      num = 1;
    }
    else if(display02==display11 && display11 == display20){
      num = 1;
    }
    //vertical
    else if(display00==display10 && display10 == display20){
      num = 1;
    }
    else if(display01==display11 && display11 == display21){
      num = 1;
    }
    else if(display02==display12 && display12 == display22){
      num = 1;
    }
    else{num  = 0;}

    return num;
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Press or touch tiles to make your Move, Let O make first move',textScaleFactor: 2,
              style: TextStyle(fontStyle: FontStyle.italic,
                  color: Colors.deepOrangeAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(data,
                textScaleFactor: 4,
                style: const TextStyle(fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    backgroundColor: Colors.blueGrey
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 100,width: 100,
                  color: Colors.black54,
                  child: MaterialButton(
                    onPressed: () => {
                    },
                    child:  Text(
                      display00,
                      textScaleFactor: 2.0,
                    ),
                  ),
                ),
              ]



            )

          
            //22NDDD ROW


          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

}









//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@##########################
//MYCLASSS











