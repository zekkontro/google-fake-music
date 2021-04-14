class Playlist {
  final String name;
  final String image;
  Playlist({this.name, this.image});

  factory Playlist.fromMap(Map<String, dynamic> data) {
    return Playlist(
        name: data['name'],
        image: "assets/playlists/" + data['image'] + ".png");
  }
}
