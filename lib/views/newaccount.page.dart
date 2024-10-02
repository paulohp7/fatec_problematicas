// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class NewAccountPage extends StatelessWidget {
  const NewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Nova Conta"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Olá! Novo por aqui?',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20
              ),
            ),
            Text(
              'Qual será seu tipo de conta?',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 20
              ),
            ),
            SizedBox(height: 12),
            AccountTypeRadioButton(),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(7), // Tamanho do campo
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Nome",
                  hintStyle: TextStyle(),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                )
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(7), // Tamanho do campo
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: TextStyle(),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(7), // Tamanho do campo
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha",
                  hintStyle: TextStyle(),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

enum AccountType { solicitante, aluno }

class AccountTypeRadioButton extends StatefulWidget {
  const AccountTypeRadioButton({super.key});

  @override
  State<AccountTypeRadioButton> createState() => _AccountTypeRadioButtonState();
}

class _AccountTypeRadioButtonState extends State<AccountTypeRadioButton> {
  AccountType? _type = AccountType.solicitante;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         RadioListTile<AccountType>(
          title: Text('Solicitante'), 
          value: AccountType.solicitante, 
          groupValue: _type,
          onChanged: (AccountType? value) {
            setState(() {
              _type = value;
            });
          },
        ),
        RadioListTile<AccountType>(
          title: Text('Aluno'), 
          value: AccountType.aluno, 
          groupValue: _type,
          onChanged: (AccountType? value) {
            setState(() {
              _type = value;
            });
          },
        )
      ],
    );
  }
}