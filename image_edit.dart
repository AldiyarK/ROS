import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Import Images'),
          ),
          body: ImageWidget()),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/kapshagay.png';
    final String assetNameSvg = 'assets/subscribe.svg';
    final String assetNameUrl =
        'https://seeklogo.com/images/S/skeletor-logo-7A7E50CC0F-seeklogo.com.png';
    SvgPicture imageFromAssetSvg =
        SvgPicture.asset(assetNameSvg, fit: BoxFit.cover);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromAssetSvg,
    );
  }
}
