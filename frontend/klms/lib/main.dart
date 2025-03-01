import 'package:flutter/material.dart';

import 'apiurl.dart';
import 'package:http/http.dart ' as http;

void main() {
  runApp(const MainApp());
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hellow(),
    );
  }
}

class Hellow extends StatefulWidget {
  const Hellow({super.key});

  @override
  State<Hellow> createState() => _HellowState();
}

class _HellowState extends State<Hellow> {
  late String _txt = "loading...";
  @override
  void initState() {
    super.initState();
    _hellow();
  }

  Future<void> _hellow() async {
    final response = await http.get(Uri.parse('$url/home'));
    if (response.statusCode == 200) {
      setState(() {
        _txt = response.body;
        print(_txt);
      });
    } else {
      throw Exception('Failed to load');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hellow'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _hellow,
          child: Text(_txt),
        ),
      ),
    );
  }
}
