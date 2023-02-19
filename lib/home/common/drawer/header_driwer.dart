import 'package:flutter/material.dart';

class HeaderDriwer extends StatelessWidget {
  const HeaderDriwer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 61, 61, 61),
          gradient: const LinearGradient(colors: [
            Color(0xffF99E43),
            Color(0xFFDA2323),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/avatar/steve-jobs-icon.png')),
            ),
          ),
          Text(
            'Dmitrii',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            'Developer',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),
    );
  }
}
