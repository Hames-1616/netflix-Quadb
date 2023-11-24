import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/controller/fetchMovieController.dart';

class homeScreen extends ConsumerStatefulWidget {
  const homeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _homeScreenState();
}

class _homeScreenState extends ConsumerState<homeScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(fetchMovieControllerProvider.notifier).getallShows();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/appbar.png"),
                IconButton(
                    onPressed: () {},
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
        child: Text("data"),
      ),
    );
  }
}
