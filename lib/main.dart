import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'CALCULADORA '),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(238, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 20,
                            offset: Offset(8, 8),
                          ),
                        ],
                      ),
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'nada aqui',
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
