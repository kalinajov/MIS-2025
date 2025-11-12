import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../utils/time_utils.dart';


class ExamDetailScreen extends StatelessWidget {
  final Exam exam;
  const ExamDetailScreen({super.key, required this.exam});


  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final bool isPast = exam.dateTime.isBefore(now);
    final String diffStr = remainingDaysHours(now, exam.dateTime);


    return Scaffold(
      appBar: AppBar(title: const Text('Детали за испит')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exam.subject,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.event),
                const SizedBox(width: 8),
                Text('${formatDateMk(exam.dateTime)} • ${formatTimeMk(exam.dateTime)}'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.room),
                const SizedBox(width: 8),
                Expanded(child: Text(exam.rooms.join(', '))),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isPast ? Colors.grey.shade200 : Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(isPast ? Icons.check_circle : Icons.timer),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      isPast
                          ? 'Испитот е поминат пред $diffStr.'
                          : 'Преостанува: $diffStr.',
                      style: const TextStyle(fontWeight: FontWeight.w600),
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