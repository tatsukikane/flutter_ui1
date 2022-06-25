/// このコード以外のリソースを使いたいとき import 'リソースのパス'　と書きます。
/// material.dart の中には UI を作るための部品が入っていると思ってください。
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(), //下で作ったSTLを表示
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Column(
            children: [
              Text(
                "たつき@G's Lab13期",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.white,
                  // wordSpacing: 8.0,
                  // letterSpacing: 2.0,
                  // decoration: TextDecoration.overline
                  // backgroundColor: Colors.yellow, 文字の後ろだけ色つく
                  // decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.dashed
                ),
               ),
               Text(
                'ツイート：7,777',
                style: TextStyle(
                  fontSize: 10,
                ),
               ),
            ],
          ),
           actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search_rounded))
           ],
        ),
        //横に並べるときはRow
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(
                  border:Border(bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'ツイート',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blueAccent,
                        decorationThickness: 5,
                      ),
                    ),
                    Text('ツイートと返信'),
                    Text('メディア'),
                    Text('いいね'),
                  ],
                ),
              ),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
        
        
            ],
          ),
        ),
      ),
    );
  }
}




//下記の感じで自分でwidgetを作って使い回す事ができる
class TweetTile extends StatelessWidget {
  const TweetTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      // padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
      // padding: const EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            maxRadius: 32,
            backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1540352384336941056/HFFQN715_400x400.jpg'),
          ),
          SizedBox(width: 8,),
          Column(
            //横の位置調整 左よせ
            crossAxisAlignment: CrossAxisAlignment.start,
            //縦の位置調整 
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text("たつき@G's Lab13期"),
                  SizedBox(width: 8), //TextとTextの間に空白を作る
                  Text('2022/06/25'),
                ],
              ),
              SizedBox(height: 4,),
              Text('PHP選手権お疲れでした!!!'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    iconSize: 16,
                    onPressed: (){},
                    icon: Icon(Icons.chat_bubble_outline),
                  ),

                  IconButton(
                    iconSize: 16,
                    onPressed: (){},
                    icon: Icon(Icons.sync_alt),
                  ),
                  
                  IconButton(
                    iconSize: 16,
                    onPressed: (){},
                    icon: Icon(Icons.save_alt),
                  ),

                  IconButton(
                    iconSize: 16,
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border),
                  ),

                  IconButton(
                    iconSize: 16,
                    onPressed: (){},
                    icon: Icon(Icons.bar_chart),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}