import 'package:flutter/material.dart';
import 'package:movie29/widget/WidgetTv.dart';
import 'package:movie29/widget/widgetMovie.dart';

class TVScreen extends StatefulWidget {
  const TVScreen({Key? key}) : super(key: key);

  @override
  State<TVScreen> createState() => _TVScreenState();
}

class _TVScreenState extends State<TVScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 10),
            const title(titlelis: "Tv On Air"),
            const TvOnAirCard(),
            const title(titlelis: "Popular Tv"),
            const TvPopularCard(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
