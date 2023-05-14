import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:task1/app/data/model/home_data_model.dart';

class HomeController extends GetxController {
  var dio = Dio();
  var homeModel = HomeDataModel().obs;
  Future getHomeData() async {
    var url = "https://api.inindia.cloud/api/ip/check";
    var response = await dio.get(url);
    if (response.statusCode == 200) {
      return homeModel(HomeDataModel.fromJson(response.data));
    }
  }

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }
}
