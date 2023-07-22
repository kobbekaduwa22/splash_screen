import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 200,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 253),
              child: Center(
                child: Image.asset(
                  "assest/nsbm (2).png",
                  width: size.width / 2,
                ),
                // child: Container(
                //   color: Colors.blue,
                //   width: 200,
                //   height: 200,
                // ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // height: 200,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "NSBM ",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Container(
                          color: const Color.fromARGB(255, 248, 255, 249),
                          width: size.width / 2,
                          height: 50,
                          child: const Row(
                            children: [
                              Square(),
                              Square(),
                              Square(),
                              Square(),
                              Square(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            height: 20,
            color: Color.fromARGB(255, 43, 255, 1),
          ),
        ),
      ),
    );
  }
}
