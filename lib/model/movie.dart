class Movie {
  String title;
  String overview;
  String posterPath;

  Movie({this.title, this.overview, this.posterPath});

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      title: json["title"] as String,
      overview:  json["overview"] as String,
      posterPath: json["overview"] as String
    );
  }
}
