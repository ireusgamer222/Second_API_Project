import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_api_project/screens/first_screen/controller.dart';

class product_Screen extends StatelessWidget{

  final controller = Get.put(ProductController());


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Products",style: TextStyle(color: Colors.white),),
      ),
      body: Column(children: [
        const SizedBox(height: 20,),
        Expanded(child:
        Obx(() => (controller.isLoading.value)? const Text("Loading"):
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context,int index) {
          return Row(
            children: [
              Text(controller.ProductResults.value[index].title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          );
        }
        , separatorBuilder: (context,int index){
          return Column(children: [
            const SizedBox(height: 5,),
            Container(height: 5,width: double.infinity,color: Colors.grey,),
            const SizedBox(height: 5,)
          ],);
            },
            itemCount: controller.ProductResults.value.length), ),)
      ],),
    );
  }
}