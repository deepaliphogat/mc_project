import 'package:flutter/material.dart';
import 'package:mc_project/controller/home_controller.dart';
import 'package:mc_project/widgets/drop_down_btn.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(title: const Text("Add Product"),),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Add New Product', style: TextStyle(fontSize: 30,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold),),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Name"),
                      hintText: 'Enter your Product Name'
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Description"),
                      hintText: 'Enter your Product description'
                  ),
                  maxLines: 4,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Image URL"),
                      hintText: 'Enter your Image URL'
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Price"),
                      hintText: 'Enter your Product Price'
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Flexible(child: DropdownBtn(
                      items: ["Cate1", "Cate2", "Cate3"],
                      selectedItemText: "Category",
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },)),
                    Flexible(child: DropdownBtn(
                      items: ["Brand1", "Brand2", "Brand3"],
                      selectedItemText: "Brand",
                      onSelected: (selectedValue) {
                        print(selectedValue);
                      },)),
                  ],
                ),
                SizedBox(height: 10),
                Text("Offer Product?"),
                DropdownBtn(
                    items: ['true', 'false'], selectedItemText: "Offer ?",
                    onSelected: (selectedValue) {
                      print(selectedValue);
                    }),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,

                    ),
                    onPressed: () {}, child: Text("Add Product"))
              ],
            ),
          ),
        ),
      );
    });
  }
}
