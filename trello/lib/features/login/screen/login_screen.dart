import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _fromKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  bool _isSignHoverd = false;
  bool _isLoginHoverd = false;

  //e-mail validation
  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Please Enter Your Email.";
    }
    RegExp emailRegExp = RegExp(r'^[\w\.-]{4,}@[\w-]{2,}(\.[\w-]{2,})+$');
    if (!emailRegExp.hasMatch(value)) {
      return "Please Enter a Valid Email.";
    }
    return null;
  }

  //password validation
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Your Password.";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters long.";
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "Password must contain at least one lowercase letter.";
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return "Password must contain at least one number.";
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return "Password must contain\nat least one special character.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.softGrey_board,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(
                    255,
                    136,
                    136,
                    136,
                  ).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: 400,
            height: 600,
            child: Form(
              key: _fromKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 21, 183, 167),
                      ),
                    ),
                  ),
                  Text(
                    "Welcome back! login to your account.",
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(102, 86, 85, 85),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(
                                135,
                                136,
                                136,
                                136,
                              ).withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: _validateEmail,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.white,
                            hint: Text(
                              "e-mail",
                              style: TextStyle(
                                color: const Color.fromARGB(102, 86, 85, 85),
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(
                                135,
                                136,
                                136,
                                136,
                              ).withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          keyboardType: TextInputType.emailAddress,
                          validator: _validatePassword,
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: const Color.fromARGB(102, 86, 85, 85),
                                  size: 20,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                            ),
                            filled: true,
                            fillColor: AppColors.white,
                            hint: Text(
                              "password",
                              style: TextStyle(
                                color: const Color.fromARGB(102, 86, 85, 85),
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: 275,
                    height: 45,
                    child: MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          _isSignHoverd = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _isSignHoverd = false;
                        });
                      },
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isSignHoverd
                              ? const Color.fromARGB(255, 23, 193, 176)
                              : const Color.fromARGB(255, 24, 193, 176),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {
                          if (_fromKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign Up Successful!')),
                            );
                            Navigator.pushNamed(context, "/login");
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: const Color.fromARGB(102, 86, 85, 85),
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 5),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) {
                          setState(() {
                            _isLoginHoverd = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _isLoginHoverd = false;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signUp");
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: _isLoginHoverd
                                  ? const Color.fromARGB(237, 41, 125, 125)
                                  : const Color.fromARGB(255, 20, 193, 176),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Divider(
                    color: const Color.fromARGB(102, 86, 85, 85),
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Or Continue with Acount",
                    style: TextStyle(
                      color: const Color.fromARGB(102, 86, 85, 85),
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          radius: 17,
                          child: Image.asset(
                            "assets/images/Logo-google-icon-PNG.png",
                          ),
                        ),
                      ),
                      SizedBox(width: 17),
                      IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          radius: 17,
                          child: Image.asset("assets/images/github.png"),
                        ),
                      ),
                      SizedBox(width: 17),
                      IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          radius: 17,
                          child: Image.asset(
                            "assets/images/pngimg.com - microsoft_PNG5.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
