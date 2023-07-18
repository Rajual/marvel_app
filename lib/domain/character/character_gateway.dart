import 'package:marvel_app/domain/character/character.dart';

abstract class CharacterGateway {
  Future<List<Character>> getAllCharacter();
  Future<Character> getCharacter(String name);
}
