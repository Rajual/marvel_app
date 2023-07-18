import 'package:marvel_app/domain/character/character.dart';
import 'package:marvel_app/domain/character/character_gateway.dart';
import 'package:marvel_app/infraestructure/mappers/character_mapper.dart';
import 'package:marvel_app/infraestructure/services/https_service.dart';

class CharacterApi implements CharacterGateway {
  final HttpsService httpsService;
  CharacterApi({required this.httpsService});

  @override
  Future<List<Character>> getAllCharacter() async {
    final response = await httpsService.get();
    final result = response['data']['results'] as List;
    return result.map((e) => CharacterMapper.fromJson(e)).toList();
  }

  @override
  Future<Character> getCharacter(String name) async {
    final result = httpsService.get();
    return Character(
        id: 1,
        name: name,
        description: 'description',
        imageUrl: 'imageUrl',
        comices: []);
  }
}
