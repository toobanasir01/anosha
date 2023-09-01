import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FirstScreenState extends StatefulWidget {
  const FirstScreenState({Key? key}) : super(key: key);

  @override
  State<FirstScreenState> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreenState> {
  @override
  Widget build(BuildContext context) {
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: "required"),
      LengthRangeValidator(
          min: 4, max: 7, errorText: "Enter Strong password min 5 to 8 words")
    ]);
    dynamic password;
    GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

    return Form(
      key: formKey2,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://img.freepik.com/free-vector/abstract-blur-pink-blue-gradient-background-design_53876-169254.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  Center(
                    child: Expanded(
                      child: Container(
                        height: 490,
                        width: 380,
                        color:
                            Color.fromARGB(255, 44, 19, 153).withOpacity(0.6),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Expanded(
                              child: Container(
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
                            ),
                            const Text(
                              'Sign Up Here',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.white,
                              width: 350,
                              child: TextFormField(
                                validator:
                                    RequiredValidator(errorText: "Required*"),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'Username',
                                  labelText: 'Username',
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.white,
                              width: 350,
                              child: TextFormField(
                                validator: MultiValidator([
                                  EmailValidator(
                                      errorText: "enter a valid email address"),
                                  RequiredValidator(
                                      errorText: "this field is required")
                                ]),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'Email',
                                  labelText: 'Email',
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.email_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.white,
                              width: 350,
                              child: TextFormField(
                                onChanged: (val) => password = val,
                                validator: passwordValidator,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'Password',
                                  labelText: 'Password',
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.password,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              color: Colors.white,
                              width: 350,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  hintText: 'confrim password',
                                  labelText: 'confirm password',
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.password,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 165,
                              height: 45,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(190, 30, 50, 140),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                                onPressed: () {
                                  if (formKey2.currentState!.validate() ==
                                      true) {
                                    Navigator.pop(context);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Please filled all field")));
                                  }
                                },
                                child: const Text(
                                  "Create Account",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don"t have an account',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const FirstScreen(),
                                        ));
                                  },
                                  child: const Text(
                                    '   Login',
                                    style: TextStyle(
                                        fontSize: 20,
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
