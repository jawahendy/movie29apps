import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie29/Provider/providerall.dart';
import 'package:movie29/screen/detailscreen.dart';
import 'package:provider/provider.dart';

class Nowplayingcard extends StatelessWidget {
  const Nowplayingcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dataprovider = Provider.of<HttpProvider>(context, listen: false);
    return SizedBox(
      height: 300,
      child: Consumer<HttpProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.allgetdata,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailscrn(
                            image:
                                (value.alldata[index]['backdrop_path'] == null)
                                    ? value.alldata[index]['poster_path']
                                    : value.alldata[index]['backdrop_path'],
                            detail: value.alldata[index]['overview'],
                            text: value.alldata[index]['title'],
                            rating:
                                value.alldata[index]['vote_average'].toString(),
                            voting:
                                value.alldata[index]['popularity'].toString(),
                            popularity:
                                value.alldata[index]['vote_count'].toString(),
                            launchdate: value.alldata[index]['release_date'],
                          ),
                        ));
                  },
                  child: Container(
                    height: 270,
                    width: 170,
                    color: Colors.transparent,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500' +
                                value.alldata[index]['poster_path'],
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
                ),
                Flexible(
                  child: SizedBox(
                    width: 140,
                    child: Center(
                      child: Text(
                        value.alldata[index]['original_title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Upcomingcard extends StatelessWidget {
  const Upcomingcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Consumer<HttpProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.allgetdataUpcoming,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 270,
                  width: 170,
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailscrn(
                              image: (value.alldataUpcoming[index]
                                          ['backdrop_path'] ==
                                      null)
                                  ? value.alldataUpcoming[index]['poster_path']
                                  : value.alldataUpcoming[index]
                                      ['backdrop_path'],
                              detail: value.alldataUpcoming[index]['overview'],
                              text: value.alldataUpcoming[index]['title'],
                              rating: value.alldataUpcoming[index]
                                      ['vote_average']
                                  .toString(),
                              voting: value.alldataUpcoming[index]['popularity']
                                  .toString(),
                              popularity: value.alldataUpcoming[index]
                                      ['vote_count']
                                  .toString(),
                              launchdate: value.alldataUpcoming[index]
                                  ['release_date'],
                            ),
                          ));
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500' +
                                value.alldataUpcoming[index]['poster_path'],
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
                ),
                Flexible(
                  child: SizedBox(
                    width: 140,
                    child: Center(
                      child: Text(
                        value.alldataUpcoming[index]['original_title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class Popularcard extends StatelessWidget {
  const Popularcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Consumer<HttpProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.allgetdataPopuler,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 270,
                  width: 170,
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detailscrn(
                              image: (value.alldataPopular[index]
                                          ['backdrop_path'] ==
                                      null)
                                  ? value.alldataPopular[index]['poster_path']
                                  : value.alldataPopular[index]
                                      ['backdrop_path'],
                              detail: value.alldataPopular[index]['overview'],
                              text: value.alldataPopular[index]['title'],
                              rating: value.alldataPopular[index]
                                      ['vote_average']
                                  .toString(),
                              voting: value.alldataPopular[index]['popularity']
                                  .toString(),
                              popularity: value.alldataPopular[index]
                                      ['vote_count']
                                  .toString(),
                              launchdate: value.alldataPopular[index]
                                  ['release_date'],
                            ),
                          ));
                    },
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500' +
                                value.alldataPopular[index]['poster_path'],
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
                ),
                Flexible(
                  child: SizedBox(
                    width: 140,
                    child: Center(
                      child: Text(
                        value.alldataPopular[index]['original_title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key,
    required this.titlelis,
  }) : super(key: key);

  final String titlelis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titlelis,
            style: GoogleFonts.openSans(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
