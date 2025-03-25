import 'package:my_quiz_app/services/api_provider.dart';

class QuizRepository {
  ApiProvider apiProvider = ApiProvider();

  Future<List<Map<String, dynamic>>> fetchQuizzes(String url) async {
    final response = await apiProvider.get(url);
        final results = response['results'] as List;
     
      return results.map((question) {
        return {
          'question': question['question'],
          'options': [
            ...question['incorrect_answers'],
            question['correct_answer']
          ]..shuffle(), // Shuffle options for randomness
          'answer': question['correct_answer']
        };
      }).toList();
    // return Quiz.fromJson(response).results;
  }

//   Future<List<Quiz>> fetchQuizzes() async {
//     final response =
//         await http.get(Uri.parse('https://opentdb.com/api.php?amount=10'));
//     if (response.statusCode == 200) {
//       return Quiz.fromJson(json.decode(response.body)).results;
//     } else {
//       throw Exception('Failed to load quizzes');
//     }
//   }
}
