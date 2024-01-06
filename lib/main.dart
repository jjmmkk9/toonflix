import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
  //App위젯이 제일 먼저 실행되므로 우리 앱의 root라고 할 수 있다.
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //밑에서 가져다 쓰려면
      //color: Theme.of().textTheme.titleLarge?.color 이렇게 써야됨..
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      //root에서는 material 디자인과 ios 디자인 중에 선택해야한다.
      home: Scaffold(
          //materialApp의 home 요소는 위젯을 반환해야한다. 사용자가 home에 있을때 보여질 위젯!
          backgroundColor: const Color(0XFFF4EDDB),
          //column은 수직 배열을, row는 수평 배열을 위한 요소이다.
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye))
            ]),
          )),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    log('init state!!');//init State는 ui가 새로 build되기 전에
  }

  @override
  void dispose() {
    super.dispose();
    log('dispose!!'); //dispose 메소드는 ui가 사라질때 
  }

  @override
  Widget build(BuildContext context) {
    log('build!');
    //부모에 접근하기 위해 buildContext가 필요하다
    //the context is information about all the people that came before our Text LargeTitle
    //context는 MyLargeTitle Text의 부모 요소들의 정보를 담고있다.
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context)
            .textTheme
            .titleLarge
            ?.color, //?' means the variable can be null, `!` means the variable never be null.
      ),
    );
  }
}
