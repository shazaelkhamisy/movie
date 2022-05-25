import 'package:dio/dio.dart';
import 'package:movie/movie_db/model.dart';

class MovieDBController {
  MoviesData? model;

  Future<void> getMovies() async{
    var response = await Dio().get("https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=9");
    // print(response.data);
    model = MoviesData.fromJson(response.data);
    // print(model!.movies.length);
  }
}
