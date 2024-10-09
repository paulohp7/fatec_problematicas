// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fatec_problematicas/utils/filter_dialog.dart';
import 'package:flutter/material.dart';

class SearchSubjects extends StatelessWidget {
  const SearchSubjects({super.key});

  Future<void> applyFilter(BuildContext context) {
    return showDialog<void>(
      context: context, 
      builder: (context) {
        return FilterDialog();
      }
    );
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
                  "Buscar Assunto",
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
      body: Column(
        children: [
          Container(
            width: 350,
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Digite sua busca",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search_rounded)
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(20),
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
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () => {}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Limpar Filtros'),
                      Icon(Icons.filter_list_off_rounded)
                    ],
                  )),
              ),
            ],
          ),
          Expanded(
            child: Container(
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
            ),
          ),
        ],
      )
    );
  }
}