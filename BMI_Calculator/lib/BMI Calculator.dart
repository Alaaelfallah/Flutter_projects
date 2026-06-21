import 'dart:math';

import 'package:first_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget
{
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height = 120.0;
  int weight=40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('BMI Calculator',
          style: TextStyle(
            color: Colors.white

        ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale? Colors.blue : Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('Assets/Images/male.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              Text('male',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale?Colors.grey[400] : Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('Assets/Images/female.png'),
                                height: 90.0,
                                width: 90.0,
                              ),
                              Text('Female',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('HEIGHT',
                          style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                          ),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('${height.round()}',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight:FontWeight.w900,
                    ),),
                    SizedBox(width:5.0),
                    Text('CM',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight:FontWeight.bold,
                      ),),

                  ],
                ),
                Slider(
                    value: height,
                    max: 220,
                    min: 80,
                    onChanged: (value){
                      setState(() {
                        height = value;
                      });
                      print(120);
                    })

                          ],
                          ),
              ),
            )
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('weight',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                            ),),
                          Text('${weight}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });

                                },
                                heroTag: 'weight-',
                                mini: true,
                                child:Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });

                                },
                                heroTag: 'weight+',
                                mini: true,
                                child:Icon(Icons.add),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                            ),),
                          Text('${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });

                                },
                                heroTag: 'age-',
                                mini: true,
                                child:Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });

                                },
                                heroTag: 'age+',
                                mini: true,
                                child:Icon(Icons.add),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: MaterialButton(
                onPressed:(){
                  late var result = weight/pow(height/100, 2);
                  print(result.round());
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>BmiResultScreen(result: result.round(), age: age, isMale: isMale,) ));
                },
            child: Text('CALCULATE'
            ),
            ),
          )
        ],
      ),

    );
  }


  //late var result = weight/pow(height/100, 2);
  //print(result.round());
}
