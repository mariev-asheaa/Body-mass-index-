import 'dart:math';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/views/result.dart';
import 'package:bmi_app/widgets/action_container.dart';
import 'package:bmi_app/widgets/gender_container.dart';
import 'package:bmi_app/widgets/height.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool ismale=true;
  Color color=kprimary;
  
  int w=50;
  double h=150;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3a506b),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Body Mass Index',style: TextStyle(
          color: ksecondary,
              fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
      ),
      body:  Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    ismale = true;
                  });
                },
                child: infocontainer(gender:'Male' ,icon:Icons.male,
                  color:   ismale?color=const Color(0xff0d3b66):color=kprimary,),
              ),
              GestureDetector(
                  onTap: (){
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: infocontainer(gender: 'Female', icon: Icons.female,
                    color: !ismale ? const Color(0xff0d3b66) : kprimary,)),
            ],
          ),

             height(hight:h, onchange: (value) {
              setState(() {
                h=value;
              });
             },),

           Row(
            children: [
              actioncontainer(text:'Weight', age: age, weight: w, onpressed1: () {
                setState(() {
                  w++;
                });
              }, onpressed2: () {
                setState(() {
                 w--;
                });
              },),

              actioncontainer(text:'Age', age: age, weight: w, onpressed1: () {
                setState(() {
                  age++;
                });

              }, onpressed2: () {
                setState(() {
                  age--;
                });
              },),
            ],
          ),
         const SizedBox(height: 50,),
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:kprimary
            ),

            child: TextButton(onPressed: (){

              var result=w/pow(h/100,2);  //like n^2

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return results(ismale: ismale, age: age, result:result );
              }));

            },
                child:const Text('Calculate',
              style: TextStyle(
                color: ksecondary,
                fontSize: 28,
                fontWeight: FontWeight.bold
                ,),
              )),
          )
        ],
      ),
    );
  }
}
