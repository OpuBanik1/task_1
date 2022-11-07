import 'package:assignment_1/model/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SavePage extends StatelessWidget {
  // const SavePage({super.key});
  final courses = CourseList.avilableCourse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Center(
              child: Text(
                'Detail',
                style: myStyle(15, Colors.grey),
              ),
            ),
            trailing: Icon(Icons.share),
          ),
          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {},
              child: Text(
                "Design",
                style: myStyle(10, Colors.white),
              )),
          Text(
            "Ux Design for Beginner",
            style: myStyle(20, Colors.black, FontWeight.w800),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                // width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/img.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 100,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              side: BorderSide(color: Colors.black)),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.play_circle_outline),
                              SizedBox(
                                width: 11,
                              ),
                              Text(
                                'Preview',
                                style: myStyle(10, Colors.white),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'List course',
                      style: myStyle(15, Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var course = courses[index];
                          return Card(
                            elevation: 20,
                            child: ListTile(
                              leading: Icon(course.icon),
                              title: Text(course.title),
                              trailing: Text(course.time.toString()),
                            ),
                          );
                        },
                        separatorBuilder: (_, index) => SizedBox(
                              height: 2,
                            ),
                        itemCount: courses.length),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          'Get This Course Now',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  myStyle(double fs, Color clr, [FontWeight? fw]) {
    return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
  }
}
