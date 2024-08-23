import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:magang_2/movie_response.dart';

class MovieResponseApi {
  Future<MovieResponse?> getAllMovies() async{
    var client = http.Client();
    var uri = Uri.parse('https://api.themoviedb.org/3/movie/popular?language=en-US&page=1');
    var response = await client.get(uri);
    if (response.statusCode==200) {
      return MovieResponseFromJson(const Utf8Decoder().convert(response.bodyBytes));
    }
    return null;
  }
}