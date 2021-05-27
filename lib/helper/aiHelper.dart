import 'package:ai_mysql/data/aiSqlJson.dart';
import 'package:ai_mysql/models/aisql.dart';
import 'package:get/get.dart';

class AiHelper {
  static List<AiSql> getSqlList() {
    List<AiSql> data = AiSqlJson.data.map((e) {
      return AiSql.fromMap(e);
    }).toList();
    return data;
  }

  static bool isValidId(String? id) {
    var data = AiSqlJson.data.where((aisql) {
      return AiSql.fromMap(aisql).id.toString() == id.toString();
    }).toList();
    if (data.isEmpty) {
      print("Invalid id: $id");
      return false;
    }
    return true;
  }

  static AiSql getSqlSingleById(String? id) {
    try {
      var data = AiSqlJson.data.where((aisql) {
        return AiSql.fromMap(aisql).id.toString() == id.toString();
      }).toList()[0];
      if (data.isEmpty) {
        print("Cannot find Sql with id $id");
      }
      return AiSql.fromMap(data);
    } catch (e) {
      Get.offAllNamed("/404");
      return AiSql();
    }
  }
}
