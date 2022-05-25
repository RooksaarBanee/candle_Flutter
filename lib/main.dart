import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Importation de packages qui servent à utiliser Google fonts et Flutter avec le langage Dart.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
// Création de class et de widgets qui ne nécessite pas d'être mutable et permet de créer une arborescence.

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
// Création de la class MyHomePage qui prend la class stateFulWidget afin de permettre une mutabilité de celui-ci
// (et qui permet d'utilisé setState contrairement à stateLessWidget).

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
       _counter++;
      if (_counter > 100) {
        _counter = 100;
      }
    });
  } 
// Class integar qui permet d'étendre un nombre.
// Création d'une fonction _incrementCounter et d'une fonction setState
// pour retourner une variable _counter++ afin d'incrémenter +1, à celle-ci.
// Si _counter est supérieur à 100 alors il sera égal 100.

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) {
        _counter = 0;
      }
    });
  }
// Création d'une fonction _decrementCounter et d'une fonction setState
// pour retourner une variable _counter-- afin de décrémenter -1, à celle-ci.
// Si _counter est inférieur à 0 alors il sera égal 0.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Candles',
            style: GoogleFonts.yesevaOne(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
// Création d'une AppBar (en haut de l'écran) pour y insérer un titre et une icône.
        body: Center(
          child: Container(
            width: 700,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 255, 225, 181),
            ),
// body : Center = pour centrer le container au milieu de la page.
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 250,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), 
                      bottomLeft: Radius.circular(30)
                    ),
                    image: DecorationImage(
                      image: AssetImage('../assets/bougie.jpg'),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
// Ligne (row) qui permet de contenir une image ainsi que ses caractéristiques.
                Column( 
// Colonne (column) qui contient plusieurs conteneurs (container) pour créer la partie à droite de l'écran.
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 10),
                      child: Text(
                        'Orange scented candle',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
// Conteneur pour le titre 'Orange scented candle'.
                    Container(
                      width: 250,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elim, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
// Conteneur pour le sous-titre 'Lorem ipsum...'.
                    Container(
                      width: 250,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Text(
                        '€25.00',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
// Conteneur pour le texte 'Lorem ipsum...'.
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 255, 252, 239)
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _decrementCounter();
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Color.fromARGB(255, 220, 137, 11),
                              size: 20,
                            )
                          ),
// Ligne dans laquelle se trouve une class enfant InkWell et qui permet grâce à la fonction _decrementCounter() de décrémenter -1 lorque le bouton icône '-' est actionné.
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 255, 252, 239)
                              ),
                            child: Text(
                              "$_counter",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20
                              ),
                            ),
                          ),
// Conteneur qui possède un widget enfant Text qui permet d'afficher la classe int '_counter' et de modifier celle-ci lorsque les icônes +/- sont actionnés
// et afficher les changement de nombre.
                          InkWell(
                            onTap: () {
                              _incrementCounter();
                            },
                            child: const Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 220, 137, 11),
                              size: 20,
                            )
                          ),
// Ligne dans laquelle se trouve une class enfant InkWell et qui permet grâce à la fonction _incrementCounter() d'incrémenter +1 lorque le bouton icône '+' est actionné.
                        ],
                      ),
                    ),
                    Container(
// Conteneur qui contient une ligne ainsi que des enfants 'ElevatedButton' pour ajouter de la dimension à la mises en page, 
// 'ButtonStyle' pour stylisé le bouton et 
// 'Text' pour ajouté un texte à l'intérieur du bouton
                      height: 100,
                      margin: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 220, 137, 11)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            child: Text(
                              'Add to cart',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  ],
                )
              ],
            ),
          )
        )
    );
  }
}