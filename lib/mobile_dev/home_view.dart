import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomeView extends StatefulWidget {
  _MyHomeViewState createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  final _formKey = GlobalKey<FormState>();
  String Name = "";
  String Pass = "";
  String Email = "";
  String ph = "";
  final NameController = TextEditingController();
  final PassController = TextEditingController();
  final EmailController = TextEditingController();
  final phController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name:',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 10.0),
                  ),
                  controller: NameController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Requirred Name";
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 10.0,
                      backgroundColor: Colors.red[50],
                    ),
                  ),
                  controller: PassController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Requirred Password';
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail:',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 10.0),
                  ),
                  controller: EmailController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Requirred E-Mail';
                    } else if (!value.contains('@')) {
                      return "Email must contains '@' eg. xyz@gmail.com";
                    }
                    ;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone No:',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 10.0,
                    ),
                  ),
                  controller: phController,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Requirred Phone Number';
                    }
                  },
                ),
              ),
              RaisedButton(
                onPressed: () => {
                  if (_formKey.currentState!.validate())
                    setState(() {
                      Name = NameController.text;
                      Pass = PassController.text;
                      Email = EmailController.text;
                      ph = phController.text;
                    })
                },
                child: Text('Submit'),
                color: Colors.amber,
              ),
              Center(
                  child: Column(
                children: [
                  Text('Name: $Name'),
                  Text('Password: $Pass'),
                  Text('E-Mail: $Email'),
                  Text('Phone No: $ph')
                ],
              ))
            ],
          )),
    ));
  }
}
