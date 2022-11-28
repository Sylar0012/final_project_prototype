import 'package:beamin_prototype/theme.dart';
import 'package:beamin_prototype/view/pages/store_detail/store_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreList extends StatelessWidget {
  final String img;
  final String storeName;
  const StoreList({required this.img, required this.storeName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => StoreDetail()));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/store_image/${img}.jpg",
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${storeName}"),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star_fill, size: 16),
                    Icon(CupertinoIcons.star, size: 16),
                  ],
                ),
                SizedBox(height: 8),
                Text("배달 예상 시간 : 38 ~ 42분"),
                SizedBox(height: 8),
                Text("${storeName} 주운나 마싯어연 ^^"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
