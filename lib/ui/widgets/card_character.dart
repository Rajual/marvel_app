import 'package:flutter/material.dart';

import '../../domain/character/character.dart';
import '../pages/detail/details_view.dart';
import 'key_value_data_widget.dart';

class CardCharacter extends StatelessWidget {
  final Character character;
  const CardCharacter({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Card(
        color: Colors.grey.shade50,
        elevation: 20,
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    //Maker that the with cat image 1/2 the withe card.
                    Expanded(
                      flex: 1,
                      child: /* CachedNetworkImage(
                        imageUrl: catData.image?.url ?? '',
                        errorWidget: (context, string, dynamic) {
                          return Container();
                        },
                        progressIndicatorBuilder:
                            (context, string, downloadProgress) {
                          return Center(child: CircularProgressIndicator());
                        },
                      )*/
                          Image.network(
                        '',
                        errorBuilder: (context, object, stack) {
                          return Container();
                        },
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              KeyValueDataWidget(
                                name: 'Nombre',
                                value: character.name,
                              ),
                              KeyValueDataWidget(
                                name: 'Detalles',
                                value: character.description,
                              ),
                              KeyValueDataWidget(
                                name: 'ID',
                                value: character.id.toString(),
                              ),
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
            Positioned(
                top: 0,
                right: 2,
                child: Row(
                  children: [
                    // const Text('Ver mas...'),
                    IconButton(
                        tooltip: 'Aca para mas',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DetailView(
                                        character: Character(
                                            comices: [],
                                            description: '',
                                            id: 1,
                                            imageUrl: '',
                                            name: ''),
                                      )));
                        },
                        icon: const Icon(Icons.arrow_forward_ios_sharp)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
