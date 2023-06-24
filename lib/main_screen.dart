import 'package:flutter/material.dart';
import 'package:taskapp/widgets/category_card.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // HomeScreen(),
    Text("Daily Work Report"),
    Text("Proficiency"),
    Text("Stock"),
    Text("Totalling"),
    Text("Edit"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .85,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            CategoryCard(
                                title: "作業日報",
                                svgSrc: "assets/icons/task.svg",
                                press: (){ print("作業日報へ遷移"); },
                            ),
                            CategoryCard(
                                title: "熟練度",
                                svgSrc: "assets/icons/study.svg",
                                press: (){ print("熟練度へ遷移"); }
                            ),
                            CategoryCard(
                                title: "在庫",
                                svgSrc: "assets/icons/stock.svg",
                                press: (){ print("在庫へ遷移"); }
                            ),
                            CategoryCard(
                                title: "集計",
                                svgSrc: "assets/icons/total.svg",
                                press: (){ print("集計へ遷移"); }
                            ),
                            CategoryCard(
                                title: "編集",
                                svgSrc: "assets/icons/edit.svg",
                                press: (){ print("編集へ遷移"); }
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

