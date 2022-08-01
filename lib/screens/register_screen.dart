import 'package:flutter/material.dart';

import '../widgets/components.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailNameController = TextEditingController();
  final TextEditingController _phoneNameController = TextEditingController();
  final TextEditingController _priceNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Register Screen",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),
                defaultFormField(
                  controller: _firstNameController,
                  label: "First Name",
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Your First Name";
                    }
                    return null;
                  },
                  type: TextInputType.name,
                  prefix: Icons.person,
                ),
                const SizedBox(height: 15),
                defaultFormField(
                  controller: _lastNameController,
                  label: "Last Name",
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Your Last Name";
                    }
                    return null;
                  },
                  type: TextInputType.name,
                  prefix: Icons.person,
                ),
                const SizedBox(height: 15),
                defaultFormField(
                  controller: _emailNameController,
                  label: "Email",
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
                    }
                    return null;
                  },
                  type: TextInputType.emailAddress,
                  prefix: Icons.email,
                ),
                const SizedBox(height: 15),
                defaultFormField(
                  controller: _phoneNameController,
                  label: "Phone",
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Your Phone";
                    }
                    return null;
                  },
                  type: TextInputType.phone,
                  prefix: Icons.phone,
                ),
                const SizedBox(height: 15),
                defaultFormField(
                  controller: _priceNameController,
                  label: "Price",
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter The Price";
                    }
                    return null;
                  },
                  type: TextInputType.number,
                  prefix: Icons.price_check,
                ),
                const SizedBox(height: 20),
                defaultButton(text: 'Pay', function: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
