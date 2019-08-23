import 'package:flutter/material.dart';
import 'package:flutter_animation/models/social_media.dart';

class SocialMediaDetails extends StatefulWidget {
  SocialMediaDetails({Key key}) : super(key: key);

  @override
  _SocialMediaDetailsState createState() => _SocialMediaDetailsState();
}

class _SocialMediaDetailsState extends State<SocialMediaDetails> {
  @override
  Widget build(BuildContext context) {
    final SocialMedia socialMedia = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(socialMedia.name),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
                tag: socialMedia.name, child: Image.asset(socialMedia.logo)),
          )),
        ],
      ),
    );
  }
}
