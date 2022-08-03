
import 'package:flutter/material.dart';
import 'package:paymob/utils/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KioskScreen extends StatefulWidget {
  const KioskScreen({Key? key}) : super(key: key);

  @override
  State<KioskScreen> createState() => _KioskScreenState();
}

class _KioskScreenState extends State<KioskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const Text("You should go to any market to pay..." , style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              )),
              const SizedBox(height: 10,),
              const Text("This is the reference code" , style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
              const SizedBox(height: 10,),
              Text(refCode , style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
