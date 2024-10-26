
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../const/colors_class.dart';
import '../../../../const/lottie_class.dart';
import '../../../../const/size.dart';
import '../../../../const/text_style.dart';
import '../../../../const/validators.dart';
import '../../../../widgets/primary_button.dart';
import '../../../../widgets/text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
              child: Lottie.asset(
                LottieFiles.reset,
                height: deviceHeight(context) * .30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Don’t worry Enter your email and we’ll send you a link to reset your password.",
                style: TextStyleClass.bona20,
              ),
            ),
            setHeight(20),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: PrimaryButton(
                callBack: () {
                  if (_formKey.currentState!.validate()) {

                  }
                },
                backGroundColor: ColorsClass.primaryColorPurple,
                labelColor: ColorsClass.white,
                height: 50,
                borderRadius: 10,
                width: double.infinity,
                label: "Continue",
              ),
            ),
            setHeight(30),
            CupertinoButton(
              onPressed: () {
              },
              child: const Text(
                "Back To Login?",
                style: TextStyleClass.bonaPurpleBold15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
