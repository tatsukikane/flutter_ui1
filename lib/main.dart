import 'package:flutter/material.dart';


const Color kAccentColor = Color(0xFFFE7C64);
const Color kBackgroundColor = Color(0xFF19283D);
const Color kTextColorPrimary = Color(0xFFECEFF1);
const Color kTextColorSecondary = Color(0xFFB0BEC5);
const Color kButtonColorPrimary = Color(0xFFECEFF1);
const Color kButtonTextColorPrimary = Color(0xFF455A64);
const Color kIconColor = Color(0xFF455A64);


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //エミュレーターの右上のデバックを非表示にする
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //MaterialAppのtheme: に指定したThemeDataが アプリ全体に適用されます。
      theme: ThemeData.dark().copyWith(
        colorScheme: 
          //ダークモードみたいな感じ
          ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              Text("Default"),
              Text(
                "Bold",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Italic',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              //ここに配置していく

            ],
          ),
        ),
      ),

    );
  }
}
