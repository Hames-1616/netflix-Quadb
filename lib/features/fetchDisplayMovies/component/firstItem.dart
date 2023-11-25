import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/color.dart';
import 'package:netflixassignment/core/dimensions.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/imageasset.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/netflixmovieicon.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/model/movieModel.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/view/detail.dart';

class Firstitem extends ConsumerStatefulWidget {
  final Movie data;
  const Firstitem({super.key, required this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FirstitemState();
}

class _FirstitemState extends ConsumerState<Firstitem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(25),
            height: MediaQuery.of(context).size.height / hei(context, 350),
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailscreen(data: widget.data,)));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 54, right: 45),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                        height: MediaQuery.of(context).size.height /
                            hei(context, 400),
                        width: MediaQuery.of(context).size.width /
                            wid(context, 400),
                        imageUrl: widget.data.show!.image!.original ?? "",
                        placeholder: (context, url) => const img()),
                    const Nicon(),
                    Positioned(
                        bottom: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height /
                                  hei(context, 40),
                              width: MediaQuery.of(context).size.width /
                                  wid(context, 110),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: InkWell(
                                onTap: () {},
                                focusColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.play_arrow),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Play Now")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(10),
                              height: MediaQuery.of(context).size.height /
                                  hei(context, 40),
                              width: MediaQuery.of(context).size.width /
                                  wid(context, 110),
                              decoration: BoxDecoration(
                                  color: primaryAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: InkWell(
                                onTap: () {},
                                focusColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "My List",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Latest Movies",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ))
      ],
    );
  }
}
