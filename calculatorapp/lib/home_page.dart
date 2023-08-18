import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.clear();
      t2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Output : $sum',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter number 1",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter number 2",
              ),
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: add,
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: sub,
                  child: const Text('-'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: mul,
                  child: const Text('*'),
                ),
                ElevatedButton(
                  onPressed: div,
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: clear,
              child: const Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}
