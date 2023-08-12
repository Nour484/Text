import 'package:flutter/material.dart';

import 'moon_text.dart';

class RichTextVideo extends StatelessWidget {
  static const routeName = "RichTextVideo";
  const RichTextVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 233, 235),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sky",
          style: TextStyle(fontFamily: "Nanum Myeongjo", fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    style: TextStyle(
                        height: 1.5,
                        wordSpacing: 1,
                        fontFamily: "Nanum Myeongjo",
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Color.fromARGB(255, 27, 18, 18)),
                    children: [
                      TextSpan(
                          text: "What is the sky really?",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                            //  fontFamily: "Smooch",
                            color: Colors.blueGrey,
                          )),
                      TextSpan(
                          text: "It’s",
                          style: TextStyle(
                              letterSpacing: 3,
                              fontWeight: FontWeight.w900,
                              fontSize: 35,
                              color: Color.fromARGB(255, 60, 1, 1))),
                      TextSpan(
                          text:
                              " interesting because the can be so many different things to us: it can be big, beautiful and blue, or grey, cloudy and rainy. "),
                      TextSpan(
                          text: " sky",
                          style: TextStyle(
                            letterSpacing: 3,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.underline,
                            color: Colors.blueGrey,
                          )),
                      TextSpan(
                        text:
                            "  can also be full of stars, or full of orange and red clouds at sunset or sunrise.The reason the sky can appear to be so many different things is because what we perceive as the sky is actually just the different behaviours of a massive layer of gas above our heads. That layer, which we call an atmosphere, is stuck to our planet, Earth, by an invisible force called gravity, and we are at the bottom of it. And depending on the time of day and the conditions in the atmosphere, we will see",
                      ),
                      TextSpan(
                          text: " different things.",
                          style: TextStyle(
                            fontFamily: "Smooch",
                            fontSize: 25,
                            letterSpacing: 4,
                            fontWeight: FontWeight.w900,
                            decoration: TextDecoration.underline,
                            color: Colors.blueGrey,
                          )),
                    ])),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, Moon.routeName);
                },
                child: const Text("@Flutter_with_NourAhmed",
                    style:
                        TextStyle(fontFamily: "Nanum Myeongjo", fontSize: 25)),
              )),
        ],
      ),
    );
  }
}
