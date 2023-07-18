import 'package:marvel_app/domain/character/character.dart';

class CharacterMapper {
  static Character fromJson(Map json) {
    final Map<String, dynamic> image = json['thumbnail'];
    final List comics = json['comics']['items'];
    return Character(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        imageUrl: image['path'] + image['extension'],
        comices: comics.map((e) => ComicMapper.fromJson(e)).toList());
  }
}

class ComicMapper {
  static Comic fromJson(Map json) {
    return Comic(collectionURI: json['resourceURI'], name: json['name']);
  }
}
