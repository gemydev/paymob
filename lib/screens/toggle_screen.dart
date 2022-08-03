import 'package:flutter/material.dart';
import 'package:paymob/screens/card_screen.dart';
import 'package:paymob/screens/kiosk_screen.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CardScreen()));
                  },
                  child: Container(
                    child: const Center(
                      child: Text("Payment With Card",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const KioskScreen()));
                  },
                  child: Container(
                    child: const Center(
                      child: Text("Payment With Ref Code",
                          style: TextStyle(fontSize: 35, color: Colors.white)),
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

