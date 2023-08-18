import 'package:flutter/material.dart';
import '../../feature_auth/presentation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const Type className = SplashScreen;

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
          () {
        Navigator.of(context).push(_createRoute());
      },
    );
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _performTasks(),
      builder: (context, snapshot) {
        return Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffDD3636),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/logoBank.png'),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            'بانک قوانین',
                            style: TextStyle(
                              fontFamily: 'YekanBold',
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'بانک جامع قوانین و مقررات کشور',
                            style: TextStyle(
                              fontFamily: 'YekanLight',
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const LoginP1(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Future<void> _performTasks() async {}
}
