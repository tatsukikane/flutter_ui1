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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          //縦の並び
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // デフォルト表示
            Text('Default'),
            // 太さを指定
            Text('Bold', style: TextStyle(fontWeight: FontWeight.bold)),
            // スタイルを指定
            Text('Italic', style: TextStyle(fontStyle: FontStyle.italic)),
            // サイズを指定
            Text('fontSize = 36', style: TextStyle(fontSize: 36)),
            // 色を指定
            Text('Red', style: TextStyle(color: Colors.red)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: 8),
                borderRadius: BorderRadius.circular(8),
                // color: Colors.blue
                image: DecorationImage(
                  image: NetworkImage('https://www.theart.jp/common/images/pc/content/wallart/cont02_img02.jpg')),
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              height: 200,
              width: double.infinity,
              // color: Colors.blue,
              // 表示位置を指定
              child: Text('TextAlign.center', textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
