import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/mysqlBg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   alignment: Alignment.centerRight,
            //   margin: EdgeInsets.all(50),
            //   child: ElevatedButton(
            //     child: Text("Read Docs"),
            //     onPressed: () {
            //       Get.toNamed(Routes.READ_PDF);
            //     },
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 80.0),
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  hintText: 'Search for MySQL Query',
                  fillColor: Colors.grey.withOpacity(0.5),
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 50)
                ),
                onChanged: (val) {
                  controller.setQuery(val);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Obx(
              () => Container(
                child: Flexible(
                  child: ListView.builder(
                    itemCount: controller.aiSqlSugggestionList.value.length,
                    itemBuilder: (_, i) {
                      return AiSqlCard(
                        key: Key(controller.aiSqlSugggestionList.value[i].id
                            .toString()),
                        id: controller.aiSqlSugggestionList.value[i].id,
                        title: controller.aiSqlSugggestionList.value[i].title,
                        query: controller
                            .aiSqlSugggestionList.value[i].queries![0].query,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AiSqlCard extends StatelessWidget {
  const AiSqlCard({
    Key? key,
    @required this.title,
    @required this.id,
    @required this.query,
  }) : super(key: key);

  final String? title;
  final String? query;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/single/${id.toString()}");
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
        child: Card(
          color: Colors.lightBlue.withOpacity(0.4),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("$title : \n$query"),
          ),
        ),
      ),
    );
  }
}
