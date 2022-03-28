import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void doadd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULATOR"),
      ),
      body: Container(
        padding: const EdgeInsets.all(45.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Output : $sum",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.deepOrange),
              ),
            ),
            TextField(
              controller: t1,
              style: const TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w300),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                hintText: "enter num1",
                fillColor: Colors.greenAccent,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
            ),
            TextField(
              controller: t2,
              style: const TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w300),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                hintText: "enter num2",
                fillColor: Colors.greenAccent,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  child: const Text("+"),
                  onPressed: doadd,
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  child: const Text("-"),
                  onPressed: dosub,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.greenAccent,
                  child: const Text("/"),
                  onPressed: dodiv,
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  child: const Text("*"),
                  onPressed: domul,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
