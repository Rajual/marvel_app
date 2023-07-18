import 'dart:convert';

import 'package:crypto/crypto.dart';

class MD5Service {
  static String enCrypte(String data) {
    return md5.convert(utf8.encode(data)).toString();
  }
}
