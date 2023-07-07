import 'package:flutter/material.dart';
import 'package:flutter_exercise/common/loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/dio_client.dart';
import '../../../model/exercise/exercise.dart';
import '../../category/custom_widget/category_list_card.dart';

final difficultyListProvider = FutureProvider.autoDispose<ExerciseList>((ref) {
  final dioClient = ref.watch(dioClientProivder);
  final category = ref.watch(difficultyTitleProvider);

  return dioClient.getExerciseOfCategory(endPoint: '?difficulty=$category');
});

final difficultyTitleProvider = StateProvider((ref) => '');

class DifficultyListPage extends ConsumerWidget {
  const DifficultyListPage({required this.categoryTitle, super.key});
  final String categoryTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.watch(difficultyListProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: categoryList.when(
            data: (data) => SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  itemCount: data.exerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = data.exerciseList[index];
                    // using CategoryListCard for Difficulty since response is of same type
                    return CategoryListCard(exercise);
                  },
                )),
            error: (error, stact) => Text(error.toString()),
            loading: () => const Loader()));
  }
}
