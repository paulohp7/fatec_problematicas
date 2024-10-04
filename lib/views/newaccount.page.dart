// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api


import 'package:flutter/material.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({super.key});

  @override
  _NewAccountPageState createState() => _NewAccountPageState();
}

enum UserType { aluno, solicitante }

class _NewAccountPageState extends State<NewAccountPage> {

  // final TextEditingController txtName = TextEditingController(); --------------- REMOVER COMENTÁRIO
  // final TextEditingController txtEmail = TextEditingController(); --------------- REMOVER COMENTÁRIO
  // final TextEditingController txtPassword = TextEditingController(); --------------- REMOVER COMENTÁRIO
  bool _isPasswordVisible = false; // Controle de visibilidade da senha
  UserType? _selectedUserType; // Tipo de usuário selecionado
  /* --------------- REMOVER COMENTÁRIO

  // --------- Liberação de recursos para evitar vazamentos de memória ----------
  @override
  void dispose() {
    // Libera os controladores quando o widget for destruído
    txtName.dispose();
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

*/

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 16),
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF3D3D3D)),
                  onPressed: () {
                    Navigator.of(context).pop(); // Volta para a página anterior
                  },
                ),
                SizedBox(width: 15), // Espaço entre a seta e o texto
                Text(
                  "Criar uma conta",
                  style: TextStyle(
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // -------- Espaço circular pro ícone de foto ---------
                Container(
                  width: 140,
                  height: 140,
                  margin: EdgeInsets.only(top: 40, bottom: 52),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color(0xFF3D3D3D), // Cor do contorno
                      width: 4, // Largura do contorno
                    ),
                  ),

                  // ------ Ícones da pessoa e do + stackados nesse container -------
                  child: Stack(
                    children: [
                      Center(child: Icon(
                        Icons.person, 
                        size: 75,
                        color: Color(0xFF252525),
                        )
                      ),
                      Positioned(
                        bottom: 0,
                        right: 1,
                        child: Icon(
                          Icons.add_circle, 
                          size: 50,
                          color: Color(0xFF3D3D3D),
                        ),
                      ),
                    ],
                  )
                ),

                // --------- Campo do nome ----------
                Container(
                padding: EdgeInsets.all(7), // Tamanho do campo
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF565656), // Cor do contorno
                    width: 1.5, // Largura do contorno
                  ),
                ),
                child: TextField(
                  // controller: txtName, --------------- REMOVER COMENTÁRIO
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    fontFamily: 'Inter', // Estilo do texto digitado dentro do campo
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: "Nome",
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      color: Color(0xFF696969)
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  ),
                ),
              ),

                SizedBox(height: 12),

                // --------- Campo de E-mail ----------
                Container(
                padding: EdgeInsets.all(7), // Tamanho do campo
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7FC),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFF565656), // Cor do contorno
                    width: 1.5, // Largura do contorno
                  ),
                ),
                child: TextField(
                  // controller: txtEmail, --------------- REMOVER COMENTÁRIO
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontFamily: 'Inter', // Estilo do texto digitado dentro do campo
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: "Digite seu e-mail",
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      color: Color(0xFF696969)
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  ),
                ),
              ),

                SizedBox(height: 12),

                // --------- Campo de senha e ícone do olho ----------
                Container(
                  padding: EdgeInsets.all(7), // Tamanho do campo
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7FC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFF565656), // Cor do contorno do campo
                      width: 1.5, // Largura do contorno
                    ),
                  ),
                  child: TextField(
                    // controller: txtPassword, --------------- REMOVER COMENTÁRIO
                    style: TextStyle(
                      fontFamily: 'Inter', // Estilo do texto digitado dentro do campo
                      fontSize: 18,
                    ),
                    obscureText: !_isPasswordVisible, // Controle de visibilidade
                    decoration: InputDecoration(
                      hintText: "Crie uma senha (mínimo 8 dígitos)",
                      hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFF696969),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFF454947),
                          size: 35,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 12),

                // --------- Campo de seleção de tipo de usuário ----------
                Container(
                  padding: EdgeInsets.all(7), // Tamanho do campo
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7FC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFF565656), // Cor do contorno do campo
                      width: 1.5, // Largura do contorno
                    ),
                  ),
                  child: DropdownButtonHideUnderline( // Remover a linha do Dropdown
                    child: DropdownButton<UserType>(
                      isExpanded: true,
                      value: _selectedUserType,
                      items: UserType.values.map((UserType userType) {
                        return DropdownMenuItem<UserType>(
                          value: userType,
                          child: Container(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(
                              userType == UserType.aluno ? "Aluno" : "Solicitante",
                            ),
                          ),
                        );
                      }).toList(),

                      onChanged: (newValue) {
                        setState(() {
                          _selectedUserType = newValue!; // Atualizar a seleção
                        });
                      },
                      hint: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Text("Eu sou..."),
                      ),
                      style: TextStyle(   // Estilo do texto de cada opção
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFF696969),
                      ),
                    ),
                  ),
                ),

                // --------- Botão de salvar ----------
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 60),
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
                      "Criar conta",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xFF13715B),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
