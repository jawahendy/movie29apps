import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie29/Provider/providerall.dart';
import 'package:movie29/screen/detailscreen.dart';
import 'package:provider/provider.dart';

class TvOnAirCard extends StatelessWidget {
  const TvOnAirCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dataprovider = Provider.of<HttpProvider>(context, listen: false);
    return SizedBox(
      height: 300,
      child: Consumer<HttpProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.allgetdataPopulerTvOnAir,
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
                            image: (value.alldataTVOnAir[index]
                                        ['backdrop_path'] ==
                                    null)
                                ? value.alldataTVOnAir[index]['poster_path']
                                : value.alldataTVOnAir[index]['backdrop_path'],
                            detail: value.alldataTVOnAir[index]['overview'],
                            text: value.alldataTVOnAir[index]['name'],
                            rating: value.alldataTVOnAir[index]['vote_average']
                                .toString(),
                            voting: value.alldataTVOnAir[index]['popularity']
                                .toString(),
                            popularity: value.alldataTVOnAir[index]
                                    ['vote_count']
                                .toString(),
                            launchdate: value.alldataTVOnAir[index]
                                ['first_air_date'],
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
                                value.alldataTVOnAir[index]['poster_path'],
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
                        value.alldataTVOnAir[index]['name'],
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

class TvPopularCard extends StatelessWidget {
  const TvPopularCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Consumer<HttpProvider>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.allgetdataPopularTv,
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
                              image: (value.alldataPopularTv[index]
                                          ['backdrop_path'] ==
                                      null)
                                  ? value.alldataPopularTv[index]['poster_path']
                                  : value.alldataPopularTv[index]
                                      ['backdrop_path'],
                              detail: value.alldataPopularTv[index]['overview'],
                              text: value.alldataPopularTv[index]['name'],
                              rating: value.alldataPopularTv[index]
                                      ['vote_average']
                                  .toString(),
                              voting: value.alldataPopularTv[index]
                                      ['popularity']
                                  .toString(),
                              popularity: value.alldataPopularTv[index]
                                      ['vote_count']
                                  .toString(),
                              launchdate: value.alldataPopularTv[index]
                                  ['first_air_date'],
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
                                value.alldataPopularTv[index]['poster_path'],
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
                        value.alldataPopularTv[index]['name'],
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
