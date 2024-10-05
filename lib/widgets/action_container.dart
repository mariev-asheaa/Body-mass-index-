import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class actioncontainer extends StatefulWidget {
   actioncontainer({super.key, required this.text,required this.age,required this.weight,
     required this.onpressed1,required this.onpressed2});
 String text;
  int weight;
  int age;
  void Function() onpressed1;
   void Function() onpressed2;
  @override
  State<actioncontainer> createState() => _actioncontainerState();
}

class _actioncontainerState extends State<actioncontainer> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
        child: Container(
          height: 190,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:kprimary
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( widget.text,style:  const TextStyle(
                    color: ksecondary,
                    fontSize: 33,
                    fontWeight: FontWeight.bold
                ),),

                Text(widget.text=='Age'?"${widget.age}":"${widget.weight}",

                  style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: ksecondary
                ),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FloatingActionButton(backgroundColor: ksecondary,
                        onPressed:widget.onpressed1 ,
                      child: Icon(Icons.add,size: 25,),
                      mini: true,
                    ),

                    const SizedBox(width: 15,),
                    FloatingActionButton(backgroundColor: ksecondary,
                        onPressed: widget.onpressed2,
                      child: Icon(Icons.minimize,size: 25,),
                      mini: true,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
