
import 'package:company_profile/model/myself.dart';

class RepoData {


  static final Company bawp = new Company(
      greeting: 'Hey There!',
      name: 'Vignesh Ramakrishnan',
      about:
      'Im an Android developer at Freshworks Inc, and a wannabe guitarist. Flutter has been grabbing my attention for a while so i thought i\'d give it a shot! '
          ' Feel free to get in touch with me through any of the following channels :).',
      backDropPhoto: 'assets/myself.png',
      courses: <Channel>[
        new Channel(
            title: "I'll follow you back!",
            thumbnail: 'assets/twitter.jpg',
            url:
            'https://twitter.com/terr_lamps'),
        new Channel(
            title: 'Just started! Way to go!',
            thumbnail: 'assets/youtube.png',
            url:
            'https://www.youtube.com/channel/UCLOIDDy-zAqWzAwDI3wJrzQ?view_as=subscriber'),
        new Channel(
            title: 'Friends?',
            thumbnail: 'assets/fb.png',
            url:
            'https://www.facebook.com/vignesh.ramakrishnan.52?ref=bookmarks'),
        new Channel(
            title: 'See how I did this?',
            thumbnail: 'assets/github.jpg',
            url:
            'https://github.com/Vignesh150493'),
      ],
      location: 'Chennai, TN, India');
}