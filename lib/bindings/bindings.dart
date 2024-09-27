import 'package:bon_appetit/controllers/dashboard_controller.dart';
import 'package:get/get.dart';

class MyBindings extends  Bindings{
  @override 
  void dependencies(){
    Get.lazyPut(() => DashboardController());
  }
}
