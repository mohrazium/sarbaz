import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sarbaz/src/app/utility/utility.dart';

class DashboardDesktopView extends StatefulWidget {
  @override
  State<DashboardDesktopView> createState() => _DashboardDesktopViewState();
}

class _DashboardDesktopViewState extends State<DashboardDesktopView> {
  late MdiController mdiController;

  @override
  void initState() {
    super.initState();

    mdiController = MdiController(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.group,
                    size: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 80,
                    child: Center(
                      child: Text(strings.dashboard),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  MaterialButton(
                    //TODO: make button like toggle buttons
                    onPressed: () {},
                    color: Colors.amber,
                    child: Container(
                        width: 100,
                        height: 80,
                        child: Center(child: Text(strings.new_soldier))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    //TODO: make button like toggle buttons
                    onPressed: () {
                      mdiController.addWindow(
                          width: 100,
                          height: 100,
                          context: context,
                          title: "new sarbaz",
                          body: Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                          ));
                    },
                    color: Colors.amber,
                    child: Container(
                        width: 100,
                        height: 80,
                        child: Center(child: Text("پست"))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    //TODO: make button like toggle buttons
                    onPressed: () {
                      mdiController.addWindow(
                          width: 576,
                          height: 720,
                          context: context,
                          title: "new sarbaz",
                          body: Container(
                           
                            color: Theme.of(context).hoverColor,
                          ));
                    },
                    color: Colors.amber,
                    child: Container(
                        width: 100,
                        height: 80,
                        child: Center(child: Text("مرخصی"))),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                  ),
                  MaterialButton(
                    //TODO: make button like toggle buttons
                    onPressed: () {
                      _showBottomModal(context);
                    },
                    color: Colors.amber,
                    child: Container(
                        width: 100,
                        height: 80,
                        child: Center(child: Text("سرباز جدید"))),
                  ),
                  GFToggle(onChanged: (litener){}, value:true),
                  GFToggle(onChanged: (litener){}, value:false),
                  GFToggle(onChanged: (litener){}, value:false),
                  GFToggle(onChanged: (litener){}, value:false),
                  GFToggle(onChanged: (litener){}, value:false),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GFButton(
                    shape: GFButtonShape.pills,
                    onPressed: () {
                      _showSimpleModalDialog(context);
                    },
                    text: strings.new_soldier,
                    size: 60,
                    icon: Icon(
                      Icons.person_add_alt_1_rounded,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Scaffold(
            body: MdiManager(
              mdiController: mdiController,
            ),
          ),
        ),
      ],
    );
  }
}

class SoldiersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
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
