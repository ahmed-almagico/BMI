import 'dart:math';

import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _colorM = true;
  double tall = 150;
  double weight = 54;
  double age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 34, 56, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _colorM = true;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                            _colorM ? Colors.blueAccent : Colors.black38),
                        height: 195,
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 160,
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _colorM = false;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        height: 195,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _colorM ? Colors.black38 : Colors.pink,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 160,
                              color: Colors.white,
                            ),
                            Text(
                              'Female',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 185,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${tall.round()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    value: tall,
                    min: 80.0,
                    max: 220.0,
                    onChanged: (value) {
                      setState(() {
                        tall = value;
                      });
                    },
                    activeColor: Colors.white,
                    inactiveColor: Color.fromRGBO(21, 34, 56, 1),
                    thumbColor: Color.fromRGBO(255, 29, 71, 1.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black38),
                    height: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'WEIGHT',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${weight.round()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              FloatingActionButton(
                                onPressed: weight == 50
                                    ? null
                                    : () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'Weight-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: weight == 220
                                    ? null
                                    : () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'Weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black38),
                    height: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'AGE',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${age.round()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              FloatingActionButton(
                                onPressed:age == 16?null:(){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed:age == 99?null:(){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  double result = weight / pow(tall / 100, 2);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> Result(
                        male: _colorM,
                        result: result,
                        age: age,
                      ))
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(255, 29, 71, 1.0)),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}