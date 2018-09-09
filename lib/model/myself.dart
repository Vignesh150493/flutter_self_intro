import 'package:meta/meta.dart';

class Company {
  Company(
      {@required this.greeting,
      @required this.name,
      @required this.location,
      @required this.courses,
      @required this.about,
      @required this.backDropPhoto});

  final String greeting;
  final String name;
  final String location;
  final String backDropPhoto;
  final String about;
  final List<Channel> courses;
}

class Channel {
  Channel({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
