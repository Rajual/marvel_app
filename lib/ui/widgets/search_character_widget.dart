import 'package:flutter/material.dart';

class SearchCharacterWidget extends StatelessWidget {
  const SearchCharacterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    textEditingController.addListener(() {});
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: textEditingController,
        decoration: _inputDecoration(),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return const InputDecoration(
        icon: Icon(Icons.search), hintText: 'Search a breed...');
  }
}
