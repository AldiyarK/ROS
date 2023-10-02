import 'package:flutter/material.dart';

void main() {
  runApp(ScreenWidget());
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Panda',
          style: TextStyle(fontSize: 40, color: Colors.white70),
        ),
        height: 200,
        width: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.network(
                        'https://images.wallpaperscraft.com/image/single/icebergs_ice_relief_1056391_1280x720.jpg')
                    .image,
                fit: BoxFit.cover),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(-5, 5),
                  blurRadius: 5,
                  spreadRadius: 5)
            ]),
      ),
    );
  }
}
