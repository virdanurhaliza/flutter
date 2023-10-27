import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  //final String name;
  //final String category;
  final int month;
  final int year;
  final color;

  const MyCard({
     Key? key,
     //required this.name,
     //required this.category,
     required this.month,
     required this.year,
     required this.color,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Virda Nurhaliza',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'GYM MEMBER',
                     style: TextStyle(
                      color: Colors.white
                    ),
                  ),
    
                  SizedBox(height: 90),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    //info
                    Text(
                      'Pelajar',
                      style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                    //berlaku
                    Text(
                      month.toString() + '/' + year.toString(),
                      style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ],
                  )
                ],
               ),
              ),
    );
  }
}