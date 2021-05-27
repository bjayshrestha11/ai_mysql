import 'package:ai_mysql/helper/aiHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'single_controller.dart';

class SingleView extends GetView<SingleController> {
  final id = Get.parameters['id'];

  @override
  Widget build(BuildContext context) {
    if (!(AiHelper.isValidId(id))) {
      Get.offAllNamed("/404");
    }
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/mysqlBgTechno.png",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.3),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${controller.singleData.value.title}",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "${controller.singleData.value.description}",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.grey,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 100),
                padding: const EdgeInsets.only(left: 20.0, top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: controller.singleData.value.queries!.map((e) {
                    return SelectableText(
                      "${e.query}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.left,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                label: Text("Back"),
                onPressed: () {
                  Get.offNamed("/");
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
