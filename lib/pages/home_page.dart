import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fix/util/my_card.dart'; // Sesuaikan dengan path ke my_card.dart
import 'package:fix/util/my_list_tile.dart'; // Sesuaikan dengan path ke my_list_tile.dart

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow[900],
        child: Icon(Icons.home_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.search,
            size: 32,),
          ),
          
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.settings,
            size: 32,),
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'VZAGYM',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Notif button
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.notifications_none),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Widget Card
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    month: 11,
                    year: 24,
                    color: Colors.grey[900],
                  ),
                  MyCard(
                    month: 11,
                    year: 24,
                    color: Colors.yellow[900],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.yellow.shade900,
              ),
            ),

            SizedBox(height: 25),

            // Widget Column
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImagesPath: 'lib/icons/target.png',
                    tileTitle: 'Goals',
                  ),
                  MyListTile(
                    iconImagesPath: 'lib/icons/tracking.png',
                    tileTitle: 'Track Activity',
                  ),
                  MyListTile(
                    iconImagesPath: 'lib/icons/diet.png',
                    tileTitle: 'Nutrition',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
