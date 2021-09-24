import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_shop/screens/default_screen/default_screen.dart';
import 'package:shoes_shop/screens/home_screen/home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;
  List screensList = [
    const HomeScreen(),
    const DefaultScreen(),
    const DefaultScreen(),
    const DefaultScreen(),
    const DefaultScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Shoes Shop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/search.svg',
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      body: screensList[currentIndex],
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: DotNavigationBar(
            marginR: const EdgeInsets.symmetric(horizontal: 15),
            backgroundColor: Colors.black,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            currentIndex: currentIndex,
            dotIndicatorColor: Colors.transparent,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              DotNavigationBarItem(
                icon: const Icon(Icons.home_rounded),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.search),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.add_circle_outline_sharp),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.favorite_border_rounded),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.person_outline_rounded),
                selectedColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
