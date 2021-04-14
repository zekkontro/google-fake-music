import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/core/services/song_service.dart';
import 'package:google_musics/models/song.dart';
import 'package:google_musics/core/extension/context_extension.dart';

class TopSongs extends StatelessWidget {
  final Song songs;

  const TopSongs({
    Key key,
    this.songs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SongService songService = SongService();
    return SizedBox(
      height: context.sizeH(0.65),
      child: FutureBuilder(
          future: songService.getSongs(),
          builder: (context, AsyncSnapshot<List<Song>> snapshot) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                Song data = snapshot.data[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.sizeW(0.05),
                      ),
                      Text(
                        (index + 1).toString() + '.',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                            fontSize: 24),
                      ),
                      SizedBox(
                        width: context.sizeW(0.05),
                      ),
                      Image.asset(data.image),
                      SizedBox(
                        width: context.sizeW(0.04),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          ),
                          Text(
                            data.author,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Spacer(),
                      CupertinoButton(
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {}),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
