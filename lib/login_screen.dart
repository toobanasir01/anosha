import 'package:flutter/material.dart';
import 'package:flutter_application_2/register_screen.dart';
import 'package:flutter_application_2/third_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController nameCtrl = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://img.freepik.com/free-vector/abstract-blur-pink-blue-gradient-background-design_53876-169254.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 75,
                ),
                Center(
                  child: Container(
                    height: 490,
                    width: 450,
                    color: Color.fromARGB(255, 44, 19, 153).withOpacity(0.6),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 90,
                          width: 85,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/banqabil_logo.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          'Login Here',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          color: Colors.white,
                          width: 350,
                          child: TextFormField(
                            controller: nameCtrl,
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "please Filled the field";
                              }
                              return null;
                            },
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Username',
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: Colors.white,
                          width: 350,
                          child: TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Password is Required"),
                              LengthRangeValidator(
                                  min: 5,
                                  max: 8,
                                  errorText:
                                      "Enter Strong Password minimum 5 to 8 words")
                            ]),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Password',
                              prefixIcon: const Icon(
                                Icons.password,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 125,
                          height: 45,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(190, 30, 50, 140),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              // print('Elevated button pressed');
                            },
                            child: GestureDetector(
                              onTap: () {
                                if (formKey.currentState!.validate() == true) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdScreen(
                                                name: '',
                                              )));
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don"t have an account?',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FirstScreenState(),
                                    ));
                              },
                              child: const Text(
                                '  SignUp',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
