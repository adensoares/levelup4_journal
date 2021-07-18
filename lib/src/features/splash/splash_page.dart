import 'package:animated_card/animated_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal/src/features/home/home_page.dart';
import 'package:journal/src/shared/constants/app_colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then(
        (value) => Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (BuildContext context) => HomePage(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColors.blueGradient,
      ),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: Duration(seconds: 1),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/splash_journal_icon.png",
                    ),
                    Image.asset(
                      "assets/images/splash_journal.png",
                    ),
                    Image.asset(
                      "assets/images/splash_journal_subtitle.png",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: Duration(seconds: 1),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40.0,
                        bottom: 10.0,
                      ),
                      child: Image.asset(
                        "assets/images/powered_by.png",
                      ),
                    ),
                    Image.asset(
                      "assets/images/raro_academy.png",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
