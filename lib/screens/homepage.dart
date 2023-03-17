import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Log In"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Image.asset("assets/images/welcome.png"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Nice saying about food/n"
                "People who love to eat are always the best people."
                "To eat is a necessity, but to eat intelligently is an art."
                "We all eat, an it would be a sad waste of opportunity to eat badly."
                "If you really want to make a friend, go to someone's house and eat with him...the people who give you their food give you their heart.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 1),
                      blurRadius: 5,
                    ),
                  ],
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
