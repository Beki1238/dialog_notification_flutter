import 'package:flutter/material.dart';
import 'package:dialogs/all_dialog/alert_dialog.dart';
void showCustomDialog(BuildContext context) {
TextEditingController _controller =
TextEditingController();
showDialog(
context: context,
builder: (BuildContext context) {
return Dialog(
shape:
RoundedRectangleBorder(borderRadius:
BorderRadius.circular(20.0)),

child: Container(
height: 200,
child: Padding(
padding: const EdgeInsets.all(12.0),
child: Column(
mainAxisAlignment:
MainAxisAlignment.center,
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
'I am custom dialog, you can enterbellow to display on alert dialog',
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 10),
TextField(
controller: _controller,
decoration: InputDecoration(
labelText: 'Enter Something',
hintText: 'Enter something',
border: OutlineInputBorder(
borderRadius:
BorderRadius.circular(10.0),
),
focusedBorder: OutlineInputBorder(
borderRadius:
BorderRadius.circular(10.0),

borderSide: BorderSide(
color: Colors.teal,
width: 2.0,
),
),
prefixIcon: Icon(Icons.input),
filled: true,
fillColor: Colors.grey[200],
hintStyle: TextStyle(color:
Colors.grey),
labelStyle: TextStyle(color:
Colors.teal),
),
),
SizedBox(height: 20),
Align(
alignment: Alignment.bottomRight,
child: TextButton(
onPressed: () {
Navigator.of(context).pop();
showAlert(context,
_controller.text,
"This is from custom dialog");
// Call the alert dialog with the input
},
child: Text("Submit"),
),
),
],
),
),

),
);
},
);
}