import 'package:flutter/material.dart';
import 'package:welcome_app/helpers/ui_helper.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ROW & COLUMN'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.red,
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: screenWidth(context),
                color: Colors.green,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text('Widget Column'),
                    ),
                    Expanded(child: Text('No.')),
                    Expanded(child: Text('Nama')),
                    Expanded(child: Text('Kelas')),
                    Expanded(child: Text('Jenis Kelamin')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                width: screenWidth(context),
                child: Row(
                  children: const [
                    Expanded(child: Text('No.')),
                    Expanded(child: Text('Nama')),
                    Expanded(child: Text('Kelas')),
                    Expanded(child: Text('Jenis Kelamin')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: screenWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('No.'),
                        Text('Nama'),
                        Text('Kelas'),
                        Text('Jenis Kelam'),
                      ],
                    ),
                    for (int i = 0; i < 10; i++)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('${i + 1}'),
                          const Text('Hamdan'),
                          const Text('2B'),
                          const Text('L'),
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
