import 'dart:convert';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFe6eeff),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'),
              maxRadius: 80,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                  child: Text(
                "name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    10), // Change this value to adjust the roundness
              ),
              height: 50,
              width: 400,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                  child: Text(
                "email",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    10), // Change this value to adjust the roundness
              ),
              height: 50,
              width: 400,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'Gender',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                  child: Text(
                "gender",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    10), // Change this value to adjust the roundness
              ),
              height: 50,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
