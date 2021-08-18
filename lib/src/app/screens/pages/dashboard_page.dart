import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/app/screens/views/views.dart';

class DashboardPage extends GetResponsiveView {
  DashboardPage()
      : super(
            alwaysUseBuilder: false,
            settings: ResponsiveScreenSettings(
                desktopChangePoint: 800,
                tabletChangePoint: 700,
                watchChangePoint: 600));

  @override
  Widget? desktop() => Scaffold(body: DashboardDesktopView());

  @override
  Widget? phone() => Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text("phone"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          )
        ],
      ));

  @override
  Widget? tablet() => Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text("tablet"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          )
        ],
      ));

  @override
  Widget? watch() => Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text("screen size not supported!"),
          )
        ],
      ));
}
