import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
var listNama = [
'Fatin', 
'Fatin Nurmalaningrum', 
'Ihsan', 
'Rafi',
'Nurul', 
'Huda', 
];
var listWarna = [
Colors.blue,
Colors.purple, 
Colors.teal, 
Colors.lime,
Colors.indigo, 
Colors.deepPurple, 
Colors.cyan,
Colors.pink, 
Colors.yellow
];
int index = 0;

void incrementIndex () {
setState(
  () {
index++;
}
);
}

@override
Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.cyan[50],
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 6,
          offset: Offset.fromDirection(30.0, 35.0),
          blurRadius: 5,
          )
          ],
          border: Border.all(
            color: Colors.pink
          ),
          ),
          child: Column(
            children: [
              Text(
                'Apa kabar',
                textDirection: TextDirection.ltr,
                ),
                Text(
                  listNama[index % listNama.length],
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: listWarna[index % listWarna.length]),
                    )
                    ],
                    ));
  }

}

class TeksUtama extends StatefulWidget {
final state = StateTeksUtama();

@override
State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  
  runApp(
    MaterialApp(
      title: 'TugasJoobshet7',
      home: Scaffold(
        appBar: AppBar(
        title: Text('Hallo Dunia'),
      ),
      body: Center(
        child: Column(
          children: [teksUtama],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        child: Icon(Icons.refresh),
        onPressed: teksUtama.state.incrementIndex,
      ),
    ),
  ),
  );
}