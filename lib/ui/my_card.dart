import 'package:company_profile/model/myself.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseCard extends StatelessWidget {
  final Channel course;

  CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 175.0,
          margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          decoration: _createShadowRoundCorners(),
          child: RawMaterialButton(onPressed: () async {
            if (await canLaunch(course.url)) {
              await launch(course.url);
            }}, child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(flex: 3, child: _createThumbnail()),
              Flexible(flex: 2, child: _createCourseInfo()),
            ],
          ),
        ));
  }

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26, spreadRadius: 2.0, blurRadius: 10.0)
        ]);
  }



  Widget _createThumbnail() {
    return Container(
        padding: const EdgeInsets.all(8.0),
      child:   ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
            course.thumbnail,
            width: double.infinity,
            height: 100.0,
            fit: BoxFit.fill,
          ),
      )
//      child: Stack(
//        children: <Widget>[
//          Image.asset(
//            course.thumbnail,
//            width: double.infinity,
//            height: 100.0,
//            fit: BoxFit.fill,
//          ),
//          Positioned(bottom: 12.0, right: 12.0, child: _createLinkButton())
//        ],
//      ),
    );
  }

  Widget _createCourseInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 4.0),
      child: Text(
        course.title,
        style: TextStyle(
          color: Colors.white.withOpacity(0.84),
        ),
      ),
    );
  }
}
