import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff17002D),
          primaryColor: Color(0xff17002D),
          // colorScheme: ColorScheme.fromSwatch().copyWith(
          //   brightness: Brightness.light,
          //   secondary: Colors.amber,
          //   primary: Color(0xff0F0F1E),
          //   background: Color(0xff0F0F1E),
          // ),
        ));
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF1D1E33),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF1D1E33),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              margin: EdgeInsets.all(15.0),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF1D1E33),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFF1D1E33),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
