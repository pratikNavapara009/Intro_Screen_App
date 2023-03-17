import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  CarouselController carouselController = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        carouselController: carouselController,
        options: CarouselOptions(
            enableInfiniteScroll: false,
            initialPage: current,
            onPageChanged: (val, _) {
              setState(() {
                current = val;
                print(current);
              });
            },
            viewportFraction: 1,
            height: MediaQuery.of(context).size.height / 1),
        items: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Image(
                  image: AssetImage("assets/images/food.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Fresh Food",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "   OUR AIM IS TO\n"
                  "   OFFER SIMPLE,\n"
                  "FRESH, GOOD FOOD.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        blurRadius: 1,
                        color: Colors.grey,
                        offset: Offset(2, 1),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);

                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      child: const Text("Skip"),
                    ),
                    const Spacer(),
                    const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () async {
                        await carouselController.nextPage(
                          duration: const Duration(microseconds: 100),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Image(
                  image: AssetImage("assets/images/fast.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Fast Delivery",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "A delivery business is a company that moves packages from one location to another for a fee. is the most Important Business for Every industry. Starting a courier business can be a lucrative and good business opportunity if you have an idea and passion.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.grey,
                        offset:  Offset(2, 1),
                        blurRadius: 5,
                      )
                    ],
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Skip"),
                    ),
                    const Spacer(),
                    const Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await carouselController.nextPage(
                          duration: const Duration(microseconds: 100),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Image(
                  image: AssetImage("assets/images/easy.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Easy Payment",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "People are willing to work free, and they are willing to work for a reasonable wage; but offer them just a small payment and they will walk away.”",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.grey,
                        offset: Offset(2, 1),
                        blurRadius: 5,
                      )
                    ],
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);

                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      child: const Text("Skip"),
                    ),
                    const Spacer(),
                    const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);

                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      icon: const Icon(
                        Icons.arrow_forward_rounded,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
