import 'package:marvel_app/infraestructure/constants/apis.dart';
import 'package:marvel_app/infraestructure/services/md5_service.dart';

class MarvelApi {
  final String publicKey;
  final String privateKey;
  MarvelApi({required this.privateKey, required this.publicKey});

  Uri characters() {
    final String ts = DateTime.now().millisecondsSinceEpoch.toString();
    return Uri.https(marvelApiDomain, charactersUrl, {
      'ts': ts,
      'apikey': publicKey,
      'hash': MD5Service.enCrypte(ts + privateKey + publicKey)
    });
  }

  Uri comics() {
    final String ts = DateTime.now().millisecondsSinceEpoch.toString();
    return Uri.https(marvelApiDomain, comicsUrl, {
      'ts': ts,
      'apikey': publicKey,
      'hash': MD5Service.enCrypte(ts + privateKey + publicKey)
    });
  }
}
