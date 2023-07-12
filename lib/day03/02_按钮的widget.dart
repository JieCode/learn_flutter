import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton( //1.即"漂浮"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大
          onPressed: () {
            print("ElevatedButton");
          },
          child: Text("ElevatedButton"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),//按钮背景色
            foregroundColor: MaterialStateProperty.all(Colors.white),//按钮字体颜色
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton( //2.即文本按钮，默认背景透明并不带阴影。按下后，会有背景色
          onPressed: ()=> print("TextButton"),
          child: Text("TextButton"),
        ),
        SizedBox(
          height: 10,
        ),
        OutlinedButton( //3.即"带边框"的按钮，默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)
          onPressed: ()=> print("OutlinedButton"),
          child: Text("OutlinedButton"),
        ),
        SizedBox(
          height: 10,
        ),
        IconButton( //4.即图标按钮，可设置按钮背景色，按下后会出现背景色
            onPressed: ()=>print("IconButton"),
            icon: Icon(Icons.thumb_up)
        ),
        // 5.FloatActionButton 一般放在Scaffold中的floatingActionButton属性中，
        // 如果没有Scaffold，需要使用FloatingActionButton.extended，
        // 它可以实现一个带文本和图标的悬浮按钮
        SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
            onPressed: () => print("ElevatedButton.icon"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),//按钮背景色
              foregroundColor: MaterialStateProperty.all(Colors.white),//按钮字体颜色
              alignment: Alignment.centerLeft,
            ),
            icon: Icon(Icons.send),
            label: Text("发送")
        ),
        SizedBox(
          height: 10,
        ),
        TextButton.icon(
            onPressed: () => print("TextButton.icon"),
            icon: Icon(Icons.info),
            label: Text("详情")
        ),
        SizedBox(
          height: 10,
        ),
        OutlinedButton.icon(
            onPressed: () => print("OutlinedButton.icon"),
            icon: Icon(Icons.add),
            label: Text("添加")
        ),
        SizedBox(
          height: 10,
        ),
        // 6.自定义按钮:图标-文字-背景-圆角
        TextButton(
          onPressed: () => print("自定义按钮"),
          child: Row(
            mainAxisSize: MainAxisSize.min,// 默认max表示尽可能占用空间
            children: [
              Icon(Icons.favorite, color: Colors.red),
              Text("喜欢作者"),
            ],
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            foregroundColor: MaterialStateProperty.all(Colors.black87),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                )
            ),
          ),
        ),
      ],
    );
  }
}