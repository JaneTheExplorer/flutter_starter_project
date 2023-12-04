import 'package:flutter/material.dart';
import 'package:my_app/Util/my_card.dart';
import 'package:my_app/pages/my_button.dart';
import 'package:my_app/pages/my_list_tile.dart';
import 'package:my_app/project.dart';
import 'package:my_app/review.dart';
import 'package:my_app/textrich.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dribble extends StatefulWidget {
  const Dribble({key}) : super(key: key);

  State<Dribble> createState() => _DribbleState();
}

class _DribbleState extends State<Dribble> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Review())));
        },
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 20,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 18,
                  color: Colors.pink,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 50),
                    Row(children: [
                      const Text(
                        'My ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Cards',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(width: 80),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ]),
                  ]),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    const MyCard(
                      balance: 5250.25,
                      cardNumber: 12345678,
                      expiryYear: 24,
                      expiryMonth: 10,
                      color: Colors.red,
                    ),
                    MyCard(
                      balance: 342.23,
                      cardNumber: 12345678,
                      expiryYear: 11,
                      expiryMonth: 23,
                      color: Colors.blue[300],
                    ),
                    MyCard(
                      balance: 420.42,
                      cardNumber: 12345678,
                      expiryYear: 8,
                      expiryMonth: 22,
                      color: Colors.green[300],
                    ),
                  ]),
            ),
            const SizedBox(height: 10),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    IconImagePath: 'icons/Icon-192.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    IconImagePath: 'icons/Icon-192.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    IconImagePath: 'icons/Icon-192.png',
                    buttonText: 'Send',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  MyListTile(
                    IconImagePath: 'icons/Icon-192.png',
                    tileTitle: 'icons/Icon-192.png',
                    titleSubTitle: 'icons/Icon-192.png',
                  ),
                  SizedBox(height: 5),
                  MyListTile(
                    IconImagePath: 'icons/Icon-192.png',
                    tileTitle: 'icons/Icon-192.png',
                    titleSubTitle: 'icons/Icon-192.png',
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
