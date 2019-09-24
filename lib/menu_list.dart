import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return new AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      title: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: TextField(
          autofocus: false,
          style: TextStyle(color: Color(0xFFbdc6cf)),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: '¿Qué quieres arreglar?',
            contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0, right: 14.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.7),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(25.7),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff005377),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 10.0),
          child: Icon(Icons.search, color: Colors.white,),
        ),
      ],
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
  
}