import 'package:bmi_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infocontainer extends StatefulWidget {
  const infocontainer({super.key,required this.gender,required this.icon, required this.color});
  final String gender;
  final IconData icon;
 final Color color;

  @override
  State<infocontainer> createState() => _infocontainerState();
}

class _infocontainerState extends State<infocontainer> {

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
              color:widget.color
          ),
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Icon(widget.icon,color:ksecondary ,size: 90,),
                Text(widget.gender,style:  const TextStyle(
                    color: ksecondary,
                    fontSize: 33,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}