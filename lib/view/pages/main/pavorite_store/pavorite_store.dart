import 'package:flutter/material.dart';

class PavoriteStore extends StatelessWidget {
  const PavoriteStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: Center(
        child: Text(
          "찜한 가게fdfsafdsa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
