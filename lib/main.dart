import 'package:dialogs/all_dialog/custom_app_bar.dart';
import 'package:dialogs/all_dialog/custom_dialog.dart';
import 'package:dialogs/all_dialog/modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:dialogs/all_dialog/alert_dialog.dart';
//import 'package:dialogs/all_dialog/custom_app_bar.dart';
void main() {
runApp(const MaterialApp(debugShowCheckedModeBanner:
false, home: Dialog()));
}
class Dialog extends StatelessWidget {
const Dialog({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: CustomAppBar("Flutter dialogs example", title: '',),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
ElevatedButton(
onPressed: () =>
showAlert(context, "Hello alert", "Thisis from main to test alert"),
child: Text("Show Alert Dialog"),
),
ElevatedButton(
onPressed: () =>
showCustomDialog(context),
child: Text("Show Custom Dialog"),
),
ElevatedButton(
onPressed: () =>
showModalSheet(context),
child: Text("Show Modal Bottom Sheet"),
),
],
),
),
);
}
}