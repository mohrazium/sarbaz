import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:jalali_calendar/jalali_calendar.dart' as JalaliCalendar;
import 'package:persian_tools/persian_tools.dart' as PersianTools;

import 'package:sarbaz/src/app/controllers/controllers.dart';
import 'package:sarbaz/src/app/screens/themes/themes.dart';
import 'package:sarbaz/src/app/screens/views/soldier_editor_view.dart';
import 'package:sarbaz/src/app/utility/utility.dart';
import 'package:sarbaz/src/core/config/constants/constants.dart';

class DashboardDesktopView extends StatefulWidget {
  @override
  State<DashboardDesktopView> createState() => _DashboardDesktopViewState();
}

class _DashboardDesktopViewState extends State<DashboardDesktopView> {
  late MdiController mdiController;

  final dashboardController = Get.put(DashboardController());

  @override
  void initState() {
    super.initState();

    mdiController = MdiController(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: WidgetConstants.kAppBarHeight,
        leading: Icon(Icons.group_work),
        title: Text(strings.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GFButton(
              textStyle: STheme.textStyle,
              onPressed: () {},
              text: "new ",
              shape: GFButtonShape.pills,
              icon: Icon(Icons.list),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GFButton(
              onPressed: () {},
              text: "new ",
              shape: GFButtonShape.pills,
              icon: Icon(Icons.list),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GFButton(
              textStyle: STheme.textStyle,
              onPressed: () {},
              text: "new ",
              shape: GFButtonShape.pills,
              icon: Icon(Icons.list),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GFButton(
              textStyle: STheme.textStyle,
              shape: GFButtonShape.pills,
              onPressed: () {
                mdiController.addWindow(
                    windowIdentifier: "addNewSoldier",
                    width: 700,
                    height: 520,
                    context: context,
                    title: strings.new_soldier,
                    body: SoldierEditorView());
              },
              text: strings.new_soldier,
              size: 60,
              icon: Icon(
                Icons.person_add_alt_1_rounded,
                size: 35,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: DashboardBodyWidget(mdiController: mdiController),
    );
  }
}


class DashboardBodyWidget extends StatelessWidget {
  const DashboardBodyWidget({
    Key? key,
    required this.mdiController,
  }) : super(key: key);

  final MdiController mdiController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [],
        ),
        Expanded(
          child: Stack(children: [
            GFCard(
              content: Column(
                children: [
                  //TODO: body of dashboard here
                ],
              ),
            ),
            MdiManager(
              mdiController: mdiController,
            ),
          ]),
        ),
      ],
    );
  }
}


