import 'dart:io';

import 'package:beamin_prototype/theme.dart';
import 'package:beamin_prototype/view/pages/main/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBeamin extends StatelessWidget {
  const MyBeamin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildUserTitle(),
          Row(
            children: [
              _buildMenu(CupertinoIcons.doc_plaintext, "주문 내역"),
              VerticalDivider(thickness: 1, color: Colors.blue),
              _buildMenu(CupertinoIcons.chat_bubble_2, "리뷰 관리"),
              _buildMenu(CupertinoIcons.heart, "찜한 가게"),
            ],
          ),
          Divider(
            height: 10,
            thickness: 10,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }

  Widget _buildMenu(CupertinoIcons, String msg) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Container(
          height: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons,
                size: 26,
                color: Colors.grey[500],
              ),
              Text(
                "${msg}",
                style: textTheme().bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserTitle() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 8, left: 16),
          child: Container(
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/store_image/피자집.jpg",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(alignment: Alignment.center, child: Text("ssar님 반갑습니다!", style: textTheme().headline1)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.right_chevron,
                      size: 28,
                    )),
              ],
            ),
          ),
        ),
        Divider(
          height: 10,
          thickness: 10,
          color: Colors.grey[200],
        ),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("My 배민", style: textTheme().headline1),
      centerTitle: true,
      elevation: 1.0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.left_chevron,
          size: 28,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(
            CupertinoIcons.home,
            size: 28,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}
