// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CalcuPage extends StatefulWidget {
  const CalcuPage({super.key});

  @override
  State<CalcuPage> createState() => _HomePageState();
}

class _HomePageState extends State<CalcuPage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "CALCULATOR",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color.fromARGB(255, 181, 181, 181)], // background color
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: firstController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Value',
                    
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: secondController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Value',
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // code executed on button press
                        double a = double.parse(firstController.text);
                        double b = double.parse(secondController.text);

                        setState(() {
                          result = a + b;
                        });
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: const Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Subtract
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // code executed on button press
                        double a = double.parse(firstController.text);
                        double b = double.parse(secondController.text);

                        setState(() {
                          result = a - b;
                        });
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: const Text(
                            "Subtract",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // code executed on button press
                        double a = double.parse(firstController.text);
                        double b = double.parse(secondController.text);

                        setState(() {
                          result = a * b;
                        });
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: const Text(
                            "Multiply",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // code executed on button press
                        double a = double.parse(firstController.text);
                        double b = double.parse(secondController.text);

                        setState(() {
                          result = a / b;
                        });
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: const Text(
                            "Divide",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        // code executed on button press
                        setState(() {
                          firstController.clear();
                          secondController.clear();
                          result = 0;
                        });
                      },
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Result
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Result: $result',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
