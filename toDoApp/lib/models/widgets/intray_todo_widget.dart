import 'package:flutter/material.dart';
import 'package:to_do_app/models/global.dart';

class IntrayToDo extends StatelessWidget {
  final String? title;
  final String? keyValue;
  final String? subTitle;
  IntrayToDo({this.keyValue, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: redColor,
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors
          Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) => value == false,
            activeColor: Colors.green,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: darkTodoTitle,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                subTitle!,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
