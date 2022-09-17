import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../viewitem/banner_view.dart';

class BannerSectionView extends StatefulWidget {
  const BannerSectionView({Key? key}) : super(key: key);
  @override
  State<BannerSectionView> createState() => _BannerSectionViewState();
}

class _BannerSectionViewState extends State<BannerSectionView> {
  double _position = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: PageView(
              onPageChanged: (page) {
                setState((){
                  _position = page.toDouble();
                });
              },
              children: const [
                BannerView(),
                BannerView(),
              ],
            )
        ),
        DotsIndicator(
          dotsCount: 2,
          position: _position,
          decorator: const DotsDecorator(
            color: Colors.red, // Inactive color
            activeColor: Colors.amber,
          ),
        )
      ],
    );
  }
}
