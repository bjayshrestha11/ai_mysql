import 'package:ai_mysql/helper/aiHelper.dart';
import 'package:ai_mysql/models/aisql.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    aiSqlList.value = AiHelper.getSqlList();
    super.onInit();
    update();
  }

  final Rx<List<AiSql>> aiSqlList = Rx<List<AiSql>>([]);
  final Rx<List<AiSql>> aiSqlSugggestionList = Rx<List<AiSql>>([]);

  final Rx<String> query = Rx<String>("");

  void setQuery(String val) {
    query.value = val;
    suggestionList();
    update();
  }

  void suggestionList() {
    if (query.value != "") {
      aiSqlSugggestionList.value = aiSqlList.value.where((aisql) {
        bool matchedTitle= aisql.title!.toLowerCase().contains(query.value.toLowerCase());
        bool matchedDescription = aisql.description!.toLowerCase().contains(query.value.toLowerCase());
        bool matchedQuery = aisql.queries!.map((e){
          return e.query!.toLowerCase().contains(query.value.toLowerCase());
        }).toList()[0];
        return (matchedTitle || matchedDescription || matchedQuery);

      }).toList();
      print("SuggestionList: ${aiSqlSugggestionList.value.length}");
      update();
    }else{
       aiSqlSugggestionList.value = [];
    }
  }
}
