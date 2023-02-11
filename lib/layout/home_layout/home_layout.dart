import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../../styles/theme/myColors.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key? key}) : super(key: key);
  static const String routName = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            Assets.imageLogin,
          ),
          width: double.infinity,
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "مرحباً",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1?.copyWith(

                      fontSize: 50
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text("الايميل"),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: GREEN_COLOR,
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: GREEN_COLOR,
                          width: 1.5,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please Enter a Valid Email";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: isPassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                      label: Text("كلمة المرور"),
                      suffixIcon: IconButton(
                          onPressed: () {
                            isPassword = !isPassword;
                            setState(() {
                              print(isPassword);
                            });
                          },
                          icon: isPassword
                              ? Icon(Icons.remove_red_eye_rounded)
                              : Icon(Icons.remove_red_eye_outlined)),
                      prefixIcon:
                          isPassword ? Icon(Icons.lock) : Icon(Icons.lock_open),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: GREEN_COLOR,
                          width: 1.5,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                          color: GREEN_COLOR,
                          width: 1.5,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: WHITE_COLORS,
                          backgroundColor: Buttom_COLOR, // foreground
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Text(
                          "دخـــول ",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
