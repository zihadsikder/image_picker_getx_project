import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'select an image',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 48,),
            Obx(
              () =>GestureDetector(
                onTap: controller.pickImage,
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        width: 15,
                        color: Colors.grey.shade100
                      )
                    ),
                    child : ClipOval(
                        child: controller.imagePath.value.isEmpty ? Icon(Icons.person,size: 100)
                            :
                        Image.file(File(controller.imagePath.value),fit: BoxFit.cover,)
                    )

                   ),
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }
}
