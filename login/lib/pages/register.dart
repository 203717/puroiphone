import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  get gender => null;
  @override
  Widget build(BuildContext context) {
    var title = 'Registro';
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
                      child: ListRegister(gender: gender),
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

class ListRegister extends StatelessWidget {
  const ListRegister({
    Key? key,
    required this.gender,
  }) : super(key: key);

  final gender;

  @override
  Widget build(BuildContext context) {
    return  
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 3, bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Usuario',
              labelStyle: TextStyle(
                color: Colors.white 
              )
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Correo',
              labelStyle: TextStyle(
                color: Colors.white 
              )
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Nombre',
              labelStyle: TextStyle(
                color: Colors.white 
              )
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Telefono',
              labelStyle: TextStyle(
                color: Colors.white 
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              labelStyle: TextStyle(
                color: Colors.white 
              )
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirmar Contraseña',
              labelStyle: TextStyle(
                color: Colors.white 
              )
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: DropdownButtonFormField(
                  validator: (value) =>
                      value == "Sexo" ? "campo requerido" : null,
                  value: gender,
                  items: ["Sí", "No"]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (Object? value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Cumpleaños',
                  labelStyle: TextStyle(
                    color: Colors.white 
                  )
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 150,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: const Text(
                'Registrar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
