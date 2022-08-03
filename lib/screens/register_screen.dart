import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob/BL/Cubit/payment_cubit.dart';
import 'package:paymob/screens/toggle_screen.dart';

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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PaymentCubit(),
        child: BlocConsumer<PaymentCubit, PaymentState>(
          listener: (context, state) {},
          builder: (context, state) {
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
                          controller: _emailController,
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
                          controller: _phoneController,
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
                          controller: _priceController,
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
                        defaultButton(
                            text: 'Pay',
                            function: () async {
                              if (_formKey.currentState!.validate()) {
                                await PaymentCubit.get(context)
                                    .getOrderID(price: _priceController.text);
                                await PaymentCubit.get(context).getRefCode(
                                    price: _priceController.text,
                                    email: _emailController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                    phone: _phoneController.text);
                                await PaymentCubit.get(context).getTokenCard(
                                    price: _priceController.text,
                                    email: _emailController.text,
                                    firstName: _firstNameController.text,
                                    lastName: _lastNameController.text,
                                    phone: _phoneController.text);
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ToggleScreen()));
                              }
                              // PaymentCubit.get(context).getAuthToken();
                              // PaymentCubit.get(context).getOrderID(price: _priceController.text.toString());
                            })
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
