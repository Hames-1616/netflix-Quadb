import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/dimensions.dart';
import 'package:netflixassignment/core/loading.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/itemCard.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/component/search.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/controller/fetchMovieController.dart';

class SearchShow extends ConsumerStatefulWidget {
  const SearchShow({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchShowState();
}

class _SearchShowState extends ConsumerState<SearchShow> {
  final con = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SearchItem(onChanged: (value) {
              setState(() {
                
              });
            }, con: con),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height/hei(context, 200),
            width: MediaQuery.of(context).size.width,
            child: con.text.isEmpty
                ? Container()
                : ref.watch(searchShowProvider(con.text)).when(
                    data: (data) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Itemcard(data: data[index]);
                          });
                    },
                    error: (e, st) {
                      return const Icon(Icons.error);
                    },
                    loading: () => const Loading()),
          ),
        ],
      ),
    );
  }
}
