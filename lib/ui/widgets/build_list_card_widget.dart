import 'package:flutter/material.dart';

import '../../domain/character/character.dart';
import 'card_character.dart';

class BuilderListCharacterWidget extends StatefulWidget {
  final List<Character>? listData;
  const BuilderListCharacterWidget({
    Key? key,
    required this.listData,
  }) : super(key: key);

  @override
  State<BuilderListCharacterWidget> createState() =>
      _BuilderListCharacterWidgetState();
}

class _BuilderListCharacterWidgetState
    extends State<BuilderListCharacterWidget> {
  List<CardCharacter> lisCardCharacter = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.listData?.forEach((element) {
      lisCardCharacter.add(CardCharacter(character: element));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.listData == null) {
      return Container();
    }
    return Expanded(
      child: ListView(
        children: lisCardCharacter
            .where((element) =>
                element.character.name.toLowerCase().contains(''.toLowerCase()))
            .toList(),
      ),
    );
  }
}
