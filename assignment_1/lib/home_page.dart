import 'dart:ui';

import 'package:assignment_1/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatefulWidget {
  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final modelList = ModelUpdate.userUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg?auto=compress&cs=tinysrgb&w=600'),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome home',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Lora Ortiz',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search here ...',
                  suffixIcon: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var model = modelList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black)),
                      child: Row(
                        children: [
                          Icon(model.icon),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(model.name))
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: modelList.length),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  'https://images.pexels.com/photos/6990181/pexels-photo-6990181.jpeg?auto=compress&cs=tinysrgb&w=600',
                  height: 50,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Limited course',
                      style: myStyle(10, Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Design Course',
                          style: myStyle(20, Colors.black),
                        ),
                        Icon(Icons.favorite)
                      ],
                    ),
                    Text(
                      'IDR 500.00',
                      style: myStyle(15, Colors.red),
                    )
                  ],
                ))
              ],
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  'https://images.pexels.com/photos/7692469/pexels-photo-7692469.jpeg?auto=compress&cs=tinysrgb&w=600',
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Limited course',
                      style: myStyle(10, Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Design Course',
                          style: myStyle(20, Colors.black),
                        ),
                        Icon(Icons.favorite)
                      ],
                    ),
                    Text(
                      'IDR 500.00',
                      style: myStyle(15, Colors.red),
                    )
                  ],
                ))
              ],
            ),
          )),
        ],
      ),
    );
  }
}

myStyle(double fs, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}
