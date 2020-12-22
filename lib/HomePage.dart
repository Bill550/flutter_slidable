import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:assignment_no3/model/email.dart';
import 'package:assignment_no3/utils/data.dart';
import 'package:assignment_no3/utils/snakbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Email> items = List.of(Data.emails);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, index) {
          final item = items[index];
          return Slidable(
            actionExtentRatio: 0.25,
            actionPane: SlidableDrawerActionPane(),
            actions: [
              IconSlideAction(
                caption: 'Archive',
                color: Colors.amber,
                icon: Icons.archive,
                onTap: () => SBar.showSnackBar(context, 'Archive'),
              ),
              IconSlideAction(
                caption: 'Share',
                color: Colors.blue,
                icon: Icons.share,
                onTap: () => SBar.showSnackBar(context, 'Share'),
              ),
            ],
            secondaryActions: [
              IconSlideAction(
                caption: 'More',
                color: Colors.grey,
                icon: Icons.more_horiz,
                onTap: () => SBar.showSnackBar(context, 'More'),
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => SBar.showSnackBar(context, 'Deleted'),
              ),
            ],
            child: ListTile(
              contentPadding: EdgeInsets.all(5),
              leading: Text(item.email),
              title: Text(item.title),
              trailing: Text(item.message),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}