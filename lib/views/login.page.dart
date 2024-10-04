// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

// import 'package:firebase_auth/firebase_auth.dart'; --------------- REMOVER COMENTÁRIO
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController txtEmail = TextEditingController(); --------------- REMOVER COMENTÁRIO
  // final TextEditingController txtPassword = TextEditingController(); --------------- REMOVER COMENTÁRIO
  bool _isPasswordVisible = false; // Controle de visibilidade da senha

/* --------------- REMOVER COMENTÁRIO

  // ------- Método de autenticação --------
  Future<void> signIn(BuildContext context) async {
    try {
      // Autenticação com Firebase
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: txtEmail.text,
        password: txtPassword.text,
      );

      // Navega para outra tela após autenticação bem-sucedida
      Navigator.pushReplacementNamed(context, '/chats'); // ------ ALTERAR ROTA
    } on FirebaseAuthException catch (ex) {
      // Exibe mensagem de erro
      var snackBar = SnackBar(
        content: Text(ex.message ?? 'Erro inesperado.'),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

*/

/* --------------- REMOVER COMENTÁRIO

  // --------- Liberação de recursos para evitar vazamentos de memória ----------
  @override
  void dispose() {
    // Libera os controladores quando o widget for destruído
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // --------- Texto "Login" em cima ----------
            Text(
              "Login",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 36,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D),
              ),
            ),
            
            SizedBox(height: 70),

            // --------- Texto "E-mail" em cima ----------
            Text(
              "E-mail",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D),
              ),
            ),
            
            SizedBox(height: 5),

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
                  fontFamily: 'Inter', // estilo do texto digitado no campo
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

            SizedBox(height: 30), // Divisão entre campo de e-mail e senha

            // --------- Texto "Senha" em cima ----------
            Text(
              "Senha",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D),
              ),
            ),
            
            SizedBox(height: 5),

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
                  fontFamily: 'Inter', // estilo do texto digitado no campo
                  fontSize: 18,
                ),
                obscureText: !_isPasswordVisible, // Controle de visibilidade
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  hintStyle: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    color: Color(0xFF696969)
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: Color(0xFF454947),
                      size: 35,
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
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

            SizedBox(height: 5),


            // --------- Texto de "esqueci minha senha" ----------
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Color(0xFFBBDED5)),
                ),
                onPressed: () {}, 
                child: Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.5,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF336251),
                  ),
                ),
              ),
            ),

            // --------- Botão de entrar ----------
            Container(
              margin: EdgeInsets.only(top: 40),
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
                  "Entrar",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF13715B),
                  ),
                ),
                onPressed: () {
                  // signIn(context); // chama o método de login --------------- REMOVER COMENTÁRIO
                },
              ),
            ),

            // --------- Botão de criar uma conta ----------
            Container(
              margin: EdgeInsets.only(top: 12),
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
                onPressed: () {
                  Navigator.pushNamed(context, '/new-account');
                },
                child: Text(
                  "Criar uma conta",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: const Color(0xFF228069),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
