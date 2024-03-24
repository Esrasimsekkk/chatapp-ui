import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_whatsapp_ui/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode
        .immersive); //splash screen açılırken bildirim paneli ve yönlerdirem barının görünmemesini
    _navigatetohome();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF27c1a9),
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/images/logo.png'),
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}
