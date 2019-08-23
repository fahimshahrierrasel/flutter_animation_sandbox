class SocialMedia {
  String name;
  String logo;

  SocialMedia({String name})
      : this.name = name,
        this.logo = "assets/images/socials/" +
            name.replaceAll(" ", "").toLowerCase() +
            ".png";
}
