import 'package:flutter/material.dart';
import 'package:midterm_630710663/temp.dart';

class TempPage extends StatefulWidget{
  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _controller = TextEditingController();
  var _temp = Temp();

  var _feedbackText = '';

  void handleClick() {
    print(_controller.text);
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      _feedbackText = 'Input Error';
    }

    else {
      _temp = Temp(temp);
    }
  }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
            title: const Text('Midterm Exam'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Text('Temperature Converter'),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, //สีพื้นหลังของ Container
                      border: Border.all(
                        width: 5.0,
                        color: Colors.deepPurple.shade200,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter a temperature value to convert',
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Celsius to Fahrenheit'),
                            ),
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Celsius to Kelvin'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Fahrenheit to Celsius'),
                            ),
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Fahrenheit to Kelvin'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Kelvin to Celsius'),
                            ),
                            ElevatedButton(
                              onPressed: handleClick,
                              child: const Text('Kelvin to Fahrenheit'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(_feedbackText),
                ],
              ),
      );
    }
}