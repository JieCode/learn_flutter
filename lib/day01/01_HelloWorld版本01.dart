import 'package:flutter/material.dart';

void main(){
// 1.runApp 函数是 Flutter 中的入口函数，它接收一个 Widget 作为参数，这个 Widget 就是我们的根 Widget。
// flutter中万物都是widget
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("第一个Flutter程序"),
            ),
            body: Center(
              child: Text(
                "Hello World",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.orange
                ),
              ),
            ),
          )
      )
  );
}