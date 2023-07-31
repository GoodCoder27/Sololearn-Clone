import 'package:flutter/material.dart';
import 'package:sololearn_clone/model/lessons.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  String doneCourse() {
    if (Lessons().allDone() == true) {
      return 'Your certificate is close keep learning';
    } else {
      return 'The certificate is ready to claim for you. You did amazing job in the course and earned it';
    }
  }

  String doneCourse2() {
    if (Lessons().allDone2() == true) {
      return 'You are doing great! Keep learning to unclock your certificate';
    } else {
      return 'Well done!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 49, 55, 59),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'lib/icons/certificate.png',
            height: 80,
            fit: BoxFit.fill,
            width: 90,
          ),
          Text(
            doneCourse(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            doneCourse2(),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
