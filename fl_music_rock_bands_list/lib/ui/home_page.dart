import 'package:fl_music_rock_bands_list/models/rock_band.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({key, @required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RockBand> list = [];

  @override
  void initState() {
    list = RockBand.getList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ReorderableListView(
        onReorder: onReorder,
        children: getListItems(),
      ),
      //backgroundColor: Colors.black,
    );
  }

  List<ListTile> getListItems() => list
      .asMap()
      .map((i, item) => MapEntry(i, buildTenableListTile(item, i)))
      .values
      .toList();

  ListTile buildTenableListTile(RockBand item, int index) {
    return ListTile(
      key: ValueKey(item),
      title: Text(
        item.name,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Text(
        "#${index + 1}",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  void onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) newIndex -= 1;

    setState(() {
      RockBand rb = list[oldIndex];

      list.removeAt(oldIndex);
      list.insert(newIndex, rb);
    });
  }
}
