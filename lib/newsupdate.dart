import 'package:flutter/material.dart';
import 'package:newsupdate_fourgreen/components/carousel_video.dart';
// import 'package:newsupdate_fourgreen/components/fab_buat_berita.dart';
import 'package:newsupdate_fourgreen/components/rounded_search_field.dart';
import 'package:newsupdate_fourgreen/components/tips_and_trik_list_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewsUpdate extends StatefulWidget {
  @override
  _NewsUpdateState createState() => _NewsUpdateState();
}

Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
Icon icont = new Icon(Icons.shopping_cart_outlined);
Icon iconb = new Icon(Icons.arrow_back);

class _NewsUpdateState extends State<NewsUpdate> {
  List<Widget> containers = [
    Container(
      child: ListTipsTrik(),
    ),
    Container(
      color: Colors.green[600],
    ),
    Container(
      color: Colors.green[700],
    ),
  ];

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        "Tips & Trick",
        style: TextStyle(color: Colors.black, fontSize: 10.0),
      ),
    ),
    Tab(
      child: Text(
        "Opini Farmer",
        style: TextStyle(color: Colors.black, fontSize: 10.0),
      ),
    ),
    Tab(
      child: Text(
        "Review Hidroponik",
        style: TextStyle(color: Colors.black, fontSize: 10.0),
        maxLines: 1,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          actions: <Widget>[
            RoundedSearchField(),
            IconButton(
              icon: iconc,
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Fungsi button ini belum ada :)",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                );
              },
            ),
            IconButton(
              icon: icont,
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Fungsi button ini belum ada :)",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                );
              },
            ),
          ],
          leading: IconButton(
            icon: iconb,
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Fungsi button ini belum ada :)",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
              );
            },
          ),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.green[700],
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "BERITA",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 30,
              child: TabBar(tabs: myTabs),
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: TabBarView(
                children: containers,
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("VIDEO TERKINI",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Video Terkini",
                          style: TextStyle(
                              color: Colors.cyanAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: VideoTerkini(),
                  ),
                ],
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Fungsi button ini belum ada :)",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
            );
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
