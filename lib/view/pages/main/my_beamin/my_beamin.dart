import 'package:flutter/material.dart';

class MyBeamin extends StatelessWidget {
  const MyBeamin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dsasd")),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: [
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
                  elevation: MaterialStateProperty.all<double>(2.0),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.green;
                    } else {
                      return Colors.red;
                    }
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
                    } else {
                      return null;
                    }
                  })),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('This is TextButton'))),
              child: Text('Text button', style: TextStyle(color: Colors.white))),
          ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('This is ElevatedButton'))),
              child: Text('ElevatedButton'))
        ]),
      ),
    );
  }
}
