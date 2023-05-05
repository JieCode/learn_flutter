import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HYHomePage();
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("StatefulWidget综合案例"),
          ),
          body: HYHomeContent(message: "试试传进去",),
        )
    );
  }
}

// Widget是不加_：暴露给别人使用
class HYHomeContent extends StatefulWidget {
  String? message;
  HYHomeContent({this.message});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

// State是加_：状态这个类只是给Widget使用
class _HYHomeContentState extends State<HYHomeContent> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          SizedBox(
            height: 20,
          ),
          Text("当前计数：$_counter"),
          Text("传递的信息：${widget.message}"),
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _counter++;
              });
              print("点击+, counter: $_counter");
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            )),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          child: Text(
            "-",
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              _counter--;
            });
            print("点击-, counter: $_counter");
          },
        ),
      ],
    );
  }
}


