import 'package:bookapp/common/color_extenstion.dart';
import 'package:bookapp/common_widget/round_button.dart';
import 'package:bookapp/common_widget/round_textfield.dart';
import 'package:bookapp/view/account/account_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtCity = TextEditingController();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {});
    }
  }

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
                "Edit Profile",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtName,
                hintText: "Enter name", 
             suffixIcon: Icon(Icons.person, color: TColor.text),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundTextField(
                controller: txtCity,
                hintText: "Enter city name",
                suffixIcon: Icon(Icons.home, color: TColor.text),

              ),
              
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: _pickImage,
                child: const Center(
                  child: Text(
                    'Select Profile Picture',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              RoundLineButton(
                title: "Update",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountView()));
                },
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
