import 'package:flutter/material.dart';
import 'package:quikieappps1/bodymeasure/HorizontalNumberPicker.dart';


///对HorizontalNumberPicker进行简单包装，添加顶部的选中值显示和两边的半透明遮罩
// ignore: must_be_immutable
class HorizontalNumberPickerWrapper extends StatefulWidget {
  final int initialValue;
  final int minValue;
  final int maxValue;
  final int step;
  final String unit;
  final String name;
  final String title;

  ///控件的宽度
  final int widgetWidth;

  ///一大格中有多少个小格
  final int subGridCountPerGrid;

  ///每一小格的宽度
  final int subGridWidth;

  final void Function(int) onSelectedChanged;

  ///返回上方大标题所展示的数值字符串
  String Function(int) titleTransformer;

  ///返回标尺刻度所展示的数值字符串
  final String Function(int) scaleTransformer;

  ///标题文字颜色
  final Color titleTextColor;

  ///刻度颜色
  final Color scaleColor;

  ///指示器颜色
  final Color indicatorColor;

  ///刻度文字颜色
  final Color scaleTextColor;



  HorizontalNumberPickerWrapper({
    Key key,
    this.initialValue = 500,
    this.minValue = 100,
    this.maxValue = 900,
    this.step = 1,
    this.title="",
    this.unit = "",
    this.name = "",
    this.widgetWidth = 100,
    this.subGridCountPerGrid = 10,
    this.subGridWidth = 8,
    @required this.onSelectedChanged,
    this.titleTransformer,
    this.scaleTransformer,
    this.titleTextColor = Colors.white,
    this.scaleColor = const Color(0xFFE9E9E9),
    this.indicatorColor = Colors.white,
    this.scaleTextColor = const Color(0xFF8E99A0),
  }) : super(key: key) {
    if (titleTransformer == null) {
      titleTransformer = (value) {
        return value.toString();
      };
    }
  }

  @override
  State<StatefulWidget> createState() {
    return HorizontalNumberPickerWrapperState();
  }
}

class HorizontalNumberPickerWrapperState
    extends State<HorizontalNumberPickerWrapper> {
  int _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  ///处理state的复用
  void didUpdateWidget(HorizontalNumberPickerWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    int numberPickerHeight = 60;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //上方选中值
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
               Text(
                ' ${widget.name}',
                style: TextStyle(
                  color: widget.titleTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                  //fontFamily: "Montserrat",
                ),
              ),
              Text(
                widget.titleTransformer(_selectedValue),
                style: TextStyle(
                  color: widget.titleTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                  //fontFamily: "Montserrat",
                ),
              ),
            ],
          ),
        ),
        //可滚动标尺
        Stack(
          children: <Widget>[
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
              color: Colors.white,
              ),
              child: HorizontalNumberPicker(
                initialValue: widget.initialValue,
                minValue: widget.minValue,
                maxValue: widget.maxValue,
                title: widget.title,
                step: widget.step,
                widgetWidth: widget.widgetWidth,
                widgetHeight: numberPickerHeight,
                subGridCountPerGrid: widget.subGridCountPerGrid,
                subGridWidth: widget.subGridWidth,
                onSelectedChanged: (value) {
                  widget.onSelectedChanged(value);
                  setState(() {
                    _selectedValue = value;
                  });
                },
                scaleTransformer: widget.scaleTransformer,
                scaleColor: widget.scaleColor,
                indicatorColor: widget.indicatorColor,
                scaleTextColor: widget.scaleTextColor,
              ),
            ),

            // Positioned(
            //   left: 0,
            //   child: Container(
            //     width: 20,
            //     height: numberPickerHeight.toDouble(),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         Colors.white.withOpacity(0.8),
            //         Colors.white.withOpacity(0)
            //       ]),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   right: 0,
            //   child: Container(
            //     width: 20,
            //     height: numberPickerHeight.toDouble(),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         Colors.white.withOpacity(0),
            //         Colors.white.withOpacity(0.8)
            //       ]),
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}