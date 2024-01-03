import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/card.dart';

class Player {
  String name;

  Player({required this.name}); //생성자 끝
}

void main() {
  var player = Player(name: 'mungi');
  runApp(const App());
  //App위젯이 제일 먼저 실행되므로 우리 앱의 root라고 할 수 있다.
  //root에서는 material 디자인과 ios 디자인 중에 선택해야한다.
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // materialApp or
    return MaterialApp(
        home: Scaffold(
            //materialApp의 home 요소는 위젯을 반환해야한다. 사용자가 home에 있을때 보여질 위젯!
            backgroundColor: const Color(0xFF181818),
            //column은 수직 배열을, row는 수평 배열을 위한 요소이다.
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ), //symmetric = 대칭, vertical = 세로(위아래), horizontal = 가로(양옆)
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //sizedBox로 그냥 공백부분을 만들어 줄 수 있다.
                    const SizedBox(
                      height: 45,
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 482',
                      style: TextStyle(
                        fontSize: 47,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF1B33B),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 428',
                      iconData: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    const CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '1 234',
                      iconData: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      offsetOrder: 1,
                    ),
                    const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '1 234',
                      iconData: Icons.attach_money_outlined,
                      isInverted: false,
                      offsetOrder: 2,
                    ),
                  ],
                ),
              ),
            )));
  }
}
