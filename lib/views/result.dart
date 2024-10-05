import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class results extends StatefulWidget {
   results({super.key,required this.ismale,required this.age,required this.result});
bool ismale;
double result;
int age;

String resultphrase(){
  String phrase='';
  if(result>=30){
phrase='Obese';}
  else if(result<30&&result>=25){
    phrase='Overweight';}
  else if(result<25&&result>=18.5){
    phrase='Normal';}
  else{
    phrase='Thin';
  }
  return phrase;
}
  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Your Result',style: TextStyle(
            color:kprimary,
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),),
      ),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Text('${widget.resultphrase()}',
                  style: const TextStyle(
                    fontSize: 40,
                    color:ksecondary
                  ),
                ),
                const SizedBox(height: 22,),
                Text('Result: ${widget.result.toInt()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                   fontStyle: FontStyle.italic,
                    fontSize: 60,
                    color: ksecondary
                  )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
