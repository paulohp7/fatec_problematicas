// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MySubjects extends StatelessWidget {
  const MySubjects({super.key});

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
                //SizedBox(width: 15), // Espaço entre a seta e o texto
                Text(
                  "Meus Assuntos",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.logout_rounded, color: Color(0xFF3D3D3D)),
                  onPressed: () {
                    // Navigator.of(context).pop(); 
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Cor da borda
            width: 3,          // Largura da borda
          ),
          borderRadius: BorderRadius.circular(12), // Opcional: para bordas arredondadas
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Center( // Centraliza o conteúdo do ListTile
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8, // Define uma largura customizada
                child: ListTile(
                  title: Center(child: Text('Um assunto qualquer')),
                  onTap: () => Navigator.pushNamed(context, '/subject'),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}