import 'package:assignmentwidget/Model/Homepage.dart';
import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form
  String _name = ''; // Variable to store the entered name
  String _email = ''; // Variable to store the entered email

  void _submitForm() {
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save the form data
      // You can perform actions with the form data here and extract the details
      print('Name: $_name'); // Print the name
      print('Email: $_email'); // Print the email
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey, // Associate the form key with this Form widget
        child: Padding(
          padding: EdgeInsets.all(16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4vJ_OWTlIYgn3gct91ug8z51tPL0y_Dhf5Q&usqp=CAU"),
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Name',
                  hintText: 'Enter your name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  fillColor: Colors.blue,
                  filled: true,

                ),
                validator: (value) {

                  if (value!.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email',
                  hintText: 'Enter your Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  fillColor: Colors.blue,
                  filled: true,
                  ),
                validator: (value) {

                  if (value!.isEmpty) {
                    return 'Please enter your email.'; // Return an error message if the email is empty
                  }
                  // You can add more complex validation logic here
                  return null; // Return null if the email is valid
                },
                onSaved: (value) {
                  _email = value!; // Save the entered email
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('submit'),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage(title: 'title')),
                      );
                    },
                    child: Text('Login'), ),
                  const SizedBox(width: 16),
                ],
              ),
            ],
          ),
        ),
        ),

    );
  }
}