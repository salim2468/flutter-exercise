import 'package:dio/dio.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProivder = Provider((ref) => DioClient());

class DioClient {
  final Dio _dio = Dio();
  final _baseUrl = 'https://api.api-ninjas.com/v1/exercises';

  final String API_KEY = 'eSfgARDZCtdH0p5r6HVEBQ==WB0X9vY7k8cOtRhc';
  Future<ExerciseList> get({String? url}) async {
    print('$_baseUrl');
    try {
      final response = await _dio.get(
        '$_baseUrl$url',
        options: Options(headers: {
          'X-Api-Key': API_KEY,
        }),
      );
      //print(response);
      ExerciseList exerciseList =
          ExerciseList.fromJson({'exerciseList': response.data});
      return exerciseList;
    } catch (e) {
      print('sahdfkjahs');
      print(e);
      throw Exception(e);
    }
  }
}
