
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sarbaz/src/app/controllers/controllers.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeMode _themeMode = ThemeMode.system;
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    print('${MediaQuery.of(context).platformBrightness}');
    print('${Theme.of(context).brightness}');
    return Scaffold(
        appBar: AppBar(),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'System getx: ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              MaterialButton(
                  child: Text("plus"),
                  onPressed: () {
                   
                  }),
              Center(
                child: Text(
                  'System Brightness: ${Get.mediaQuery.platformBrightness.toString()}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'Theme Brightness: ${Get.theme.brightness.toString()}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'ThemeMode',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              ),
              RadioListTile(
                title: Text('system'),
                value: ThemeMode.system,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value as ThemeMode;
                    Get.changeThemeMode(_themeMode); //STEP 3 - change themes
                  });
                },
              ),
              RadioListTile(
                title: Text('dark'),
                value: ThemeMode.dark,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value as ThemeMode;
                    Get.changeThemeMode(_themeMode);
                  });
                },
              ),
              RadioListTile(
                title: Text('light'),
                value: ThemeMode.light,
                groupValue: _themeMode,
                onChanged: (value) {
                  setState(() {
                    _themeMode = value as ThemeMode;
                    Get.changeThemeMode(_themeMode);
                  });
                },
              ),
            ],
          );
        }));
  }
}
