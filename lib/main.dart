import 'package:flutter/material.dart';

import 'screens/social_medias/social_medias.dart';
import 'screens/social_medias_details/social_media_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => SocialMedias(
              title: "Social Medias",
            ),
        "social_media_details": (context) => SocialMediaDetails(),
      },
    );
  }
}
