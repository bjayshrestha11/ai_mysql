import '../pages/error_page/error_page_view.dart';
import '../pages/read_pdf/read_pdf_view.dart';
import '../pages/single/single_view.dart';
import '../pages/single/single_binding.dart';
import '../pages/home/home_view.dart';
import '../pages/home/home_binding.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SINGLE, 
      page:()=> SingleView(), 
      binding: SingleBinding(),
    ),
    GetPage(
      name: Routes.READ_PDF, 
      page:()=> ReadPdfView(),
    ),
    GetPage(
      name: Routes.ERROR_PAGE, 
      page:()=> ErrorPageView(),
    ),
  ];
}