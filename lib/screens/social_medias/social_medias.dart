import 'package:flutter/material.dart';
import 'package:flutter_animation/datas/social_medias.dart';

class SocialMedias extends StatefulWidget {
  SocialMedias({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SocialMediasState createState() => _SocialMediasState();
}

class _SocialMediasState extends State<SocialMedias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: socialMedias.map((socialMedia) {
            return Card(
              elevation: 5,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "social_media_details",
                      arguments: socialMedia);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Hero(
                              tag: socialMedia.name,
                              child: Image.asset(socialMedia.logo)),
                        ),
                      ),
                      Text(socialMedia.name)
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
