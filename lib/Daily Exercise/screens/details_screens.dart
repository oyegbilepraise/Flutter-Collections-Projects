import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/Daily%20Exercise/constants.dart';
import 'package:online_shop/Daily%20Exercise/widgets/bottom_nav_bar.dart';
import 'package:online_shop/Daily%20Exercise/widgets/search_bar.dart';
import 'package:online_shop/Daily%20Exercise/widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: kBlueLightColor, elevation: 0,),
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '3 - 10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                        'Is there a reason for that? I think it should land on the website so that people are able to read up on what the service is about before applying',
                      ),
                    ),
                    SizedBox(
                      width: size.width * .6,
                      child: const SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 2,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 3,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 4,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 5,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(20),
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                const Text('Start your deepen you practice')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              'assets/icons/Lock.svg',
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

