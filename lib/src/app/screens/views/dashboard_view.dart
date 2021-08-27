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
import 'package:sarbaz/src/core/config/constants/constants.dart';
import 'package:sarbaz/src/app/utility/utility.dart';

class DashboardDesktopView extends StatefulWidget {
  @override
  State<DashboardDesktopView> createState() => _DashboardDesktopViewState();
}

class _DashboardDesktopViewState extends State<DashboardDesktopView> {
  late MdiController mdiController;

  final dashboardController = Get.put(DashboardController());

  var items = [
    'Working a lot harder',
    'Being a lot smarter',
    'Being a self-starter',
    'Placed in charge of trading charter'
  ];

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
                    width: 700,
                    height: 660,
                    context: context,
                    title: strings.new_soldier,
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 10,
                          shadowColor: Colors.black26,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      strings.personalInfo,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(height: 2.0, color: Colors.black26),
                                  SizedBox(
                                    height: 5.0,
                                  )
                                ],
                              ),
                              GetBuilder<DashboardController>(
                                init:
                                    DashboardController(), // INIT IT ONLY THE FIRST TIME
                                builder: (_) => Form(
                                  // key: dashboardController.sodierEditorFormKey,
                                  autovalidateMode: AutovalidateMode.always,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 220,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 10,
                                              controller: dashboardController
                                                  .nationalIdentityController,
                                              validator: (val) =>
                                                  dashboardController
                                                      .validateNationalIdentity(
                                                          value: val,
                                                          errorMessage: strings
                                                              .wrongNationalIdentity),
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.nationalIdentity),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              maxLength: 60,
                                              controller: dashboardController
                                                  .lastNameController,
                                              decoration: InputDecoration(
                                                  labelText: strings.lastName),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                               decoration: InputDecoration(
                                                 labelText:
                                                      strings.maritalStatus,
                                                suffixIcon:
                                                    PopupMenuButton<String>(
                                                  icon: const Icon(
                                                      Icons.arrow_drop_down),
                                                  onSelected: (String value) {
                                                    dashboardController.maritalStatusController.text = value;
                                                  },
                                                  itemBuilder:
                                                      (BuildContext context) {
                                                    return items.map<
                                                            PopupMenuItem<
                                                                String>>(
                                                        (String value) {
                                                      return new PopupMenuItem(
                                                          child:
                                                              new Text(value),
                                                          value: value);
                                                    }).toList();
                                                  },
                                                ),
                                              ),
                                              maxLength: 10,
                                              controller: dashboardController
                                                  .maritalStatusController,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.filedOfStudy),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 220,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: strings.nickName),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.fatherName),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.numberOfChildren),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.mobileNumber),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 220,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: strings.firstName),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              controller: dashboardController
                                                  .dateOfBirthController,
                                              onTap: () async {
                                                dashboardController
                                                        .dateOfBirthController
                                                        .text =
                                                    await _getDatePicker(
                                                        context);
                                                setState(() {});
                                              },
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.dateOfBirth),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.levelOfEducation),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText:
                                                      strings.telephoneNumber),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 220,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                                labelText: strings.distance),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: 445,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                    labelText: strings.address),
                                              ),
                                            ])),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GFButton(
                                  textStyle: STheme.textStyle,
                                  size: 45,
                                  color: GFColors.SUCCESS,
                                  text: strings.next,
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GFButton(
                                  textStyle: STheme.textStyle,
                                  size: 45,
                                  color: GFColors.DANGER,
                                  text: strings.cancel,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ));
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
      body: Column(
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
                    Row(children: []),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black87,
                        minimumSize: Size(88, 36),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                      ).copyWith(
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              );
                            return BorderSide(); // Defer to the widget's default.
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Looks like an OutlineButton'),
                    )
                  ],
                ),
              ),
              MdiManager(
                mdiController: mdiController,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

Future<String> _getDatePicker(BuildContext context) async {
  String? s = "";

  await JalaliCalendar.jalaliCalendarPicker(
    context: context,
    initialDatePickerMode: JalaliCalendar.DatePickerMode.year,
    selectedFormat: "yyyy/mm/dd",
  ).then((value) => s = value);
  debugPrint(s);
  var date = PersianTools.convertEnToFa(s!);
  debugPrint(date);
  return date;
}

class STextField extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final TextEditingController? controller;
  final Function()? onTap;
  final String? Function(String?)? validator;

  const STextField({
    Key? key,
    required this.title,
    this.width,
    this.height,
    this.controller,
    this.onTap,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 5.0, 2.5, 10.0),
      child: Container(
        width: width ?? 220,
        child: TextFormField(
          validator: validator ??
              (value) {
                if (value == null) {
                  return "field is empty";
                }
              },
          controller: controller,
          onTap: onTap != null ? onTap!.call() : () {},
          cursorColor: TextSelectionThemeData().cursorColor,
          decoration: InputDecoration(
            filled: true,
            labelText: title,
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14.0,
            ),
            focusColor: Theme.of(context).focusColor,
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
              borderSide:
                  BorderSide(width: 4, color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}

class SDateTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  const SDateTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  State<SDateTextField> createState() => _SDateTextFieldState();
}

class _SDateTextFieldState extends State<SDateTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(2.5, 5.0, 2.5, 10.0),
      child: Container(
        width: 200,
        child: TextFormField(
          onTap: () async {
            widget.controller.text = PersianTools.convertEnToFa(
                await JalaliCalendar.jalaliCalendarPicker(
              context: context,
              initialDatePickerMode: JalaliCalendar.DatePickerMode.year,
              selectedFormat: "yyyy/mm/dd",
            ) as String);
          },
          controller: widget.controller,
          cursorColor: TextSelectionThemeData().cursorColor,
          decoration: InputDecoration(
            filled: true,
            labelText: widget.title,
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            focusColor: Theme.of(context).focusColor,
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
              borderSide:
                  BorderSide(width: 4, color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}

_showSimpleModalDialog(context) {
  showDialog(
      useSafeArea: true,
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
          child: Container(
            // height: 800,
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0, // has the effect of softening the shadow
                    spreadRadius: 0.0, // has the effect of extending the shadow
                  )
                ],
              ),
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "Bottom Modal",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 5, right: 5),
                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff999999),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: const Color(0xfff8f8f8),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                              text:
                                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black,
                                  wordSpacing: 1)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}

_showBottomModal(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return new Container(
          // height: 800,
          color: Colors.transparent,
          child: new Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                )
              ],
            ),
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "Bottom Modal",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5, right: 5),
                        child: FlatButton(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff999999),
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: const Color(0xfff8f8f8),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:
                                "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                                wordSpacing: 1)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}
