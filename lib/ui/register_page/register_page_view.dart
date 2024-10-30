import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/widgets/text_form_widget.dart';

import '../../data/utilities/app_colors.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Sizi Bekliyoruz",
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: " !",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: AppColors.emeraldGreen, // WhatsApp yeşili
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormWidget(
                      controller: emailController,
                      hintText: "E-mail",
                      inputType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    const SizedBox(height: 24.0),
                    TextFormWidget(
                      controller: passwordController,
                      hintText: "Password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    TextFormWidget(
                      controller: rePasswordController,
                      hintText: "Re-password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(120),
                        foregroundColor: AppColors.white,
                        backgroundColor: AppColors.emeraldGreen,
                      ),
                      child: const Text(
                        "Kayıt Ol",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
