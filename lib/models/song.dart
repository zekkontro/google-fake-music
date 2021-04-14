class Song {
  final String name;
  final String author;
  final String image;

  Song({this.name, this.author, this.image});

  factory Song.fromMap(Map<String, dynamic> data) {
    return Song(
        name: data['name'],
        author: data['author'],
        image: "assets/songs/" + data['image'] + ".png");
  }
}
