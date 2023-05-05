import 'package:flutter/material.dart';

// 1.runApp 函数是 Flutter 中的入口函数，它接收一个 Widget 作为参数，这个 Widget 就是我们的根 Widget。
// flutter中万物都是widget
void main() => runApp(MyApp());

/// Widget:
/// 有状态的widget：StatefulWidget在运行过程中有一些状态（data）需要改变，比如进度条、开关等。
/// 无状态的widget：StatelessWidget内容是确定的，在运行过程中没有状态（data）需要改变，比如文本、图标等。
class MyApp extends StatelessWidget{
  // 热重载只运行build中的内容
  // 热重启会重新运行main函数
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,// 去掉debug标签
        home: HYHomePage()
    );
  }
}

class HYHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( // 脚手架
        appBar: AppBar(
          title: Text('第三版代码'),
          centerTitle: true,
        ),
        body: HYContentBody()
    );
  }
}

// 无法满足需求，因为Checkbox是一个有状态的组件，而Text是一个无状态的组件
// Checkbox的状态无法改变，需改为StatefulWidget
class HYContentBody extends StatelessWidget{
  var flag = true; // 这是一个错误代码
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,// 主轴对齐方式
          children: <Widget>[
            Checkbox(
                value: flag,
                onChanged: (value){
                  // 遇到了一个报错信息
                  // Error: Not a constant expression.
                  //                 print("value: $value");
                  // 是因为在Dart中，$value是一个变量，而不是一个常量，Center之前被我定义成const，所以报错了，删除即可
                  flag = value!;
                  print("value: $value");
                }
            ),
            Text(
              '同意协议',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.orange
              ),
            ),
          ],
        )
    );
  }
}