import 'package:flutter/material.dart';
import 'package:flutter_exercise/common/loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/detail_page.dart';
import '../../../config/dio_client.dart';
import '../../../constant/strings.dart';
import '../../../custom_widget/list_card.dart';
import '../../../model/exercise/exercise.dart';

final categoryListProvider = FutureProvider.autoDispose<ExerciseList>((ref) {
  final dioClient = ref.watch(dioClientProivder);
  final category = ref.watch(categoryTitleProvider);

  return dioClient.getExerciseOfCategory(
      endPoint: '?type=${categoryTypeEndpoints[category]}');
});

final categoryTitleProvider = StateProvider((ref) => '');

class CategoryListPage extends ConsumerWidget {
  const CategoryListPage({required this.categoryTitle, super.key});
  final String categoryTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.watch(categoryListProvider);
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
                    return ListCard(
                      exercise: exercise,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  exercise,
                                )));
                      },
                    );
                  },
                )),
            error: (error, stact) => Text(error.toString()),
            loading: () => const Loader()));
  }
}
