import 'package:flutter_exercise/config/dio_client.dart';

class CategoryContrller {
  DioClient dioClient = DioClient();

  getCatagory() async {
    try {
      final response = await dioClient.get();
    } catch (e) {
      print(e);
    }
  }
}
