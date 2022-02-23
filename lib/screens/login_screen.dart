// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:med_haste/constants/colors.dart';
import '/constants/variables.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/LoginScreen';
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(Headings.title),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: mediaquery.height * 0.2,
                width: mediaquery.width,
                color: Colors.amber,
                // child:
              ),
              Positioned(
                  bottom: -30,
                  child: CircleAvatar(
                    radius: 30,
                  )),
            ],
          ),
          Container(
            child: Column(
              children: [
                SizedBox(height: mediaquery.height * 0.2 - 5),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Login'),
                )
              ],
            ),
          ),
        ],
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
