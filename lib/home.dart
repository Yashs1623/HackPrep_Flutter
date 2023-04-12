// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Hackprep'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeCard(
                    pic: 'assets/layout.svg',
                    title: 'Layout',
                    route: '/layout'),
                HomeCard(
                  pic: 'assets/navigation.svg',
                  title: 'Navigation',
                  route: '/navigation',
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     color: Colors.red,
                //     height: 200,
                //     width: 200,
                //     child: Column(
                //       children: [
                //         SvgPicture.asset('assets/layout.svg', height: 100),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeCard(
                  pic: 'assets/input.svg',
                  title: 'Input widgets',
                  route: '/input',
                ),
                HomeCard(
                  pic: 'assets/widget.svg',
                  title: 'Other widgets',
                  route: '/basic',
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     color: Colors.yellow,
                //     height: 200,
                //     width: 200,
                //     child: Column(
                //       children: [
                //         SvgPicture.asset('assets/input.svg', height: 100),
                //       ],
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     color: Colors.blue,
                //     height: 200,
                //     width: 200,
                //     child: Column(
                //       children: [
                //         SvgPicture.asset('assets/widget.svg', height: 100),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class HomeCard extends StatefulWidget {
  final String pic;
  final String title;
  final String route;
  const HomeCard(
      {Key? key, required this.pic, required this.title, required this.route})
      : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(widget.route);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(widget.pic, height: 100),
              const SizedBox(height: 30),
              Text(widget.title)
            ],
          ),
        ),
      ),
    );
  }
}
