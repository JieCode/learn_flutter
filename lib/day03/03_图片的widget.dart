
import 'package:flutter/cupertino.dart';

class ImageAssetDemo extends StatelessWidget {
  const ImageAssetDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/xhscdn.webp",
      width: 300,
    );
    //return Image(
    //   image: AssetImage(
    //     "assets/images/xhscdn.webp"
    //   ),
    // );
  }
}

class NetworkImageDemo extends StatelessWidget {
  const NetworkImageDemo({Key? key}) : super(key: key);

  final String imageUrl =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F421189eb-ceb1-43a7-b747-27cf6e517c0a%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1686126936&t=f7ec06aed8f5c820997f9ad9f0bccd68";

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imageUrl),
      width: 300,
      height: 300,
      fit: BoxFit.contain,
      repeat: ImageRepeat.repeatY,// 纵向重复
      // 以中心点为原点（0,0），左上角为(-1,-1)，右下角为(1,1)
      alignment: Alignment(1,1),
    );
  }
}