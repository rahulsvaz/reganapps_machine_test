import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../const/colors_class.dart';
import '../../../../../const/lottie_class.dart';
import '../../../../../const/size.dart';
import '../../../../../const/text_style.dart';
import '../../../../../const/validators.dart';
import '../../../../../widgets/color_border.dart';
import '../../../../../widgets/dont_have_an_account.dart';
import '../../../../../widgets/forgot_password.dart';
import '../../../../../widgets/primary_button.dart';
import '../../../../../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController =
  TextEditingController(text: "mrsvaz@icloud.com");
  final TextEditingController _passwordController =
  TextEditingController(text: "Readytorace");

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
              padding: const EdgeInsets.symmetric(
                  vertical: 20, horizontal: 30),
              child: Lottie.asset(LottieFiles.login,
                  height: deviceHeight(context) * .30),
            ),
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
            PrimaryTextField(
              obscure: true,
              controller: _passwordController,
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

                },
                backGroundColor: ColorsClass.primaryColorPurple,
                labelColor: ColorsClass.white,
                height: 50,
                borderRadius: 10,
                width: double.infinity,
                label: "Login",
              ),
            ),
            setHeight(20),
            const Text(
              "Or",
              style: TextStyleClass.bonaGreyBold16,
            ),
            setHeight(20),
            ColorBorder(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              innerPadding: const EdgeInsets.all(10),
              borderRadius: 16,
              borderColor: ColorsClass.lightGray,

            ),
            setHeight(20),
            DontHaveAnAccountButton(
              onTap: () {

              },
            ),
            setHeight(20),
            ForgotPassword(
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}