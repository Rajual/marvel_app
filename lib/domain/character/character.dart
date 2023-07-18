class Character {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final List<Comic> comices;
  Character(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.comices});

  factory Character.fromMap(Map map) {
    return Character(
        id: map['id'],
        name: map['name'],
        description: map['description'],
        imageUrl: map['imageUrl'],
        comices: map['comices']);
  }
}

class Comic {
  final String collectionURI;
  final String name;
  Comic({required this.collectionURI, required this.name});

  factory Comic.fromMap(Map map) {
    return Comic(collectionURI: map['collectionURI'], name: map['name']);
  }
}
