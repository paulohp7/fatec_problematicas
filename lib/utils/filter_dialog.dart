// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {

// class FilterDialog extends StatelessWidget {
//   const FilterDialog({super.key});

  // Variáveis para armazenar os valores dos filtros
  String assunto = '';
  String areaSaude = 'Selecione o Tipo'; // Valor inicial para o dropdown
  String? data; // Armazena a data selecionada
  String parteDescricao = '';

  // Opções do dropdown para o campo "Tipo"
  final List<String> areasSaude = ['Selecione o Tipo', 'Oncologia', 'Ginecologia', 'Urologia', 'Cardiologia'];

  // Função para abrir o seletor de datas
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        data = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 300,
        child: Column(
          children: [
            Text('FILTROS'),
            // Dropdown para Tipo
            DropdownButton<String>(
              isExpanded: true,
              value: areaSaude,
              items: areasSaude.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  areaSaude = newValue!;
                });
              },
              hint: const Text('Selecione a Área'),
            ),

            // Campo de filtro para Data
            TextField(
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Data',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              onTap: () => _selectDate(context),
              controller: TextEditingController(text: data),
            ),

            // Dropdown para Tipo
            DropdownButton<String>(
              isExpanded: true,
              value: areaSaude,
              items: areasSaude.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  areaSaude = newValue!;
                });
              },
              hint: const Text('Selecione a Área'),
            ),  
            // Campo de filtro para parte do título
            TextField(
              decoration: const InputDecoration(labelText: 'Parte da descrição'),
              onChanged: (value) {
                setState(() {
                  parteDescricao = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Apenas fecha o modal
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Apenas fecha o modal
                    Navigator.of(context).pop();
                  },
                  child: const Text('Pesquisar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}