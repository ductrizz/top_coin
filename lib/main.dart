import 'package:flutter/material.dart';
import 'package:top_coin/pages/favorites_screen.dart';
import 'package:top_coin/pages/search_screen.dart';
import 'package:top_coin/pages/top100_screen.dart';
import 'package:top_coin/pages/top5_screen.dart';

import 'pages/coin_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _indexSelected = 0;
  var _listScreen = [Top100Screen(),Top5Screen(),SearchScreen(),FavoritesScreen()];
  var _listTilteScreen = <String>["Top 100", "Top 5", "Search", "Favorite"];
  void _currentSelected(int indexCurrent){
    setState(() {
      _indexSelected = indexCurrent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_listTilteScreen[_indexSelected]),),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Top 100',),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Top 5',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite',),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        currentIndex: _indexSelected,
        onTap: _currentSelected,
      ),
      body: Center(
        child: _listScreen[_indexSelected],
      ),
    );
  }
}
