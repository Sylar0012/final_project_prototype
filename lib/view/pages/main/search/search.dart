import 'package:beamin_prototype/theme.dart';
import 'package:beamin_prototype/view/pages/main/components/store_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _filterList(),
          Container(color: Colors.grey[200], height: 2),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StoreList(img: "치킨집", storeName: "네네치킨"),
                  StoreList(img: "피자집", storeName: "도미노피자"),
                  StoreList(img: "보쌈집", storeName: "원할머니보쌈"),
                  StoreList(img: "치킨집", storeName: "네네치킨"),
                  StoreList(img: "피자집", storeName: "도미노피자"),
                  StoreList(img: "보쌈집", storeName: "원할머니보쌈"),
                  StoreList(img: "치킨집", storeName: "네네치킨"),
                  StoreList(img: "피자집", storeName: "도미노피자"),
                  StoreList(img: "보쌈집", storeName: "원할머니보쌈"),
                  StoreList(img: "치킨집", storeName: "네네치킨"),
                  StoreList(img: "피자집", storeName: "도미노피자"),
                  StoreList(img: "보쌈집", storeName: "원할머니보쌈"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 1.0,
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        width: double.infinity,
        height: 40,
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Row(
            children: [
              SizedBox(width: 8),
              Icon(
                size: 24,
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              Text("검색", style: textTheme().bodyText2),
            ],
          ),
        ),
      ),
    );
  }

  Container _filterList() {
    return Container(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '리뷰개수순',
                    style: textTheme().bodyText1,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '별점순',
                    style: textTheme().bodyText1,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '배달비무료',
                    style: textTheme().bodyText1,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '주문횟수순',
                    style: textTheme().bodyText1,
                  ),
                ),
              ),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}
