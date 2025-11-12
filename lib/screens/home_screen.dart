import 'package:flutter/material.dart';
import '../data/exams.dart';
import '../widgets/exam_card.dart';
import '../screens/exam_detail_screen.dart';


class HomeScreen extends StatelessWidget {
  final String indexNumber;
  const HomeScreen({super.key, required this.indexNumber});


  @override
  Widget build(BuildContext context) {

    final exams = [...kExams]..sort((a, b) => a.dateTime.compareTo(b.dateTime));


    return Scaffold(
      appBar: AppBar(
        title: Text('Распоред за испити - $indexNumber'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
        itemBuilder: (context, i) {
          final exam = exams[i];
          return ExamCard(
            exam: exam,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ExamDetailScreen(exam: exam),
                ),
              );
            },
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemCount: exams.length,
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Вкупно испити: ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    kExams.length.toString(),
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}