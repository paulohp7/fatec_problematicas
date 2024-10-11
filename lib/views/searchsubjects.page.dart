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
      body: Column(
        children: [
          Container(
            width: 350,
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Digite sua busca",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search_rounded),
                  onPressed: () {
                    filtrarProblemas(controller.text);
                  },
                ),
              ),
              onSubmitted: (value) {
                filtrarProblemas(value); // Realiza a busca ao pressionar "Enter"
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () => applyFilter(context), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Aplicar Filtros'),
                      Icon(Icons.filter_list_rounded)
                    ],
                  )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () => limparBusca(), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Limpar Filtros'),
                      Icon(Icons.filter_list_off_rounded),
                    ],
                  )),
              ),
            ],
          ),
          
          // Exibir a lista de problemas somente após clicar no botão "Pesquisar"
            pesquisado
            ? Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, // Cor da borda
                      width: 2,          // Largura da borda
                    ),
                    borderRadius: BorderRadius.circular(12), // Opcional: para bordas arredondadas
                  ),
                  child: ListView.builder(
                    itemCount: problemas.length,
                    itemBuilder: (context, index) {
                      return FractionallySizedBox(
                        widthFactor: 0.9, // Define a largura como 90% do pai
                        child: GestureDetector(
                          onTap: () {
                            // Redireciona para a página '/subject'
                            Navigator.pushNamed(context, '/subject');
                          },
                          child: Card(
                            color: const Color.fromARGB(255, 255, 255, 255), // Cor de fundo do Card
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                            ),
                            elevation: 1, // Sombra no card
                            margin: const EdgeInsets.symmetric(vertical: 3), // Margem entre os cards
                            child: Padding(
                              padding: const EdgeInsets.all(16.0), // Espaçamento interno
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    problemas[index]['titulo'] ?? '',
                                    style: const TextStyle(
                                      fontSize: 18, // Tamanho da fonte do título
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87, // Cor do texto do título
                                    ),
                                  ),
                                  const SizedBox(height: 8), // Espaçamento entre o título e os tipos
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        problemas[index]['AreaSaude'] ?? 'Tipo não informado',
                                        style: const TextStyle(
                                          fontSize: 10, // Tamanho da fonte do tipo
                                          color: Colors.grey, // Cor do texto do tipo
                                        ),
                                      ),
                                      Text(
                                        problemas[index]['AreaComputacional'] ?? 'Bug não informado',
                                        style: const TextStyle(
                                          fontSize: 10, // Tamanho da fonte do bug
                                          color: Colors.redAccent, // Cor do texto do bug
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8), // Espaçamento entre o tipo/bug e a descrição
                                  Text(
                                    problemas[index]['descricao'] ?? '',
                                    style: const TextStyle(
                                      fontSize: 12, // Tamanho da fonte da descrição
                                      color: Colors.black87, // Cor do texto da descrição
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            : Container(),
        ],
      )
    );
  }
}