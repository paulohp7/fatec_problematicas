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
                  "Assunto",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),

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
            child: Column(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1, // Espessura da linha
                    indent: 70,   // Espaçamento à esquerda
                    endIndent: 70, // Espaçamento à direita
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  child: Text(
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 21, 129, 103),
                    ),
                    'Título do Assunto'
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  "Descrição:",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit.",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  overflow: TextOverflow.clip, 
                  "Dados disponíveis:",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20),
              child: Container(
                margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo facilisis purus a suscipit.",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  "Área da saúde abordado:",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Text(
                "Uma área de saúde qualquer",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
          ),
         ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  "Área computacional:",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Text(
                "Uma área computacional qualquer",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  "Link externo do assunto:",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Text(
                "Um texto em forma de link",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF216655),
                ),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle_rounded, size: 10),
                SizedBox(width: 10),
                Text(
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Color(0xFF3D3D3D),
                  ),
                  "Data de publicação:"
                ),
              ],
            ),
            subtitle: Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Text(
                "99/99/9999",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),
          ),

          // --------- Botão de editar ----------
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Borda circular
                ),
                minimumSize: Size(260, 80),
                backgroundColor: Color(0xFF4DC09E),
              ),
              onPressed: () => {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Editar",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(
                    Icons.edit_rounded,
                    color: Colors.white
                  ),
                ],
              )
            ),
          ),

          SizedBox(height: 10),

          // --------- Botão de excluir ----------
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Borda circular
                ),
                minimumSize: Size(260, 80),
                backgroundColor: const Color.fromARGB(255, 233, 122, 122),
              ),
              onPressed: () => {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Excluir",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(
                    Icons.delete_outline,
                    color: Colors.white
                  ),
                ],
              )
            ),
          ),

          SizedBox(height: 50),

        ],
      ),
    );
  }
}