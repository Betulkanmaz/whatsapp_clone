import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/people_list_page/people_list_page_view.dart';
import 'package:whatsapp_clone/ui/register_page/register_page_view.dart';

import '../../data/utilities/app_colors.dart';
import '../widgets/text_form_widget.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final loginProvider = Provider.of<LoginPageController>(context);
    //TODO: burda tanimlama yaptim diger yapilandirmalari hocanin repositoryden alabiliriz
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
                      text: "Tekrar Hoş Geldiniz",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
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
                    const SizedBox(height: 20.0),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Hesabınız yok mu? ",
                            style: TextStyle(
                              color: AppColors.darkGrey,
                            ),
                          ),
                          TextSpan(
                            text: "Kayıt olun!",
                            style: const TextStyle(
                              color: AppColors.emeraldGreen,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPageView(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PeopleListPageView(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(120),
                        foregroundColor: AppColors.white,
                        backgroundColor: AppColors.emeraldGreen,
                      ),
                      child: const Text(
                        "Giriş",
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
