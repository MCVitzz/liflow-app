import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../objects/note.dart';

class NewNotePage extends StatefulWidget {
  State<StatefulWidget> createState() => NewNotePageState();
}

class NewNotePageState extends State<NewNotePage> {
  Note note = Note();
  final TextEditingController _titleCotroller = TextEditingController();
  final FocusNode _titleFocus = FocusNode();
  final FocusNode _notesFocus = FocusNode();
  String _msg;

  void initState() {
    super.initState();
    _titleCotroller.addListener(_printLatestValue);
  }

  void dispose() {
    super.dispose();
    _titleCotroller.dispose();
    _notesFocus.dispose();
    _titleFocus.dispose();
  }

  void _printLatestValue() async {
    note.title = _titleCotroller.text;
    sendRequest();
    setState(() {

    });
  }

  Future<void> sendRequest() async {
    sleep(Duration(seconds: 2));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          note.title == '' ? 'New Note' : note.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        actions: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 40),
              child: Center(
                child: Text(_msg ?? '',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ))
        ],
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          );
        }),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (text) {
              note.title = text;
            },
            autofocus: true,
            focusNode: _titleFocus,
            controller: _titleCotroller,
            onSubmitted: (term) {
              FocusScope.of(context).requestFocus(_notesFocus);
            },
            decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                hintText: 'Title',
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38)),
                contentPadding: EdgeInsets.all(16)),
          ),
          Expanded(
              child: TextField(
                  onChanged: (text) {
                    note.body = text;
                  },
                  autofocus: true,
                  maxLines: null,
                  focusNode: _notesFocus,
                  keyboardType: TextInputType.multiline,
                  expands: true,
                  decoration: InputDecoration(
                      hasFloatingPlaceholder: true,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      contentPadding: EdgeInsets.all(16))))
        ],
      ),
    );
  }
}
