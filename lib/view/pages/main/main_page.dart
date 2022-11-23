import 'package:beamin_prototype/theme.dart';
import 'package:beamin_prototype/view/pages/main/home/home_page.dart';
import 'package:beamin_prototype/view/pages/main/my_beamin/my_beamin.dart';
import 'package:beamin_prototype/view/pages/main/order_list/order_list.dart';
import 'package:beamin_prototype/view/pages/main/pavorite_store/pavorite_store.dart';
import 'package:beamin_prototype/view/pages/main/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(label: "검색", icon: Icon(CupertinoIcons.search)),
          BottomNavigationBarItem(label: "찜한가게", icon: Icon(CupertinoIcons.heart)),
          BottomNavigationBarItem(label: "주문내역", icon: Icon(CupertinoIcons.doc_plaintext)),
          BottomNavigationBarItem(label: "My배민", icon: Icon(CupertinoIcons.person_circle)),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(),
          Search(),
          PavoriteStore(),
          OrderList(),
          MyBeamin(),
        ],
      ),
    );
  }
}
