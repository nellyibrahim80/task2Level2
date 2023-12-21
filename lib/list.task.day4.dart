import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeList extends StatelessWidget {
  const MakeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
                print("a: $a");
                var less5=a.where((element) => element<5);
                print("Less Than 5 : $less5");
                print("********************");

              },
              child: Text(" less than 5")),
          ElevatedButton(
              onPressed: () {
                Set<int> a = {1, 2, 3, 5, 8, 13, 21, 34, 55, 89};
                Set<int> b={1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
                print("set a : $a");
                print("set b : $b");
                Set<int> commonSet =  a.intersection(b);
                print("Common set : $commonSet");
                print("********************");

              },
              child: Text("Common Elelments")),
          ElevatedButton(
              onPressed: () {
                List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

                print("List a : $a");

                List<int>?  evenNum =  a.where((element) => element % 2 ==0 ).toList();
                print("Even Numbers : $evenNum");
                print("********************");

              },
              child: Text("Even Numbers")),
          ElevatedButton(
              onPressed: () {
                List<int> a = [5, 10, 15, 20, 25];

                print("List a : $a");

                List<int>  FLNum =  [a.first,a.last];
                print("First & Last numbers : $FLNum");
                print("********************");

              },
              child: Text("First & Last Numbers")),
        ],
      ),
    );
  }
}
