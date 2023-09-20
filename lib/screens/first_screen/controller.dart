import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:second_api_project/models/ProductModel.dart';
import 'package:second_api_project/models/ProductModel.dart';
import 'package:second_api_project/services/ProductServices.dart';
import '../../models/ProductModel.dart';



class ProductController extends GetxController{

  final  ProductResults = <Products>[].obs;
  final services = ProductServices();
  final isLoading = false.obs;

  FinalFetch() async{
    isLoading.value = true;
    ProductResults.value = (await services.FetchProducts())!;
    isLoading.value = false;
  }

  @override
  void onInit() async {
    super.onInit();
    await FinalFetch();
    print("Lenght is ${ProductResults.length}");
    print(ProductResults[0]);
  }


}