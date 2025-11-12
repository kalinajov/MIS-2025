import 'package:flutter/material.dart';
import '../data/exams.dart';
import '../models/exam.dart';
import '../utils/time_utils.dart';
import '../data/exams.dart';


class ExamCard extends StatelessWidget {
  final Exam exam;
  final VoidCallback onTap;


  const ExamCard({
    super.key,
    required this.exam,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    final bool isPast = exam.isPast;
    final Color cardColor = isPast ? pastCardColor : futureCardColor;


    return Card(
      elevation: 0,
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(isPast ? Icons.check_circle : Icons.schedule),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      exam.subject,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: isPast ? Colors.grey.shade400 : Colors.indigo.shade400,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      isPast ? 'Поминат' : 'Иден',
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
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
                  Expanded(
                    child: Text(exam.rooms.join(', ')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}