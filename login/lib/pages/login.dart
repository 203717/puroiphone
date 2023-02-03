import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  get gender => null;
  @override
  Widget build(BuildContext context) {
    var title = 'Login';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: NetworkImage('https://www.xtrafondos.com/wallpapers/vertical/astronauta-perdido-en-el-espacio-5498.jpg'), fit: BoxFit.cover)),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Loginuwu(gender: gender),
                    ),
                  ],
                ),
              ),
            )
          ),
        ),
      );
  }
}


class Loginuwu extends StatelessWidget {
  const Loginuwu({
    Key? key,
    required this.gender,
  }) : super(key: key);

  final gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('https://www.xtrafondos.com/wallpapers/vertical/astronauta-perdido-en-el-espacio-5498.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset('assets/img/img3.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo',
                        suffixIcon: const Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        suffixIcon: const Icon(Icons.lock_clock_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Iniciar sesion',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  InkWell(
                    child: const Text(
                      'Crear cuenta',
                      style:
                          TextStyle(color: Color.fromARGB(255, 133, 47, 148)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
