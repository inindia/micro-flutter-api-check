import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Obx(
          () => controller.homeModel.value.areaCode != null
              ? ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.location_on,
                                color: Colors.red),
                            title: const Text('Area Code'),
                            subtitle: Text(
                              controller.homeModel.value.areaCode.toString(),
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.location_city,
                                color: Colors.blue),
                            title: const Text('City Name'),
                            subtitle: Text(
                              controller.homeModel.value.cityName.toString(),
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            leading:
                                const Icon(Icons.flag, color: Colors.green),
                            title: const Text('Country Code'),
                            subtitle: Text(
                              controller.homeModel.value.countryCode.toString(),
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            leading:
                                const Icon(Icons.public, color: Colors.orange),
                            title: const Text('Country Name'),
                            subtitle: Text(
                              controller.homeModel.value.countryName.toString(),
                              style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Add more ListTiles for each data point
                        ],
                      ),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
