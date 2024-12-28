import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 90,
                      child: Image.asset(
                        'assets/images/x_bg.png',
                        width: 280,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/o_bg.png',
                        width: 280,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Tix-Tac-Toe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),

              Text(
                'Pick who goes first?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape :RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image(
                        image: AssetImage('assets/images/x.png'),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape :RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image(
                        image: AssetImage('assets/images/o.png'),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
