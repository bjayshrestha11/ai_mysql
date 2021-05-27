import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/mysqlBgTechno.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "404 ! Page Not Found",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                label: Text("Go to home"),
                onPressed: () {
                  Get.offAllNamed("/");
                },
                icon: Icon(Icons.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
