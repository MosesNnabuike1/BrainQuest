import 'package:flutter/material.dart';
import 'package:my_quiz_app/pages/start_page.dart';
import 'package:my_quiz_app/widgets/category_title.dart';
import 'package:my_quiz_app/widgets/category_button.dart';
import 'quiz_page.dart';

class CategoryPage extends StatelessWidget {
  final String name;

  const CategoryPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 64, 51, 90),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome $name',
                  style: const TextStyle(fontSize: 18, color: Colors.white, fontFamily: 'Poppins'),
                ),
                IconButton(
                  icon: const Icon(Icons.logout, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const StartPage()),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            const CategoryTitle(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  CategoryButton(
                    category: 'General Knowledge',
                    icon: Icons.public,
                    color: Colors.blue,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'General Knowledge',
                          categoryId: '9',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Books',
                    icon: Icons.book,
                    color: Colors.purple,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Books',
                          categoryId: '10',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Film',
                    icon: Icons.movie,
                    color: Colors.red,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Film',
                          categoryId: '11',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Music',
                    icon: Icons.music_note,
                    color: Colors.orange,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Music',
                          categoryId: '12',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Musicals & Theatres',
                    icon: Icons.theater_comedy,
                    color: Colors.green,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Musicals & Theatres',
                          categoryId: '13',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Television',
                    icon: Icons.tv,
                    color: Colors.teal,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Television',
                          categoryId: '14',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Video Games',
                    icon: Icons.videogame_asset,
                    color: Colors.indigo,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Video Games',
                          categoryId: '15',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Board Games',
                    icon: Icons.games,
                    color: Colors.brown,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Board Games',
                          categoryId: '16',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Science & Nature',
                    icon: Icons.nature,
                    color: Colors.lightGreen,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Science & Nature',
                          categoryId: '17',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Science: Computers',
                    icon: Icons.computer,
                    color: Colors.blueGrey,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Science: Computers',
                          categoryId: '18',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Science: Mathematics',
                    icon: Icons.calculate,
                    color: Colors.deepPurple,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Science: Mathematics',
                          categoryId: '19',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Mythology',
                    icon: Icons.auto_stories,
                    color: const Color.fromARGB(255, 177, 151, 72),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Mythology',
                          categoryId: '20',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Sports',
                    icon: Icons.sports,
                    color: Colors.cyan,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Sports',
                          categoryId: '21',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Geography',
                    icon: Icons.map,
                    color: Colors.lightBlue,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Geography',
                          categoryId: '22',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'History',
                    icon: Icons.history_edu,
                    color: Colors.deepOrange,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'History',
                          categoryId: '23',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Politics',
                    icon: Icons.gavel,
                    color: Colors.pink,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Politics',
                          categoryId: '24',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Art',
                    icon: Icons.brush,
                    color: Colors.purple,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Art',
                          categoryId: '25',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Celebrities',
                    icon: Icons.star,
                    color: const Color.fromARGB(255, 155, 81, 11),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Celebrities',
                          categoryId: '26',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Animals',
                    icon: Icons.pets,
                    color: const Color.fromARGB(255, 64, 67, 255),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Animals',
                          categoryId: '27',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Vehicles',
                    icon: Icons.directions_car,
                    color: Colors.blueAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Vehicles',
                          categoryId: '28',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Science: Gadgets',
                    icon: Icons.devices,
                    color: Colors.tealAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Science: Gadgets',
                          categoryId: '29',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Japanese Anime & Manga',
                    icon: Icons.bookmark,
                    color: Colors.redAccent,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Japanese Anime & Manga',
                          categoryId: '31',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CategoryButton(
                    category: 'Entertainment: Cartoon & Animations',
                    icon: Icons.animation,
                    color: const Color.fromARGB(255, 100, 89, 255),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizPage(
                          category: 'Entertainment: Cartoon & Animations',
                          categoryId: '32',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
