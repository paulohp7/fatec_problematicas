// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatec_problematicas/utils/filter_dialog.dart';
import 'package:flutter/material.dart';

class SearchSubjects extends StatefulWidget {
  const SearchSubjects({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchSubjectsState createState() => _SearchSubjectsState();
}

class _SearchSubjectsState extends State<SearchSubjects> {

  Future<void> applyFilter(BuildContext context) {
    return showDialog<void>(
      context: context, 
      builder: (context) {
        return FilterDialog();
      }
    );
  }
  // Variável para controlar quando o botão "Pesquisar" foi clicado
  bool pesquisado = false;
  // Lista mock de problemas
  List<Map<String, String>> problemas = [
    {"titulo": "Problema 1", "descricao": "Descrição do problema 1", "AreaSaude": "Oncologia", "AreaComputacional": "IA"},
    {"titulo": "Problema 2", "descricao": "Descrição do problema 2", "AreaSaude": "Cardiologia", "AreaComputacional": "Desenvolvimento"},
    {"titulo": "Problema 3", "descricao": "Descrição do problema 3", "AreaSaude": "Ginecologia", "AreaComputacional": "Cloud"},
    {"titulo": "Problema 4", "descricao": "Descrição do problema 4", "AreaSaude": "Urologia", "AreaComputacional": "Segurança"},
    {"titulo": "Problema 5", "descricao": "Descrição do problema 5", "AreaSaude": "Oncologia", "AreaComputacional": "IA"},
  ];
  List<Map<String, String>> resultadosBusca = [];
  String buscaTexto = ""; 
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    resultadosBusca = problemas;
  }

  void filtrarProblemas(String texto) {
    setState(() {
      pesquisado = true; 
    });
  }

  void limparBusca(){
    setState(() {
      pesquisado = false;
    });
  }
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
                  "Buscar Assuntos",
                  style: TextStyle(
                    fontSize: 28,
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

      body: Column(
        children: [
          
          // --------- Campo de Busca ----------
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 350,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xFFF7F7FC),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFF565656), // Cor do contorno
                width: 1.5, // Largura do contorno
              ),
            ),
            child: TextField(
              style: TextStyle(
                fontFamily: 'Inter', // estilo do texto digitado no campo
                fontSize: 18,
              ),
              decoration: InputDecoration(
                hintText: "Digite sua busca",
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  color: Color(0xFF696969)
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                suffixIcon: Icon(Icons.search_rounded)
              ),
              onSubmitted: (value) {
                filtrarProblemas(value); // Realiza a busca ao pressionar "Enter"
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              // --------- Botão de aplicar filtros ----------
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Borda circular
                    ),
                    minimumSize: Size(20, 50),
                    backgroundColor: Color(0xFF4DC09E),
                  ),
                  onPressed: () => applyFilter(context), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aplicar Filtros',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: const Color(0xFF216655),
                        ),
                      ),

                      SizedBox(width: 10),

                      Icon(
                        Icons.filter_list_rounded,
                        color: Color(0xFF216655),
                      )
                    ],
                  )),
              ),

              // --------- Botão de limpar filtros ----------
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Borda circular
                    ),
                    minimumSize: Size(20, 50),
                    backgroundColor: Color(0xFFB8D9CF),
                  ),
                  onPressed: () => {}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Limpar Filtros',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: const Color(0xFF287A65),
                        ),
                      ),

                      SizedBox(width: 10),

                      Icon(
                        Icons.filter_list_off_rounded,
                        color: const Color(0xFF287A65),
                      )
                    ],
                  )),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 50),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Cor da borda
                  width: 1,          // Largura da borda
                ),
                borderRadius: BorderRadius.circular(22), // Opcional: para bordas arredondadas
              ),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Center( // Centraliza o conteúdo do ListTile
                        child: Container(
                          margin: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width * 0.8, // Define uma largura customizada
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'Um assunto qualquer',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xFF13715B),
                                ),
                              )
                            ),

                            subtitle: Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Text(
                                    'Descrição do assunto...',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19,
                                      color: Color.fromARGB(255, 74, 74, 74),
                                    ),
                                  ),
                              ),
                            ),
                            onTap: () => Navigator.pushNamed(context, '/subject'),
                          ),
                        ),
                      ),

                      Divider(
                        color: Colors.grey,
                        thickness: 1, // Espessura da linha
                        indent: 70,   // Espaçamento à esquerda
                        endIndent: 70, // Espaçamento à direita
                      ),
                      
                    ],
                  );
                }
              ),
            ),
          ),
        ],
      )
    );
  }
}