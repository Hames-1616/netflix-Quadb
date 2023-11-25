import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/model/movieModel.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/repos/fetchMovies.dart';

final searchShowProvider = FutureProvider.family((ref,String name) => ref.read(fetchMovieControllerProvider.notifier).searchShow(name));

final getallshowsProvider = FutureProvider(
    (ref) => ref.watch(fetchMovieControllerProvider.notifier).getallShows());

final fetchMovieControllerProvider = StateNotifierProvider(
    (ref) => fetchMovieController(cfrepo: ref.read(fetchMovieRepoProvider)));

class fetchMovieController extends StateNotifier<bool> {
  final fetchMovieRepo frepo;

  fetchMovieController({required fetchMovieRepo cfrepo})
      : frepo = cfrepo,
        super(false);

  Future<List<Movie>> getallShows() async {
    return await frepo.getallshows();
  }

  Future<List<Movie>> searchShow(String name) async {
    return await frepo.searchShow(name);
  }
}
