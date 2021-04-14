import 'package:flutter/material.dart';
import 'package:google_musics/constant/color_constant.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/core/extension/context_extension.dart';
import 'package:google_musics/core/services/playlists.dart';
import 'package:google_musics/core/services/profile_service.dart';
import 'package:google_musics/models/profile.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ColorConstants constants = ColorConstants.instance;
  SvgIcons svgIcons = SvgIcons.instance;
  PlaylistService service = PlaylistService();
  ProfileService profservice = ProfileService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<Profile>(
                future: profservice.getProfileByIndex(2),
                builder: (context, snapshot) {
                  Profile profile = snapshot.data;
                  return Container(
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: context.sizeH(0.5),
                            width: context.sizeW(0.5),
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(profile.profileImage))),
                          ),
                        ],
                      ),
                    ),
                    width: double.infinity,
                    height: context.sizeH(0.25),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(profile.backgroundImage),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(profile.filterColor.withOpacity(0.9), BlendMode.multiply))),
                  );
                }),
            SizedBox(height: context.sizeH(0.05)),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Jack Johnson Radio', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      CircleAvatar(child: Image.asset('assets/profiles/profile-3.png')),
                      SizedBox(width: 5),
                      Text('Jack Johnson', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert, color: Colors.grey[500], size: 30),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hear songs by Jack Johnson, Donavon', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18)),
                  SizedBox(height: context.sizeH(0.01)),
                  Text('Frankenreiter, G. Love, John Mayer, and more.',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: context.sizeH(0.02)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_to_photos_outlined, color: Colors.black),
                    SizedBox(width: context.sizeW(0.02)),
                    Text('Add to Library', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, color: Colors.black),
                    SizedBox(width: context.sizeW(0.02)),
                    Text('Share', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18)),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.sizeH(0.05)),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Other artists on this station', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22)),
            ),
            Container(
              height: context.sizeH(0.40),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return FutureBuilder<Profile>(
                      future: profservice.getProfileByIndex(2),
                      builder: (context, snapshot) {
                        Profile profile = snapshot.data;
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            child: Center(
                              child: Stack(
                                children: [
                                  Container(
                                    height: context.sizeH(0.5),
                                    width: context.sizeW(0.5),
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(profile.profileImage))),
                                  ),
                                ],
                              ),
                            ),
                            width: double.infinity,
                            height: context.sizeH(0.25),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(profile.backgroundImage),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(profile.filterColor.withOpacity(0.9), BlendMode.multiply))),
                          ),
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(vertical: 170),
        child: Container(
          child: Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: SvgIcons.instance.play,
            ),
          ),
        ),
      ),
    );
  }
}
