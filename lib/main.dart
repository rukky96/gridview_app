import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final appBar = AppBar(
    centerTitle: true,
    title: const Text('CLASS WORK'),
  );
  @override
  Widget build(BuildContext context) {
    final screenHeight = ((MediaQuery.of(context).size.height -
            appBar.preferredSize.height -
            MediaQuery.of(context).padding.top)) -
        1.0;
    final screenWidth = MediaQuery.of(context).size.width * 1.0;
    return Container(
        child: Scaffold(
      appBar: appBar,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(color: Colors.grey),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 10),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: screenHeight * 0.48,
                width: screenWidth * 0.48,
                child: const Image(
                  image: AssetImage('images/pic0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 10),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: screenHeight * 0.48,
                width: screenWidth * 0.48,
                child: const Image(
                  image: AssetImage('images/pic1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 10),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: screenHeight * 0.48,
                width: screenWidth * 0.48,
                child: const Image(
                  image: AssetImage('images/pic2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 10),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: screenHeight * 0.48,
                width: screenWidth * 0.48,
                child: const Image(
                  image: AssetImage('images/pic3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
