import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie29/Provider/providerall.dart';
import 'package:provider/provider.dart';

class Detailscrn extends StatelessWidget {
  const Detailscrn({
    Key? key,
    required this.text,
    required this.image,
    required this.detail,
    required this.rating,
    required this.popularity,
    required this.voting,
    required this.launchdate,
  }) : super(key: key);
  final String text;
  final String image;
  final String detail;
  final String rating;
  final String popularity;
  final String voting;
  final String launchdate;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HttpProvider(),
      child: Scaffold(
        body: Builder(
          builder: (BuildContext newContext) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Consumer<HttpProvider>(
                  builder: (context, value, child) => Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: NeumorphicButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.white,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: 250,
                        color: Colors.transparent,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.network(
                                'https://image.tmdb.org/t/p/w500' + image,
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              margin: const EdgeInsets.all(12),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            text,
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            detail,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            height: 145,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                NeumorphicButton(
                                  onPressed: () {},
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.convex,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.stars,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            "Rating",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            rating,
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                  height: 10,
                                ),
                                NeumorphicButton(
                                  onPressed: () {},
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.convex,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.people_alt,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            "Popularity",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            popularity,
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                  height: 10,
                                ),
                                NeumorphicButton(
                                  onPressed: () {},
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.convex,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.how_to_vote_rounded,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            "Voting",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            voting,
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                  height: 10,
                                ),
                                NeumorphicButton(
                                  onPressed: () {},
                                  style: NeumorphicStyle(
                                    shape: NeumorphicShape.convex,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                  ),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.date_range_rounded,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            "Launching",
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Flexible(
                                          child: Text(
                                            launchdate,
                                            textAlign: TextAlign.justify,
                                            style: GoogleFonts.openSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
