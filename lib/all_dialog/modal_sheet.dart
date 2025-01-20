
import 'package:flutter/material.dart';
import 'package:dialogs/all_dialog/alert_dialog.dart';
void showModalSheet(BuildContext context) {
showModalBottomSheet(
context: context,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(top:
Radius.circular(25.0)),
),
backgroundColor: Colors.white,
builder: (BuildContext context) {
return Container(
padding: EdgeInsets.all(16.0),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.vertical(top:
Radius.circular(25.0)),
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: <Widget>[
ListTile(
leading: Icon(Icons.computer, color:
Colors.blue),
title: Text('Computer Science'),
onTap: () {
showAlert(
context,

"This is data from computer science send from model sheet",
"Computer Science");
},
),
Divider(),
ListTile(
leading: Icon(Icons.memory, color:
Colors.green),
title: Text('Information Technology'),
onTap: () {
showAlert(
context,
"This is data from InformationTechnology send from model sheet",
"Information Technology");
},
),
Divider(),
ListTile(
leading: Icon(Icons.code, color:
Colors.red),
title: Text('Software Engineering'),
onTap: () {
showAlert(
context,
"This is data from SoftwareEngineering send from model sheet",
"Software Engineering");
},
),

],
),
);
},
);
}