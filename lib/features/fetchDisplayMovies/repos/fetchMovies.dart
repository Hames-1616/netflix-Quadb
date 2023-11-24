import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:netflixassignment/core/providers.dart';
import 'package:netflixassignment/features/fetchDisplayMovies/model/movieModel.dart';

final fetchMovieRepoProvider =
    Provider((ref) => fetchMovieRepo(cdio: ref.watch(dioProvider)));

class fetchMovieRepo {
  final Dio dio;

  fetchMovieRepo({required Dio cdio}) : dio = cdio;

  Future<List<Movie>> getallshows() async {
    final response = await dio.get("https://api.tvmaze.com/search/shows?q=all");
    final s = (response.data as List)
        .map((e) => Movie.fromJson(jsonEncode(e)))
        .toList();
    return s;
  }
}
