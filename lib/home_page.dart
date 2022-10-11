import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<String> coll_1 = [
  'assets/coll_1.png',
  'assets/coll_1.2.png',
  'assets/coll_1.3.png',
  'assets/coll_1.4.png',
];
List<String> coll_2 = [
  'assets/coll_2.1.png',
  'assets/coll_2.2.png',
  'assets/coll_2.3.png',
  'assets/coll_2.4.png',
];
List<String> coll_3 = [
  'assets/coll_3.1.png',
  'assets/coll_3.2.png',
  'assets/coll_3.3.png',
  'assets/coll_3.4.png',
  'assets/coll_3.5.png',
];
List<String> coll_4 = [
  'assets/coll_4.1.png',
  'assets/coll_4.2.png',
  'assets/coll_4.3.png',
  'assets/coll_4.4.png',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              CollList(collection: coll_1, index: 1),
              CollList(collection: coll_2, index: 2),
              CollList(collection: coll_3, index: 3),
              CollList(collection: coll_4, index: 4),
            ],
          ),
          Positioned(
              top: 0,
              child: Opacity(
                opacity: 1,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    gradient: LinearGradient(
                        transform: GradientRotation(-math.pi / 2),
                        colors: [
                          Colors.white.withOpacity(0.00002),
                          Colors.white.withOpacity(0.0002),
                          Colors.white.withOpacity(0.002),
                          Colors.white.withOpacity(0.02),
                          Colors.white.withOpacity(0.12),
                          Colors.white.withOpacity(0.88),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                        ]),
                  ),
                ),
              )),
          Positioned(
              bottom: 220,
              child: Opacity(
                opacity: 1,
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    gradient: LinearGradient(
                        transform: GradientRotation(math.pi / 2),
                        colors: [
                          const Color(0xff00FFFFFF),
                          Colors.white.withOpacity(0.00002),
                          Colors.white.withOpacity(0.0002),
                          Colors.white.withOpacity(0.42),
                          Colors.white.withOpacity(0.82),
                          Colors.white.withOpacity(0.98),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                          Colors.white.withOpacity(1.0),
                        ]),
                  ),
                ),
              )),
          Positioned.fill(
            bottom: -550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Discover NFT\nCollections',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'AtypDisplay',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff262A2F),
                        height: 1.1,
                        fontSize: 37),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Explore the top collection of NFTs and \nbuy and sell your NFTs as well.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(.35),
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 84,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Color(0xff262A2F),
                      borderRadius: BorderRadius.circular(60)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Spacer(),
                      const Text(
                        'Start experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, bottom: 5, right: 5),
                          child: Container(
                            height: 74,
                            width: 81,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(54)),
                            child: Center(
                                child: Lottie.asset(
                                    'assets/11516-swipe-left-arrows.json')),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//PlusJakartaSans
class CollList extends StatelessWidget {
  const CollList({Key? key, required this.index, required this.collection})
      : super(key: key);
  final List<String> collection;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: RotationTransition(
        turns: const AlwaysStoppedAnimation(-8.31 / 360),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 45.85),
          child: SizedBox(
            height: 114.4,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: 114.6,
                    viewportFraction: 0.25,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: index % 2 == 0 ? 5 : 3),
                    autoPlayAnimationDuration:
                        Duration(seconds: index % 2 == 0 ? 9 : 7),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: false,
                    scrollDirection: Axis.horizontal,
                    padEnds: true),
                itemCount: collection.length,
                itemBuilder: (context, index, _) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(14.3),
                        child: Image.asset(collection[index])),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
