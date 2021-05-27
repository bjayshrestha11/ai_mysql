import 'package:ai_mysql/helper/aiHelper.dart';
import 'package:ai_mysql/models/aisql.dart';
import 'package:get/get.dart';

class SingleController extends GetxController {

  @override
  void onInit(){
    final String? id = Get.parameters['id'];
    print(id);
    if(AiHelper.isValidId(id)){
      setSingleData(id);
    }else{
      // Get.offAllNamed("404");
      setSingleData(id);
    }
    super.onInit();
  }

  setSingleData(String? id){
    singleData.value = AiHelper.getSqlSingleById(id);
    update();
  }
  
  

  final Rx<AiSql> singleData = Rx<AiSql>(AiSql());
}
