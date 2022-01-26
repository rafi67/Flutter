import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final _tagList=<String>['All', '⚡ popular', '⭐ Features'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(_tagList[index]),
          );
        },
        itemCount: _tagList.length,
        separatorBuilder: (_,index)=>SizedBox(width: 15,),
      ),
    );
  }
}
