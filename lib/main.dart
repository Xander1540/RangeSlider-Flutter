import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Range Slider'),
      ),
      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 10,
            min: 0,
            max: 100,
            activeColor: Colors.greenAccent.shade400,
            inactiveColor: Colors.greenAccent.shade100,
            onChanged: (newValue){
              values = newValue;
              print('${newValue.start}, ${newValue.end}');
              setState(() {
              });
            }),
      )
    );
  }
}
