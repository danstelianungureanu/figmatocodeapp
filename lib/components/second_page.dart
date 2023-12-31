import 'package:figmatocodeapp/components/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(32, 55, 69, 0),
      ),
      home: Scaffold(
        body: ListView(
          children: const [
            LoginSignup(),
          ],
        ),
      ),
    );
  }
}

class LoginSignup extends StatefulWidget {
  const LoginSignup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // color: Colors.amber,
              ),
              child: const SizedBox(
                height: 20,
                child: SquareTile(
                  imagePath: 'lib/images/verum_LOGO.png',
                ),
              ),
            ),
            const SizedBox(height: 0),
            const Text(
              'Bine ați venit !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Karla',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              width: 286,
              child: Text(
                'Începeți prin introducerea numărului dvs. de telefon mobil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFC7DAE5),
                  fontSize: 16,
                  fontFamily: 'Karla',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 326,
              // height: 82,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: const Color(0xFF477A9A),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF3CBEAA)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: SizedBox(
                height: 48,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 19,
                            child: SizedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '+373',
                                      style: TextStyle(
                                        color: Color(0xFFABC7D8),
                                        fontSize: 16,
                                        fontFamily: 'Karla',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Karla',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),

                          // Câmpul de introducere pentru numărul de telefon
                          Expanded(
                            child: TextField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                LengthLimitingTextInputFormatter(8),
                              ],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Karla',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Numărul de telefon',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
}
