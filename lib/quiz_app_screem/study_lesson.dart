import 'package:flutter/material.dart';
import 'package:title/quiz_app_screem/question_model.dart';


class StudyLesson extends StatefulWidget {
  const StudyLesson({super.key});

  @override
  State<StudyLesson> createState() => _StudyLessonState();
}

class _StudyLessonState extends State<StudyLesson> {
  int score = 0;
  List<Question> questionList = [
    Question(
        question: 'What is the price of Lenovo IdeaPad 3 151TL05',
        correctAns: 1,
        answers: ['10000', '50000', '150000', '85000']),
    Question(
        question: 'Who is the Chief Minister of Haryana in 2024 ?',
        correctAns: 2,
        answers: [
          'Manohar Lal Khattar',
          'Bhupendar Singh Hooda',
          'Nayab Saini',
          'J.P Dalal'
        ]),
    Question(
        question: 'Who is the upcoming M.L.A of Loharu in 2024 Elections ?',
        correctAns: 3,
        answers: [
          'Master Amar Singh',
          'Rajbeer faratia',
          'Bhupsingh Bairan',
          'J.P Dalal'
        ]),
    Question(
        question: 'Who is the Home Minister of India ?',
        correctAns: 4,
        answers: [
          'Amit Shah',
          'Narender Modi',
          'RajNath Singh',
          'Dr. Jitender Singh'
        ]),
    Question(
        question: 'Where is the highest high court in India ?',
        correctAns: 3,
        answers: [
          'Kolkata',
          'Delhi',
          'Allahabad',
          'Mumbai'
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GK Quiz\n Lesson to Study'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Text('Total score:    ${score}')),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Question question = questionList[index];
                    return Column(
                      children: [
                        Text('Q. ${index + 1}   ${question.question}'),
                        TextButton(
                            onPressed: () {
                              if (0 == question.correctAns) {
                                score = score + 10;

                                setState(() { showsnakebar('Correct Answer');});
                              } else {
                                showsnakebar('Wrong Answer');
                              }
                            },
                            child: Text(question.answers[0])),
                        TextButton(
                            onPressed: () {
                              if (1 == question.correctAns) {
                                score = score + 10;
                                setState(() {
                                  showsnakebar('Correct Answer');
                                });
                              } else {
                                showsnakebar('Wrong Answer');
                              }
                            },
                            child: Text(question.answers[1])),
                        TextButton(
                            onPressed: () {
                              if (2 == question.correctAns) {
                                score = score + 10;
                                setState(() {
                                  showsnakebar('Correct Answer');
                                });
                              } else {
                                showsnakebar('Wrong Answer');
                              }
                            },
                            child: Text(question.answers[2])),
                        TextButton(
                            onPressed: () {
                              if (3 == question.correctAns) {
                                score = score + 10;
                                setState(() {  showsnakebar('Correct Answer');

                                });
                              } else {
                                showsnakebar('Wrong Answer');
                              }
                            },
                            child: Text(question.answers[3])),

                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: questionList.length),
            )
          ],
        ),
      ),
    );
  }

  void showsnakebar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message),));
  }
}
