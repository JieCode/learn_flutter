import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
        centerTitle: true,
      ),
      body: HYContentBody(),
    );
  }
}

class HYContentBody extends StatelessWidget {
  const HYContentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          HYProductItem(name: "商品1", desc: "商品1的描述", imageUrl: "https://www.itying.com/images/flutter/1.png"),
          HYProductItem(name: "商品2", desc: "商品2的描述", imageUrl: "https://www.itying.com/images/flutter/2.png"),
          HYProductItem(name: "商品3", desc: "商品3的描述", imageUrl: "https://www.itying.com/images/flutter/3.png"),
        ]
    );
  }
}

class HYProductItem extends StatelessWidget {
  String? name;
  String? desc;
  String? imageUrl;
  HYProductItem({super.key, this.name,this.desc,this.imageUrl}){
    print("构造函数被调用");
  }

  final style1 = const TextStyle(fontSize: 20, color: Colors.orange);
  final style2 = const TextStyle(fontSize: 16, color: Colors.green);
  @override
  Widget build(BuildContext context) {
    print("函数被调用");
    return Container (
      padding: EdgeInsets.all(12),// 内边距
      decoration: BoxDecoration(// 装饰器,设置边框
        border: Border.all(
          width: 5,
          color: Colors.purpleAccent,
        ),
      ),
      child: Column(// Column垂直方向是主轴，Row水平方向是主轴
        crossAxisAlignment: CrossAxisAlignment.start,//交叉轴，设置布局开始位置
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(name!,style: style1,),
              Text(name!,style: style1,),
            ],
          ),// 代码不居中的原因是因为宽度不够，默认自适应
          SizedBox(height: 8,),
          Text(desc!,style: style2,),
          SizedBox(height: 8,),
          Image.network(imageUrl!),
        ],
      ),
    );
  }
}
// StatelessWidget的声明周期：构造函数-> build


