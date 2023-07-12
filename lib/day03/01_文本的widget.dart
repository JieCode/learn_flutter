import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "定风波·莫听穿林打叶声\n 苏轼 〔宋代〕\n 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。"
          "\n料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴。",
      textAlign: TextAlign.center, //对齐方式
      maxLines: 8, //最大行数
      overflow: TextOverflow.ellipsis, //超出部分省略号
      textScaleFactor: 1.0,//字体缩放
      style: TextStyle(
        fontFamily: "华文行楷",
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold,),
    );
  }
}
class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: "Hello World\n"),
          TextSpan(
            text: "https://www.baidu.com\n",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          WidgetSpan(
            child: Icon(Icons.favorite, color: Colors.red),
          ),
          TextSpan(text: "你好世界\n"),
        ],
      ),
      style: TextStyle(fontSize: 30, color: Colors.orange),
      textAlign: TextAlign.center,
    );
  }
}