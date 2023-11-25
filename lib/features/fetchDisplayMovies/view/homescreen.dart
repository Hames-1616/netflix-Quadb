import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/dimensions.dart';
import 'package:netflixassignment/core/loading.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/firstItem.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/itemCard.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/topchips.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/controller/fetchMovieController.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/view/searchShow.dart';

class homeScreen extends ConsumerStatefulWidget {
  const homeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _homeScreenState();
}

class _homeScreenState extends ConsumerState<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/appbar.png"),
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchShow()));
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Row(
              children: [
                Topschips(text: "TvShows"),
                Topschips(text: "Movies"),
                Topschips(text: "Categories")
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / hei(context, 450),
              child: ref.watch(getallshowsProvider).when(
                  data: (data) {
                    return Firstitem(data: data[0]);
                  },
                  error: (e, st) {
                    return const Icon(Icons.error);
                  },
                  loading: () => const Loading()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height / hei(context, 200),
              child: ref.watch(getallshowsProvider).when(
                  data: (data) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length - 1,
                        itemBuilder: (context, index) {
                          return Itemcard(data: data[index + 1]);
                        });
                  },
                  error: (e, st) {
                    return const Icon(Icons.error);
                  },
                  loading: () => const Loading()),
            )
          ],
        ),
      ),
    );
  }
}
