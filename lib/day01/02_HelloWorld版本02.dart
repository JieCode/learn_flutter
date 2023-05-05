import 'package:flutter/material.dart';

main() => runApp(MyApp());

/// Widget:
/// 有状态的widget：StatefulWidget在运行过程中有一些状态（data）需要改变，比如进度条、开关等。
/// 无状态的widget：StatelessWidget内容是确定的，在运行过程中没有状态（data）需要改变，比如文本、图标等。

class MyApp extends StatelessWidget {
  // build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,// 去掉debug标签
        home: HYHomePage()
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个Flutter程序"),
        ),
        body: HYContentBody()
    );
  }
}

class HYContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello World",
        style: TextStyle(
            fontSize: 40,
            color: Colors.orange
        ),
      ),
    );
  }
}
