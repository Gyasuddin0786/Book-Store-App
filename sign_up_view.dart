import 'package:bookapp/view/login/help_us_view.dart';
import 'package:flutter/material.dart';

import '../../common/color_extenstion.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtUserName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign up",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextField(
                suffixIcon: Icon(Icons.person, color: TColor.text),
                controller: txtUserName,
                hintText: "Username",
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                  suffixIcon: Icon(Icons.email, color: TColor.text),
                  controller: txtEmail,
                  hintText: "Email Address",
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                suffixIcon: Icon(Icons.call, color: TColor.text),
                controller: txtMobile,
                hintText: "Mobile Phone",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                suffixIcon: Icon(Icons.code, color: TColor.text),
                controller: txtCode,
                hintText: "Group Special Code (optional)",
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                suffixIcon: Icon(Icons.remove_red_eye, color: TColor.text),
                controller: txtPassword,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isStay = !isStay;
                      });
                    },
                    icon: Icon(
                      isStay ? Icons.check_box : Icons.check_box_outline_blank,
                      color: isStay
                          ? TColor.primary
                          : TColor.subTitle.withOpacity(0.3),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Please sign me up for the monthly newsletter.",
                      style: TextStyle(
                        color: TColor.subTitle.withOpacity(0.3),
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RoundLineButton(
                title: "Sign Up",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HelpUsView(),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
