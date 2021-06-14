//import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:developer';
class Addclients extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
      return FormScreenState();
      }
}

class FormScreenState extends State<Addclients> {
  late String _firstname;
  late String _lastname;
  late String  _email;
  late String _username;
  late String _password;
  late String _phoneNumber;
  late String _location;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildFisrtNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'FirstName'),
      validator: (String? value){
        this._firstname = value!;
        log("------->"+value!);
        if(value.isEmpty){
          return 'FirstName is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _firstname = value!;
      },
    );
  }
  Widget _buildLasttNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'LastName'),
      validator: (String? value){
        if(value!.isEmpty){
          log("----------------------->");
          return 'LastName is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _lastname = value!;
      },
    );
  }

  Widget _buildEmailField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value){
        if(value!.isEmpty){
          return 'Email is Required';
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }
        return null;
      },
      onSaved: (String? value) {
        _email   = value!;
      },
    );
  }
  Widget _buildUserNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'UserName'),
      validator: (String? value){
        if(value!.isEmpty){
          return 'UserName is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _username = value!;
      },
    );
  }
  Widget? _buildPasswordField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value){
        if(value!.isEmpty){
          return 'Password is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _password = value!;
      },
    );
  }
  Widget? _buildPhoneNumberField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String? value){
        if(value!.isEmpty){
          return 'Phone number is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _phoneNumber = value!;
      },
    );
  }
  Widget _buildLocationField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Location'),
      validator: (String? value){
        if(value!.isEmpty){
          return 'Location is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _location = value!;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Client"), backgroundColor: Color(0xff5ac18e)),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formkey,
            child: ListView(
        children: <Widget>[
          _buildFisrtNameField(),
          _buildLasttNameField(),
          _buildEmailField(),
          _buildUserNameField(),
          _buildPasswordField()!,
          _buildPhoneNumberField()!,
          _buildLocationField(),
          SizedBox(height: 100),
          RaisedButton(
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            onPressed: () => {
            if(!_formkey.currentState!.validate()){
            }
            else
              _formkey.currentState!.save(),
              print(_firstname),
              print(_lastname),
              print(_email),
              print(_username),
              print(_password),
              print(_phoneNumber),
              print(_location),
            },
          ),
        ],
        ),
        ),
      ),
    );
  }
}
