// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RequesterHome extends StatelessWidget {
  const RequesterHome({super.key});

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

                //SizedBox(width: 15), // Espaço entre a seta e o texto
                Text(
                  "Bem-vindo",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),

                SizedBox(width: 50), // espaço entre o bem-vindo e o logout
                
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            
            // --------- Cabeçalho principal ----------
            HomeWidget(),
      
            // --------- Botão de cadastrar novo assunto ----------
            NewSubjectButton(),

            // --------- Botão dos meus assuntos ----------
            MySubjectsButton(),

            // --------- Botão de consultar assuntos ----------
            SearchSubjectButton()

          ],
        ),
      )
    );
  }
}


class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // -- remover caso atrapalhe
        children: [

          Divider(
            color: Colors.grey,
            thickness: 1, // Espessura da linha
            indent: 45,   // Espaçamento à esquerda
            endIndent: 90, // Espaçamento à direita
          ),
          
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Coluna com o nome e o botão
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [                
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        'Nome do Usuário',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF3D3D3D),
                        ),
                      ),
                    ),
                    
                    // --------- Botão de editar ----------
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      width: 160,
                      height: 30,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Borda circular
                          ),
                          minimumSize: Size(260, 80),
                          backgroundColor: Color(0xFF4DC09E),
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/edit-profile');
                        },
                        child: Text(
                          "Editar",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: const Color(0xFF216655),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(width: 65), // espaço entre o nome/botão e a foto
                // 
                CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                  radius: 60,
                )
              ],
            ),
          ),

          Divider(
            color: Colors.grey,
            thickness: 1, // Espessura da linha
            indent: 70,   // Espaçamento à esquerda
            endIndent: 70, // Espaçamento à direita
          ),

        ],
      ),
    );
  }
}


class NewSubjectButton extends StatelessWidget {
  const NewSubjectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Borda circular
          ),
          minimumSize: Size(260, 80),
          backgroundColor: Color(0xFF4DC09E),
        ),
        child: Text(
          "Novo assunto",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF13715B),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/new-subject');
        },
      ),
    );
  }
}


class MySubjectsButton extends StatelessWidget {
  const MySubjectsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17, left: 40, right: 40),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 22, 145, 114), // Cor do splash quando aperta o botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Borda circular
          ),
          minimumSize: Size(260, 80),
          backgroundColor: Colors.white,
          side: BorderSide(width: 2, color: Color(0xFF4CA087))
        ),
        child: Text(
          "Meus assuntos",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF228069),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/my-subjects');
        },
      ),
    );
  }
}


class SearchSubjectButton extends StatelessWidget {
  const SearchSubjectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17, left: 40, right: 40, bottom: 80), // ---- RETIRAR O BOTTOM CASO COLOQUE MAIS BOTÕES
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color.fromARGB(255, 22, 145, 114), // Cor do splash quando aperta o botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Borda circular
          ),
          minimumSize: Size(260, 80),
          backgroundColor: Colors.white,
          side: BorderSide(width: 2, color: Color(0xFF4CA087))
        ),
        child: Text(
          "Consultar assuntos",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF228069),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/search-subjects');
        },
      ),
    );
  }
}