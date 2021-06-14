import 'package:flutter/material.dart';

class Additems extends StatefulWidget {
  @override
  State <StatefulWidget> createState(){
    return FormScreenState();
  }
}

class FormScreenState extends State<Additems> {
  late String _productname;
  late String _username;
  late String _price;
  late String _phoneNumber;
  late String _location;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildProductNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'ProductName'),
      validator: (String? value){
        if(value!.isEmpty){
          return 'ProductName is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _productname = value!;
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
  Widget? _buildPriceField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Price'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value){
        if(value!.isEmpty){
          return 'Price is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _price = value!;
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
      appBar: AppBar(title: Text("Add Item"), backgroundColor: Color(0xff5ac18e)),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formkey,
          child: ListView(
            children: <Widget>[
              _buildProductNameField(),
              _buildUserNameField(),
              _buildPriceField()!,
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
                  print(_productname),
                  print(_username),
                  print(_price),
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
