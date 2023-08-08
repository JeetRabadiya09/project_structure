import 'package:flutter/material.dart';
import 'package:project_structure/res/constant/app_assets.dart';
import 'package:project_structure/view/home/sign_up.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_strings.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppAssets.imagesignin),
          ),
        ),
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.all(screenWidth / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return "Enter email id ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: AppStrings.email,
                    hintText: "Enter email ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (!RegExp(r"^[a-zA-Z0-9]{6}$").hasMatch(value!)) {
                      return "Enter Passcode";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0.8, color: Color(0x8EB3B3B3)),
                    ),
                    // contentPadding: const EdgeInsets.all(00),
                    isDense: true,
                    labelText: AppStrings.passcode,
                    hintText: "Enter passcode ",
                    contentPadding: const EdgeInsets.all(12),
                    hintStyle: const TextStyle(
                        color: Color(0xFFB3B3B3),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: Container(
                    height: screenHeight / 15,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      AppStrings.login,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint("is valid");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    } else {
                      debugPrint("is not valid");
                    }
                  },
                  child: Container(
                    height: screenHeight / 15,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.imagegoogle,
                            width: screenWidth / 10, height: screenHeight / 10),
                        SizedBox(
                          width: screenWidth / 50,
                        ),
                        const Text(
                          AppStrings.logingoogle,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      // style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 18),
                      children: [
                        TextSpan(
                            text: AppStrings.richone,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                              fontFamily: "Poppins",
                            )),
                        TextSpan(
                            text: AppStrings.richtwo,
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColors.orangetwo,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
