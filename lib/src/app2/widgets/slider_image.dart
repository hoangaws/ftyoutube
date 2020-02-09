import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SliderImage extends StatefulWidget {
  SliderImage({Key key, this.height, this.width}) : super(key: key);
  final double height;
  final double width;
  
  @override
  _SliderImageState createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          dotIncreasedColor: Color(0xFFFF335C),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.topRight,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            NetworkImage('https://image.anninhthudo.vn/w700/uploaded/91/2019_06_26/antd-sat_hach_lai_xe.jpg'),
            NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
//            ExactAssetImage("assets/images/LaunchImage.jpg"),
          ],
        ),
      ),
    );
  }
}
