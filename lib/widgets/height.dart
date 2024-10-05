import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class height extends StatefulWidget {
   height({super.key, required this.hight,required this.onchange});
 double hight;
   void Function(double) onchange;
  @override
  State<height> createState() => _heightState();
}

class _heightState extends State<height> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:kprimary
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:16),
        child: Column(
          children: [
            const Text('Hieght',style: TextStyle(
          color:ksecondary,
          fontSize: 33,
          fontWeight: FontWeight.bold
              ,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${widget.hight.toInt()}',style: const TextStyle(
                  color: ksecondary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
                const Text('  cm',style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Slider(value:widget.hight,
                min: 40,
                max: 200,
                //we must define the min and the mak of the hieght
                onChanged: widget.onchange
                )
          ],
        ),
      ),
    );
  }
}
