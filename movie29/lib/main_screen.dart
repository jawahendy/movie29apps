import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie29/Provider/providerall.dart';
import 'package:movie29/screen/account.dart';
import 'package:movie29/screen/movie.dart';
import 'package:movie29/screen/tv.dart';
import 'package:provider/provider.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int selectedIndex = 0;
  final screen = [const Moviescreen(), const TVScreen(), const AccountScreen()];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HttpProvider(),
      child: Scaffold(
        extendBody: true, // for background extend ke back button curved
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.white54,
          height: 50,
          index: selectedIndex,
          items: const [
            Icon(
              Icons.movie,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.tv,
              size: 30,
              color: Colors.black,
            ),
            Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.black,
            ),
          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          animationDuration: const Duration(milliseconds: 500),
        ),
        body: Builder(builder: (BuildContext newContext) {
          return screen[selectedIndex];
        }),
      ),
    );
  }
}
