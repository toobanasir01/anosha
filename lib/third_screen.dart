import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_home_screen.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key, required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/free-vector/vibrant-fluid-gradient-background-with-curvy-shapes_1017-32108.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: GestureDetector(
                      child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            size: 30.9,
                            color: Colors.black,
                          )),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                            'Welcome To do App',
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.logout,
                                      size: 30.9,
                                      color: Colors.black,
                                    )),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ToDoHomeScreen(),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
