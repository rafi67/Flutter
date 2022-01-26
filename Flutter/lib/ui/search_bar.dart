import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage("images/search_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fast Search",style: TextStyle(fontSize: 28,color: Colors.white)),
          SizedBox(height: 10,),
          Text("You can Search quickly for job you want",style: TextStyle(fontSize: 22,color: Colors.white,height: 1)),
          SizedBox(height: 30,),
          Container(padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Image.asset("images/search.png",width: 20,),
                SizedBox(width: 10,),
                Text("Search",style: TextStyle(color: Colors.grey,fontSize: 18),)
              ],
            ),
          
          ),
        ],
      ),
    );
  }
}
