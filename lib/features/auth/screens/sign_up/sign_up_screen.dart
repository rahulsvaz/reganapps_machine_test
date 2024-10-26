
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../const/colors_class.dart';
import '../../../../const/lottie_class.dart';
import '../../../../const/size.dart';
import '../../../../const/text_style.dart';
import '../../../../const/validators.dart';
import '../../../../widgets/already_have_an_account_button.dart';
import '../../../../widgets/color_border.dart';
import '../../../../widgets/primary_button.dart';
import '../../../../widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController(text: "mrsvaz@icloud.com");
  final TextEditingController _passwordController = TextEditingController(text: "Readytorace");
  final TextEditingController _nameController = TextEditingController(text: "rahul");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Lottie.asset(LottieFiles.signup,
                  height: deviceHeight(context) * .20),
            ),
            PrimaryTextField(
              controller: _nameController,
              validator: Validators.nameValidator,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              label: "Name",
              labelStyle: TextStyleClass.bonaGray15,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              cursorColor: ColorsClass.lightGray,
              borderWidth: 2,
              borderColor: ColorsClass.lightGray,
              borderRadius: BorderRadius.circular(16),
            ),
            setHeight(30),
            PrimaryTextField(
              controller: _emailController,
              validator: Validators.emailValidator,
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              label: "Email",
              labelStyle: TextStyleClass.bonaGray15,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              cursorColor: ColorsClass.lightGray,
              borderWidth: 2,
              borderColor: ColorsClass.lightGray,
              borderRadius: BorderRadius.circular(16),
            ),
            setHeight(30),
            PrimaryTextField(controller: _passwordController,
              validator: Validators.passwordValidator,
              surffix: IconButton(
                icon: const Icon(
                  Icons.remove_red_eye_rounded,
                  color: ColorsClass.grey,
                ),
                onPressed: () {},
              ),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              label: "Password",
              labelStyle: TextStyleClass.bonaGray15,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              cursorColor: ColorsClass.lightGray,
              borderWidth: 2,
              borderColor: ColorsClass.lightGray,
              borderRadius: BorderRadius.circular(16),
            ),
            setHeight(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: PrimaryButton(

                callBack: () {
                  if (_formKey.currentState!.validate()) {

                  } else {}
                },
                backGroundColor: ColorsClass.primaryColorPurple,
                labelColor: ColorsClass.white,
                height: 50,
                borderRadius: 10,
                width: double.infinity,
                label: "SignUp",
              ),
            ),
      setHeight(20),
            AlreadyHaveAnAccountButton(
              onTap: () {
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
