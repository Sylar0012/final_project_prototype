import 'package:beamin_prototype/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBeamin extends StatelessWidget {
  const MyBeamin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _buildUserTitle(),
        ],
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
                IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.right_chevron)),
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

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("My 배민", style: textTheme().headline1),
      centerTitle: true,
      elevation: 1.0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.left_chevron,
          size: 35,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.home,
            size: 35,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 16,
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}
