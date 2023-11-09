import 'package:flutter/material.dart';
import 'package:github_client/src/SecondRoute.dart';

class SignupFormWidget extends StatelessWidget {
  final double form_width = 400;
  final double form_height = 50;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: form_width,
                height: form_height,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: form_width,
              height: form_height,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: form_width,
              height: form_height,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: form_width,
              height: form_height,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondRoute()));
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Signup'),
            ),
          ),
        ],
      ),
    );
  }
}
