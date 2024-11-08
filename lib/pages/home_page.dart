import 'package:flutter/material.dart';
import 'package:mc_project/controller/home_controller.dart';
import 'package:mc_project/pages/add_product_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(title: Text("Footwear Admin"),),

        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: Text("Title"),
            subtitle: Text('Price : 100'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {


              },
            ),
          );
        }),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProductPage());
            // Get.to(AddProductPage());
          },
          child: Icon(Icons.add),),
      );
    });
  }
}
  