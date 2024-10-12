import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //functions will be declared here

  //  widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      // darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: const MyHomePage(title: 'The Green Solution'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get icon => null;


  mySnacBar(message,context)
  {
    var showSnackBar = ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("The Green Solution"),
        titleSpacing: 10,
        toolbarHeight: 80,
        toolbarOpacity: 0.9,
        elevation:6,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){mySnacBar("Shitol",context);}, icon: Icon(Icons.people)),
          IconButton(onPressed: (){mySnacBar("kochu",context);}, icon: Icon(Icons.question_mark_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.broken_image_outlined),
        backgroundColor: Colors.greenAccent,
        onPressed: (){
          mySnacBar("I am Shitol", context);
          },
      ),
      body:Center(
        child: Image.network(""),
      )
    );
  }
}
