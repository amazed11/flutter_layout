import 'package:flutter/material.dart';
import 'package:flutter624/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            Icon(
              Icons.chat_bubble_outline,
            ),
            Text(
              "Chat",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      body: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    color: Colors.amber,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Center(
                      child: Text(
                        "This is Container",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.amberAccent,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            color: Colors.blue,
                            height: MediaQuery.of(context).size.height * 0.50,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100.0,
                                    width: 100.0,
                                    color: Colors.cyan,
                                    child: Center(
                                      child: Icon(
                                          Icons.access_time_filled_rounded,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 100.0,
                                    color: Colors.deepOrange,
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 100.0,
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.red,
                            height: MediaQuery.of(context).size.height * 0.50,
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  20,
                                  (index) => Row(
                                    children: [
                                      Icon(
                                        Icons.access_alarm,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Our $index text",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black38,
                            height: MediaQuery.of(context).size.height * 0.50,
                            width: MediaQuery.of(context).size.width * 0.35,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              CustomButton(
                title: "Login",
                ontap: () {
                  print("I am login");
                },
              ),
              CustomButton(
                title: "Register",
                ontap: () {
                  print("I am register");
                },
              ),
              CustomButton(
                title: "Show Profile",
                ontap: () {
                  print("I am show profile");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
