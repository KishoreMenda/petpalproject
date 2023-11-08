import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your mobile number';
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit mobile number';
    }
    return null;
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform sign-up or other actions here.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              controller: _firstNameController,
                              decoration: const InputDecoration(
                                hintText: 'First Name',
                                icon: Icon(Icons.person),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              controller: _lastNameController,
                              decoration: const InputDecoration(
                                hintText: 'Last Name',
                                icon: Icon(Icons.person),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                hintText: 'e-mail',
                                icon: Icon(Icons.email),
                              ),
                              validator: _validateEmail,
                            )),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              controller: _mobileNumberController,
                              decoration: const InputDecoration(
                                hintText: 'Mobile Number',
                                icon: Icon(Icons.phone_android),
                              ),
                              validator: _validateMobileNumber,
                            )),
                        ElevatedButton(onPressed: _submitForm, child: const Text('Sign Up')),
                        TextButton(onPressed: () {}, child: const Text('Already have an account? Sign In'))
                      ],
                    )))));
  }
}
