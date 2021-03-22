import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ListTipsTrik extends StatefulWidget {
  @override
  _ListTipsTrikState createState() => _ListTipsTrikState();
}

class _ListTipsTrikState extends State<ListTipsTrik> {
  List dataJSON;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/photos"),
        headers: {"Accept": "application/JSON"});

    this.setState(() {
      dataJSON = json.decode(hasil.body);
    });
  }

  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataJSON == null ? 0 : dataJSON.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          margin: EdgeInsets.fromLTRB(2, 5, 2, 5),
          child: Row(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(dataJSON[i]['url']),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 270.0,
                height: 60.0,
                padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Tips & Trick",
                      style:
                          TextStyle(fontSize: 14.0, color: Colors.cyanAccent),
                    ),
                    Text(
                      dataJSON[i]['title'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Minggu, 4 Mei 2020 | FourGrenn Company",
                      style: TextStyle(fontSize: 10.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
