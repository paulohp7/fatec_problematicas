// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

const List<String> healthList = <String>['Oncologia', 'Cardiologia', 'Urologia', 'Ginecologia'];
const List<String> computationalList = <String>['IA', 'Segurança da Informação', 'Cloud', 'Desenvolvimento'];

class NewSubject extends StatelessWidget {
  const NewSubject({super.key});

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
                  "Novo Assunto",
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
      body: MyForm()
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D)
              ),
              'Descrição:'
            ),

            // --------- Campo da descrição ----------
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(7), // Tamanho do campo
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                border: Border.all(
                  color: Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextFormField(
                maxLines: 50,
                minLines: 1,
                style: TextStyle(
                      fontFamily: 'Inter', // estilo do texto digitado no campo
                      fontSize: 18,
                    ),
                decoration: InputDecoration(
                  hintText: 'Escreva a descrição do assunto aqui',
                  hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFF696969)
                      ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Texto em branco!';
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 20),

            Text(
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D)
              ),
              'Dados disponíveis para análise:'
            ),

            // --------- Campo de dados disponíveis ----------
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(7), // Tamanho do campo
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                border: Border.all(
                  color: Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextFormField(
                maxLines: 50,
                minLines: 1,
                style: TextStyle(
                      fontFamily: 'Inter', // estilo do texto digitado no campo
                      fontSize: 18,
                    ),
                decoration: InputDecoration(
                  hintText: 'Escreva quais dados serão disponíveis',
                  hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFF696969)
                      ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Texto em branco!';
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 20),

            Text(
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D)
              ),
              'Link externo do assunto:'
            ),

            // --------- Campo de link externo ----------
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(7), // Tamanho do campo
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC), // Cor de fundo do campo
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
                border: Border.all(
                  color: Color(0xFF565656), // Cor do contorno
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: TextFormField(
                maxLines: 2,
                minLines: 1,
                style: TextStyle(
                      fontFamily: 'Inter', // estilo do texto digitado no campo
                      fontSize: 18,
                    ),
                decoration: InputDecoration(
                  hintText: 'Cole aqui o link externo',
                  hintStyle: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFF696969)
                      ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16) // ---------
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Texto em branco!';
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 20),

            Text(
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D)
              ),
              'Área da saúde abordada:'
            ),

            // --------- Campo de seleção da área da saúde ----------
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(20), // Tamanho do campo
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF565656), // Cor do contorno do campo
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: HealthAreaDropdownButton()
            ),

             SizedBox(height: 20),

            Text(
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 19.5,
                fontWeight: FontWeight.w900,
                color: Color(0xFF3D3D3D)
              ),
              'Área computacional necessária:'
            ),

            // --------- Campo de seleção da área computacional ----------
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(20), // Tamanho do campo
              decoration: BoxDecoration(
                color: Color(0xFFF7F7FC),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF565656), // Cor do contorno do campo
                  width: 1.5, // Largura do contorno
                ),
              ),
              child: ComputationalAreaDropdownButton()
            ),

            SizedBox(height: 20),

            // --------- Botão de cadastrar assunto ----------
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 25, bottom: 15),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Borda circular
                    ),
                    minimumSize: Size(260, 80),
                    backgroundColor: Color(0xFF4DC09E),
                  ),
                  onPressed: () => {
                    if (_formKey.currentState!.validate()) {}
                  }, 
                  child: Text(
                    'Cadastrar assunto',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF13715B),
                    ),
                  ) 
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class HealthAreaDropdownButton extends StatefulWidget {
  const HealthAreaDropdownButton({super.key});

  @override
  State<HealthAreaDropdownButton> createState() => _HealthAreaDropdownButtonState();
}

class _HealthAreaDropdownButtonState extends State<HealthAreaDropdownButton> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: dropdownValue,
      hint: // Container(
        // padding: EdgeInsets.only(left: 16),
        // child: 
        Text('Selecione uma opção'),
      // ),
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 18,
        color: Color(0xFF696969)
      ),
      decoration: InputDecoration.collapsed(hintText: ''), // Remover underline
      items: healthList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(), 
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}

class ComputationalAreaDropdownButton extends StatefulWidget {
  const ComputationalAreaDropdownButton({super.key});

  @override
  State<ComputationalAreaDropdownButton> createState() => _ComputationalAreaDropdownButton();
}

class _ComputationalAreaDropdownButton extends State<ComputationalAreaDropdownButton> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: dropdownValue,
      hint: // Container(
        // padding: EdgeInsets.only(left: 16),
        // child: 
        Text('Selecione uma opção'),
      // ),
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 18,
        color: Color(0xFF696969)
      ),
      decoration: InputDecoration.collapsed(hintText: ''), // Remover underline
      items: computationalList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(), 
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}