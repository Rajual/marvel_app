import 'package:flutter/material.dart';
import 'package:marvel_app/ui/pages/detail/interfaces.dart';

import '../../../domain/character/character.dart';
import '../../widgets/key_value_data_widget.dart';

class DetailView extends StatefulWidget {
  final Character character;
  const DetailView({Key? key, required this.character}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView>
    implements DetailViewInterface {
  @override
  Widget build(BuildContext context) {
    final double sizeText = 23.0;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Card(
              elevation: 12,
              color: Colors.grey.shade50,
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: Scrollbar(
              thickness: 10,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      widget.character.description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 23),
                    ),
                  ),
                  KeyValueDataWidget(
                      size: sizeText,
                      name: 'Name',
                      value: widget.character.name),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
