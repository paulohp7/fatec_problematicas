// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  // final TextEditingController txtName = TextEditingController(); --------------- REMOVER COMENTÁRIO
  // final TextEditingController txtEmail = TextEditingController(); --------------- REMOVER COMENTÁRIO
  // final TextEditingController txtPassword = TextEditingController(); --------------- REMOVER COMENTÁRIO

 
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
                  "Editar",
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

            // -------- Avatar de nova foto de perfil ---------
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Escolher uma nova foto de perfil",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 19.5,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 25),
              child: CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                    radius: 60,
                  ),
            ),

            // -------- Campo de novo nome ---------
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                "Editar nome",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 19.5,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: NewNameField()
            ),

            // -------- Campo de novo e-mail ---------
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Alterar e-mail",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 19.5,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: NewEmailField()
            ),

            // -------- Campo de nova senha ---------
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Alterar senha",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 19.5,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              child: NewPasswordField()
            ),

            SaveProfileButton(),

            CancelProfileButton()

          ],
        ),
      )
    );
  }
}


class NewNameField extends StatelessWidget {
  const NewNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          hintText: "Digite o novo nome...",
          hintStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 18,
            color: Color(0xFF696969)
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        ),
      ),
    );
  }
}


class NewEmailField extends StatelessWidget {
  const NewEmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          hintText: "Digite o novo e-mail...",
          hintStyle: TextStyle(
            fontFamily: 'Inter',
            fontSize: 18,
            color: Color(0xFF696969)
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        ),
      ),
    );
  }
}


class NewPasswordField extends StatefulWidget {
  const NewPasswordField({super.key});

  @override
  State<NewPasswordField> createState() => _NewPasswordFieldState();
}

class _NewPasswordFieldState extends State<NewPasswordField> {

  bool _isPasswordVisible = false; // Controle de visibilidade da senha

  @override
  Widget build(BuildContext context) {
    return Container(
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
          hintText: "Digite a nova senha (mínimo 8 dígitos)",
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
    );
  }
}


class SaveProfileButton extends StatelessWidget {
  const SaveProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 50, right: 50),
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
          "Salvar",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF13715B),
          ),
        ),
        onPressed: () {
          // --------
        },
      ),
    );
  }
}


class CancelProfileButton extends StatelessWidget {
  const CancelProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, left: 50, right: 50, bottom: 80), // ---- RETIRAR O BOTTOM CASO COLOQUE MAIS BOTÕES
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFF169172), // Cor do splash quando aperta o botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Borda circular
          ),
          minimumSize: Size(260, 80),
          backgroundColor: Colors.white,
          side: BorderSide(width: 2, color: Color(0xFF4CA087))
        ),
        child: Text(
          "Cancelar",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF228069),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}