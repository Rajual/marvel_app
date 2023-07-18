import 'package:flutter/material.dart';
import 'package:marvel_app/domain/character/character.dart';
import 'package:marvel_app/ui/pages/search/interfaces.dart';
import 'package:marvel_app/ui/widgets/search_character_widget.dart';
import '../../../infraestructure/constants/keys.dart';
import '../../../infraestructure/driver_adapter/character_api.dart';
import '../../../infraestructure/services/https_service.dart';
import '../../../infraestructure/services/marvel_api.dart';
import '../../widgets/build_list_card_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    implements SearchViewInterface {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('MARVEL')),
        body: FutureBuilder<List<Character>>(
          future: CharacterApi(
                  httpsService: HttpsService(
                      url: MarvelApi(
                              privateKey: Keys.private, publicKey: Keys.public)
                          .characters()))
              .getAllCharacter(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SearchCharacterWidget(),
                  BuilderListCharacterWidget(listData: snapshot.data),
                ],
              );
            }
            return const SplashScreenPage();
          },
        ),
      ),
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const CircularProgressIndicator(),
          Image.asset(
            'assets/png/marvel_comic.png',
            width: 200,
            fit: BoxFit.scaleDown,
            height: 200,
          )
        ],
      ),
    ));
  }
}
