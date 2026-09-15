import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/backgroundImage.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Text(
                          'Basketball',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: 'Font',
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Positioned(
                          top: -25,
                          left: 20,
                          child: Transform.rotate(
                            angle: -0.5,
                            child: Image.asset(
                              'assets/images/crown.png',
                              width: 30,
                              height: 30,
                              color: const Color.fromARGB(255, 255, 206, 244),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Counter',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 206, 224),
                        fontFamily: 'Font',
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    
                    // --- الحاوية الرئيسية (العرض 320) ---
                    Container(
                      width: 330, // تم تغيير العرض إلى 320
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(36, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: const Color.fromARGB(205, 255, 255, 255),
                        ),
                      ),
                      child: Row(
                        children: [
                          // Team A Column
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 6, // قللنا البادينج الجانبي قليلاً
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 120, // تعديل العرض يدويًا لـ 115
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFD6E7),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Text(
                                      'Team A',
                                      style: TextStyle(
                                        fontFamily: 'Font2',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18, // تعديل بسيط لقطر الخط
                                        color: Color.fromARGB(
                                          255,
                                          145,
                                          36,
                                          103,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 120, // تعديل العرض يدويًا لـ 115
                                    height: 115,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(70, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          205,
                                          255,
                                          255,
                                          255,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      '$teamAScore',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Font2',
                                        fontSize: 58, // تعديل حجم الرقم ليتناسب مع الحجم الجديد
                                        color: Color.fromARGB(
                                          255,
                                          255,
                                          255,
                                          255,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _buildScoreButton('+1', () {
                                        setState(() => teamAScore += 1);
                                      }),
                                      _buildScoreButton('+2', () {
                                        setState(() => teamAScore += 2);
                                      }),
                                      _buildScoreButton('+3', () {
                                        setState(() => teamAScore += 3);
                                      }),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 250,
                            child: VerticalDivider(
                              thickness: 0.75,
                              color: Color.fromARGB(205, 255, 255, 255),
                            ),
                          ),
                          // Team B Column
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 6, // قللنا البادينج الجانبي قليلاً
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 120, // تعديل العرض يدويًا لـ 115
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFD6E7),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Text(
                                      'Team B',
                                      style: TextStyle(
                                        fontFamily: 'Font2',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color.fromARGB(
                                          255,
                                          145,
                                          36,
                                          103,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 120, // تعديل العرض يدويًا لـ 115
                                    height: 115,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(70, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          205,
                                          255,
                                          255,
                                          255,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      '$teamBScore',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Font2',
                                        fontSize: 58,
                                        color: Color.fromARGB(
                                          255,
                                          255,
                                          255,
                                          255,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _buildScoreButton('+1', () {
                                        setState(() => teamBScore += 1);
                                      }),
                                      _buildScoreButton('+2', () {
                                        setState(() => teamBScore += 2);
                                      }),
                                      _buildScoreButton('+3', () {
                                        setState(() => teamBScore += 3);
                                      }),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          teamAScore = 0;
                          teamBScore = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 202, 98, 141),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 3,
                      ),
                      icon: const Icon(Icons.refresh, size: 25),
                      label: const Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Font',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // تعديل حجم أزرار إضافة النقاط يدويًا لتناسب العرض الجديد
  Widget _buildScoreButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(34, 34), // تم تعديل الحجم من 36 إلى 32
        backgroundColor: const Color.fromARGB(255, 170, 97, 128),
        shape: const CircleBorder(),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16, // تعديل الخط لـ 14
          fontFamily: 'Font2',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}