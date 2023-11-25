import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/dimensions.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/imageasset.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/model/movieModel.dart';

class Detailscreen extends ConsumerStatefulWidget {
  final Movie data;
  const Detailscreen({super.key, required this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailscreenState();
}

class _DetailscreenState extends ConsumerState<Detailscreen> {
  String getgenre(List<String>? a) {
    if (a == null) {
      return "NA";
    }
    String genre = "";
    for (int i = 0; i < a.length; i++) {
      genre += " , ${a[i]}";
    }
    return genre.replaceFirst(",", "");
  }

  String getNw(String? a) {
    if (a == null) {
      return "NA";
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    final image = widget.data.show?.image?.original;
    var Summary = widget.data.show?.summary;
    Summary = Summary!.replaceAll("<p>", "");
    Summary = Summary.replaceAll("</p>", "");
    Summary = Summary.replaceAll("<b>", "");
    Summary = Summary.replaceAll("</b>", "");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / hei(context, 300),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(25),
              child: image==null? const img():
              CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: image,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                widget.data.show?.name ?? "NA",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
              width: MediaQuery.of(context).size.width,
              child: Text(
                Summary,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Text(
                    "Genres : ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    getgenre(widget.data.show?.genres),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Text(
                      "Rating :  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      widget.data.show?.rating?.average.toString().replaceAll("null", "NA") ?? "NA",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Text(
                      "Status :  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      widget.data.show?.status ?? "NA",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Text(
                      "Production :  ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      getNw(widget.data.show?.network?.name),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
