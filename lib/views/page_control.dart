import 'package:b_clips/data/notifiers.dart';
import 'package:b_clips/views/pages/home_page.dart';
import 'package:b_clips/views/pages/new_clip_page.dart';
import 'package:b_clips/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pageList = [HomePage(), NewClipPage()];

class PageControl extends StatelessWidget {
  const PageControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("b_clips"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.blue,
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pageList.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
