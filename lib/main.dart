import 'package:flutter/material.dart';

class Player {
  String name;

  Player({required this.name}); //생성자 끝
}

void main() {
  var player = Player(name: 'mungi');
  runApp(App());
  //App위젯이 제일 먼저 실행되므로 우리 앱의 root라고 할 수 있다.
  //root에서는 material 디자인과 ios 디자인 중에 선택해야한다.
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // materialApp or
    return MaterialApp(
        home: Scaffold(
            //materialApp의 home 요소는 위젯을 반환해야한다. 사용자가 home에 있을때 보여질 위젯!
            backgroundColor: Color(0xFF181818),
            //column은 수직 배열을, row는 수평 배열을 위한 요소이다.
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ), //symmetric = 대칭, vertical = 세로(위아래), horizontal = 가로(양옆)
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //sizedBox로 그냥 공백부분을 만들어 줄 수 있다.
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, //row의 mainaxis는 수평 방향, crossaxis가 수직방향이다.

                    children: [
                      Column(
                        children: [
                          Text(
                            'left',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        //column의 mainaxis는 수직방향, crossaxis가 수평방향이다.
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, Mungi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 47,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(45)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 45,
                          ),
                          child: Text(
                            'Transfer',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 41, 41, 41),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 45,
                          ),
                          child: Text(
                            'Request',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
