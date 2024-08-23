import 'package:magang_2/movie_response_api.dart';
import 'package:magang_2/movie_response.dart';

class MovieResponseService {
  final _api = MovieResponseApi();
    Future <MovieResponse?> getAllMovies() async {
      return _api.getAllMovies();
    }
}
