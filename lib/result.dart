import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  double result;
  bool male;
  double age;

  Result({required this.result,required this.male,required this.age,}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 34, 56, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_left,
          ),
        ),
        centerTitle: true,
        title: Text('BMI RESULT'),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(10),

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender:${male? 'male': 'female'}',
                style: TextStyle(color: Colors.white, fontSize: 20),),
              Text('Result: ${result.round()}',
                style: TextStyle(color: Colors.white, fontSize: 20),),
              Text('Age: ${age.toInt()}',
                style: TextStyle(color: Colors.white, fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}