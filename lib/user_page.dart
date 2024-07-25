import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//void main() => runApp(const UserPage());

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MyCustomForm()
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('res/images/bg.jpg').image,
                fit: BoxFit.cover)),
        child: Form(
          key: _formKey,
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 55.0, left: 25.0, right: 25.0, bottom: 20.0),
                        child: Text(
                          "MANAGE  PROFILE",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 26.0,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Image.asset(
                          "res/images/icon.png",
                          scale: 3,
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 40.0),
                          child: Text(
                            'Name',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'Company Name',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter company name';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'Email',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'Company Phone No.',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          keyboardType: TextInputType.number,
                          maxLength: 12,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter phone number';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'Address',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'UST -ID',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter UST -ID';
                            }
                            return null;
                          },
                        ),
                      ),

                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 15.0),
                          child: Text(
                            'Select Language',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: DropdownButton<String>(
                            items: <String>['Java', 'Python', 'Swift', 'Kotlin']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),

                      const SizedBox(height: 25.0),
                      RaisedButton(
                        color: Colors.lightBlue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 9.0),
                        textColor: Colors.black,
                        child: const Text(
                          'UPDATE',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Scaffold.of(context);
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => leadDialog);
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ],
                  ),




        ),
      ),
    );
  }
}

Dialog leadDialog = Dialog(
  child: Container(
    height: 100.0,
    width: 100.0,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              'Your data updated successfully',
              style: TextStyle(color: Colors.green, fontSize: 22.0),
            ),
          ),
        ),
      ],
    ),
  ),
);
