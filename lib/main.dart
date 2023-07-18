import 'package:flutter/material.dart';
import 'package:marvel_app/infraestructure/constants/keys.dart';
import 'package:marvel_app/infraestructure/services/https_service.dart';
import 'package:marvel_app/infraestructure/services/marvel_api.dart';
import 'package:marvel_app/ui/pages/search/search_view.dart';

import 'infraestructure/driver_adapter/character_api.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SearchView(),
    );
  }
}

/*
      CharacterApi(
                    httpsService: HttpsService(
                        url: MarvelApi(
                                privateKey: Keys.private,
                                publicKey: Keys.public)
                            .characters()))
                .getAllCharacter();
 */
