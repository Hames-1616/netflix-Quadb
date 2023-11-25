import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/dimensions.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/imageasset.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/netflixmovieicon.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/model/movieModel.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/view/detail.dart';

class Itemcard extends ConsumerStatefulWidget {
  final Movie data;
  const Itemcard({super.key, required this.data});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ItemcardState();
}

class _ItemcardState extends ConsumerState<Itemcard> {
  @override
  Widget build(BuildContext context) {
    final s = widget.data.show?.image?.original;
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detailscreen(
                      data: widget.data,
                    )));
      },
      child: Container(
        color: Colors.grey.shade300,
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / hei(context, 180),
        child: Stack(children: [
          s == null
              ? const img2()
              : CachedNetworkImage(
                  imageUrl: s,
                  placeholder: (context, url) => const img2(),
                  errorWidget: (context, url, error) => const img2(),
                ),
          const Nicon()
        ]),
      ),
    );
  }
}
