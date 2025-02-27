import 'dart:math';

void main() {
  String text = "HELLO WORLD!";
  String key = VigenereCipher.generateKey(text);

  print('Texto original: $text');
  print('Chave gerada: $key');

  String encoded = VigenereCipher.encode(text, key);
  print('Texto criptografado: $encoded');

  String decoded = VigenereCipher.decode(encoded, key);
  print('Texto descriptografado: $decoded');
}

class VigenereCipher {
  static String generateKey(String text) {
    final random = Random();
    String key = '';
    for (int i = 0; i < text.length; i++) {
      key += String.fromCharCode(random.nextInt(26) + 65);
    }
    return key;
  }

  static String encode(String text, String key) {
    String result = '';
    for (int i = 0; i < text.length; i++) {
      if (text[i].contains(RegExp(r'[A-Z]'))) {
        int textCode = text.codeUnitAt(i) - 65;
        int keyCode = key.codeUnitAt(i % key.length) - 65;
        int encodedChar = (textCode + keyCode) % 26 + 65;
        result += String.fromCharCode(encodedChar);
      } else {
        result += text[i];
      }
    }
    return result;
  }

  static String decode(String text, String key) {
    String result = '';
    for (int i = 0; i < text.length; i++) {
      if (text[i].contains(RegExp(r'[A-Z]'))) {
        int textCode = text.codeUnitAt(i) - 65;
        int keyCode = key.codeUnitAt(i % key.length) - 65;
        int decodedChar = (textCode - keyCode + 26) % 26 + 65;
        result += String.fromCharCode(decodedChar);
      } else {
        result += text[i];
      }
    }
    return result;
  }
}
