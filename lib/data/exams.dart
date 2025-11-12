import 'package:flutter/material.dart';
import '../models/exam.dart';

final List<Exam> kExams = <Exam>[
  Exam(subject: 'Математика 2', dateTime: DateTime(2025, 10, 28, 9, 0), rooms: ['AMF-1', 'AMF-2']),
  Exam(subject: 'Објектно Ориентирано Програмирање', dateTime: DateTime(2025, 11, 5, 12, 0), rooms: ['LAB-3']),
  Exam(subject: 'Алгоритми и Податочни Структури', dateTime: DateTime(2025, 11, 18, 10, 0), rooms: ['A1', 'A2']),
  Exam(subject: 'Бази на Податоци', dateTime: DateTime(2025, 11, 25, 9, 30), rooms: ['B1']),
  Exam(subject: 'Оперативни Системи', dateTime: DateTime(2025, 12, 2, 11, 0), rooms: ['C-Комп.', 'LAB-2']),
  Exam(subject: 'Компјутерски Мрежи', dateTime: DateTime(2025, 12, 9, 8, 30), rooms: ['M1']),
  Exam(subject: 'Дискретна Математика', dateTime: DateTime(2025, 12, 12, 13, 0), rooms: ['D4']),
  Exam(subject: 'Веб Технологии', dateTime: DateTime(2025, 12, 16, 9, 0), rooms: ['LAB-W1', 'LAB-W2']),
  Exam(subject: 'Мобилни Апликации', dateTime: DateTime(2026, 1, 8, 10, 0), rooms: ['LAB-M1']),
  Exam(subject: 'Инженерска Етика', dateTime: DateTime(2026, 1, 12, 12, 0), rooms: ['E2']),
  Exam(subject: 'Компјутерска Архитектура', dateTime: DateTime(2026, 1, 20, 9, 0), rooms: ['KA-1']),
  Exam(subject: 'Вештачка Интелигенција', dateTime: DateTime(2026, 1, 27, 9, 0), rooms: ['AI-ЛАБ']),
];

const pastCardColor = Color(0xFFF1F5F9);
const futureCardColor = Color(0xFFEFF6FF);