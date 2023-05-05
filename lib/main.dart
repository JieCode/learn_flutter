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

// StatelessWidget的声明周期：构造函数-> build
class HYHomePage extends StatelessWidget {
  HYHomePage({Key? key}) : super(key: key){
   print("1.HYHomePage StatelessWidget 构造函数被调用");
  }

  @override
  Widget build(BuildContext context) {
    print("2.HYHomePage StatelessWidget build函数被调用");
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("商品列表"),
          ),
          body: HYHomeContent(message: "试试传进去",),
        )
    );
  }
}

// StatefulWidget的声明周期：StatefulWidget构造函数->StatefulWidget createState->State构造函数->State initState->State build
class HYHomeContent extends StatefulWidget {
  String? message;
  HYHomeContent({Key? key,this.message}){
    print("1.HYHomeContent StatefulWidget 构造函数被调用");
  }

  @override
  State<HYHomeContent> createState() {
    print("2.HYHomeContent StatefulWidget createState函数被调用");
    return _HYHomeContentState();
  }
}

class _HYHomeContentState extends State<HYHomeContent> {
  var _counter = 0;
  _HYHomeContentState(){
    print("3._HYHomeContentState State 构造函数被调用");
  }

  @override
  void initState() {
    //必须调用super
    // 1.父类初始化
    // 2.不调用会报错
    super.initState();
    print("4._HYHomeContentState State initState函数被调用");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("_HYHomeContentState State didChangeDependencies函数被调用");
  }

  @override
  Widget build(BuildContext context) {
    print("5._HYHomeContentState State build函数被调用");
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



