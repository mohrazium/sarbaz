import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MdiWindow extends StatefulWidget {
  // x,y properties
  final String windowIdentifier;
  late double currentHeight, defaultHeight = 576.0;
  late double currentWidth, defaultWidth = 720.0;
  final double? width;
  final double? height;
  late double x;
  late double y;

  late Function(double, double) onWindowDragged;
  late VoidCallback onCloseButtonClicked;
  late VoidCallback onMaximizeButtonClicked;
  late VoidCallback onMinimizeButtonClicked;

  final String title;
  final Widget body;
  final BuildContext context;

  MdiWindow({
    required this.windowIdentifier,
    required this.title,
    required this.body,
    required this.context,
    this.width,
    this.height,
  }) : super(key: UniqueKey()) {
    this.currentHeight = (height == null ? defaultHeight : height)!;
    this.currentWidth = (width == null ? defaultWidth : width)!;
  }

  @override
  _MdiWindowState createState() => _MdiWindowState();
}

class _MdiWindowState extends State<MdiWindow> {
  var _headerSize = 35.0;
  var _borderRadius = 5.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //Here goes the same radius, u can put into a var or function
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
        boxShadow: [
          BoxShadow(
            color: Color(0x54000000),
            spreadRadius: 4,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [_getHeader(), _getBody()],
          ),
        ),
      ),
    );
  }

  _getHeader() {
    return GestureDetector(
      onPanUpdate: (tapInfo) {
        widget.onWindowDragged(tapInfo.delta.dx, tapInfo.delta.dy);
      },
      child: Container(
        width: widget.currentWidth,
        height: _headerSize,
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _getControlButtons(),
            _getHeaderTitle(),
          ],
        ),
      ),
    );
  }

  _getBody() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: widget.currentWidth,
        height: widget.currentHeight - _headerSize,
        color: Theme.of(context).scaffoldBackgroundColor,
        
        child: widget.body,
      ),
    );
  }

  _getCloseButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: 1.5,
      ),
      MaterialButton(
        minWidth: _headerSize - 20,
        onPressed: () {
          widget.onCloseButtonClicked();
        },
        child: Container(
            width: _headerSize - 5,
            height: _headerSize - 5,
            child: Icon(Icons.close)),
      ),
    ]);
  }

  _getMaximizeButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: 1.5,
      ),
      MaterialButton(
        minWidth: _headerSize - 20,
        onPressed: () {
          widget.onMaximizeButtonClicked();
        },
        child: Container(
            width: _headerSize - 5,
            height: _headerSize - 5,
            child: Icon(Icons.fullscreen)),
      ),
    ]);
  }

  _getMinimizeButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: 1.5,
      ),
      MaterialButton(
        minWidth: _headerSize - 20,
        onPressed: () {
          widget.onMinimizeButtonClicked();
        },
        child: Container(
            width: _headerSize - 5,
            height: _headerSize - 5,
            child: Icon(Icons.minimize)),
      ),
    ]);
  }

  _getControlButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      _getCloseButton(),
      //_getMaximizeButton(),//TODO: fix this
      // _getMinimizeButton()//TODO: fix this
    ]);
  }

  _getHeaderTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text(widget.title)],
    );
  }
}
