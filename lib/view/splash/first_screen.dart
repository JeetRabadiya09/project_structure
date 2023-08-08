import 'package:flutter/material.dart';
import 'package:project_structure/res/constant/app_assets.dart';

import '../home/sign_in.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // ignore: non_constant_identifier_names
  Navigate() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppAssets.imagelogo,
              height: 30,
              width: 163,
            ),
          ),
        ],
      ),
    );
  }
}
