import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:movie29/Provider/providerall.dart';
import 'package:movie29/widget/widgetMovie.dart';
import 'package:provider/provider.dart';

class Moviescreen extends StatefulWidget {
  const Moviescreen({Key? key}) : super(key: key);

  @override
  State<Moviescreen> createState() => _MoviescreenState();
}

class _MoviescreenState extends State<Moviescreen> {
  @override
  void initState() {
    super.initState();
    final dataprovider = Provider.of<HttpProvider>(context, listen: false);
    dataprovider.getNowPlaying();
    dataprovider.getUpcoming();
    dataprovider.getPopular();
    dataprovider.getTvOnAir();
    dataprovider.getTvPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 10),
            const title(titlelis: "Now Playing"),
            const Nowplayingcard(),
            const title(titlelis: "UpComing Movie"),
            const Upcomingcard(),
            const title(titlelis: "Popular Movie"),
            const Popularcard(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
