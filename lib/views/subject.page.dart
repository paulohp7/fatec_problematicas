// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  const Subject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Altura do AppBar
        child: AppBar(
          scrolledUnderElevation: 0, // Fazer parar de mudar de cor no scroll
          elevation: 0,
          automaticallyImplyLeading: false, // Remover a seta automática
          backgroundColor: Color(0xFFFFFFFF),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 45.0), // Espaçamento superior
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SizedBox(width: 16),
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF3D3D3D)),
                  onPressed: () {
                    Navigator.of(context).pop(); // Volta para a página anterior
                  },
                ),
                // SizedBox(width: 15), // Espaço entre a seta e o texto
                Text(
                  "Assuntos",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),

                SizedBox(width: 30), // espaço entre o bem-vindo e o logout
                
                Container(
                  padding: EdgeInsets.all(2), // Tamanho do círculo
                  decoration: BoxDecoration(
                    color: Color(0xFF4DC09E),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.logout_rounded, color: Color(0xFF13715B)),
                    onPressed: () {
                      // Navigator.of(context).pop();
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              style: TextStyle(
                fontSize: 30
              ),
              'Título do Assunto'
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Descrição:"
                ),
              ],
            ),
            subtitle: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Dados disponíveis para análise:"
                ),
              ],
            ),
            subtitle: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Área da saúde abordado:"
                ),
              ],
            ),
            subtitle: Text(
              "Uma área de saúde qualquer"
            ),
          ),
         ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Área computacional necessária:"
                ),
              ],
            ),
            subtitle: Text(
              "Uma área computacional qualquer"
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Link externo do assunto:"
                ),
              ],
            ),
            subtitle: Text(
              "Um texto em forma de link"
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontSize: 20
                  ),
                  "Data da publicação do assunto:"
                ),
              ],
            ),
            subtitle: Text(
              "99/99/9999"
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 140),
            child: ElevatedButton(
              onPressed: () => {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Editar"),
                  Icon(Icons.edit_rounded),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}