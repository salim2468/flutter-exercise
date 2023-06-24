import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/model/exercise/exercise.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProivder = Provider((ref) => DioClient());

class DioClient {
  final Dio _dio = Dio();
  final _baseUrl = 'https://api.api-ninjas.com/v1/exercises';

  final String apiKEY = 'eSfgARDZCtdH0p5r6HVEBQ==WB0X9vY7k8cOtRhc';
  Future<ExerciseList> getExerciseOfCategory({String? endPoint}) async {
    debugPrint('$_baseUrl$endPoint');
    try {
      final response = await _dio.get(
        '$_baseUrl$endPoint',
        options: Options(headers: {
          'X-Api-Key': apiKEY,
        }),
      );
      //print(response);
      ExerciseList exerciseList =
          ExerciseList.fromJson({'exerciseList': response.data});
      return exerciseList;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }
}
