import 'package:bookapp/common/color_extenstion.dart';
import 'package:bookapp/view/account/email_code_verifi.dart';
import 'package:flutter/material.dart';

import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController txtEmail = TextEditingController();

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
                "Forgot Password",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                // suffixIcon: const Icon(Icons.email),
                controller: txtEmail,
                hintText: "Email Address",
                suffixIcon: Icon(Icons.email, color: TColor.text),

              ),
              const SizedBox(
                height: 25,
              ),
              RoundLineButton(
                title: "Send",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EmailVerification()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
