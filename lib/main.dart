import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 4;
  Random random = Random();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("lottery app")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("YOUR LOTTERY NUMBER IS 7",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                )),
            SizedBox(
              height: 20,
            ),
            //Text(x > 5 ? "your have successfull" : "your have not successfull"),
            SizedBox(
              height: 20,
            ),
            Container(
              height:x==7?400: 200,
              decoration: BoxDecoration(
                  color:x==7?Colors.green.withOpacity(0.2) :Colors.blueGrey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:x==7? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                    Icons.monitor_heart,
                      color: Colors.green,
                      size: 20,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(x==7?"SUCCESSFULL" :
                      "Best  LUCK for your next time $x \n please try again!",
                      textAlign: TextAlign.center,
                    )
                  ],
                ) : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Best  LUCK for your next time $x \n please try again!",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Row(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            x= random.nextInt(10);
          },
          child: Icon( Icons.add  ),
        ),
      ),
    );
  }
}
