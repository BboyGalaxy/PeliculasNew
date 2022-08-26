class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    // ignore: unnecessary_null_comparison
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  late String posterPath;
  late bool adult;
  late String overview;
  late String releaseDate;
  late List<int> genreIds;
  late int id;
  late String originalTitle;
  late String originalLanguage;
  late String title;
  late String backdropPath;
  late double popularity;
  late int voteCount;
  late bool video;
  late double voteAverage;

  Pelicula({
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.posterPath,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.originalLanguage,
    required this.title,
    required this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    posterPath = json['poster_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalTitle = json['original_title'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'] / 1;
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://t3.ftcdn.net/jpg/04/34/72/82/360_F_434728286_OWQQvAFoXZLdGHlObozsolNeuSxhpr84.jpg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
}
