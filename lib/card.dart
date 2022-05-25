/*

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_spinbox/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candles',
      theme: ThemeData(
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Candles',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
            centerTitle: false,
            elevation: 2,
            titleTextStyle: GoogleFonts.yesevaOne(),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Card(
          elevation: 50,
          shadowColor: Colors.black,
          margin: EdgeInsets.all(50),
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(218, 252, 197, 134),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage (
                  image:AssetImage('../assets/bougie.jpg'),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                ),
              ),
          child: SizedBox(
            width: 500,
            height: 1000,
            child: Padding(
              padding: const EdgeInsets.only(left: 150, top: 40),
              child: Column(
                children: [//CircleAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Orange scented candle',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ), //Textstyle
                  ), //Text
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. ',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(131, 118, 118, 118),
                    ), //Textstyle
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '25.00',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ), //Text
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: SpinBox(
                      min: 1,
                      max: 100,
                      onChanged: (value) => print(value),
                      textStyle: GoogleFonts.poppins(),
                      decoration: InputDecoration(
                        hoverColor: Color.fromARGB(255, 255, 255, 226),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),  //SizedBox
                    SizedBox(
                      width: 80,
                      child: RaisedButton(
                        onPressed: () => null,
                        color: Color.fromARGB(218, 211, 53, 0),
                        child: Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                        ), //Padding
                      ), //RaisedButton
                    ) //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ), //Card
        ), //Center
      ),
    );
  }
}


















class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
    final _suggestions = <WordPair>[];
    final _biggerFont= const TextStyle(fontSize: 18);

    
    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder : (context, i){
          if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      },
    );
  }
}



class MyCard extends StatefulWidget {
  const MyCard({ Key : })
}
*/