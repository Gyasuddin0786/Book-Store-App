import 'package:bookapp/common/color_extenstion.dart';
import 'package:bookapp/common_widget/round_button.dart';
import 'package:bookapp/common_widget/round_textfield.dart';
import 'package:bookapp/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';

class ConfNewPassword extends StatefulWidget {
  const ConfNewPassword({super.key});

  @override
  State<ConfNewPassword> createState() => _ConfNewPasswordState();
}

class _ConfNewPasswordState extends State<ConfNewPassword> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                "New Password",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                suffixIcon:
                    Icon(Icons.remove_red_eye_outlined, color: TColor.text),
                controller: txtPassword,
                hintText: "New Password",
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextField(
                suffixIcon: Icon(Icons.remove_red_eye, color: TColor.text),
                controller: txtConfPassword,
                hintText: "Conf Password",
              ),
              const SizedBox(
                height: 20,
              ),
              RoundLineButton(
                title: "Submit",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainTabView()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
