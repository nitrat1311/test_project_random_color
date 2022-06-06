import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_project_random_color/static_widgets/static_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final int _randomR = Random().nextInt(255);
    final int _randomG = Random().nextInt(255);
    final int _randomB = Random().nextInt(255);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(_randomR, _randomB, _randomG, 1),
            Color.fromRGBO(_randomB, _randomG, _randomR, 1),
            Color.fromRGBO(_randomG, _randomR, _randomB, 1)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: GestureDetector(
        onTap: () => setState(() {}),
        child: const _MainScreenWidget(),
      ),
    );
  }
}

class _MainScreenWidget extends StatelessWidget {
  const _MainScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(StaticText.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              StaticText.text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
