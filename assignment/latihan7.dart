import 'dart:io';  

void main() {  
  String word = 'EVAPORATE';  
  hangman(word);
}  

void hangman(String word) {  
  List<String> guessedLetters = [];  
  int maxAttempts = 6; 
  int attemptsLeft = maxAttempts;  
  List<String> clue = List.filled(word.length, '_');  
  
  while (attemptsLeft > 0) {   
    printCurrentState(clue);    
    stdout.write('Tebak huruf: ');  
    String? input = stdin.readLineSync()?.toUpperCase();  
 
    if (input == null || input.isEmpty || input.length > 1) {  
      print('Silakan masukkan satu huruf.');  
      continue;  
    }  

    String guessedLetter = input;    
    if (guessedLetters.contains(guessedLetter)) {  
      print('Anda sudah menebak huruf ini: ${guessedLetter}');  
      continue;  
    }  

    guessedLetters.add(guessedLetter);   
    if (word.contains(guessedLetter)) {  
      for (int i = 0; i < word.length; i++) {  
        if (word[i] == guessedLetter) {  
          clue[i] = guessedLetter;  
        }  
      }  
    } else {  
      attemptsLeft--;  
      print('Tebakan salah. Sisa tebakan Anda: ${attemptsLeft}');  
    }  
 
    if (!clue.contains('_')) {  
      print('Selamat! Anda telah menebak kata: ${word}');  
      return;
    }  
  }  
 
  print('Game Over! Kata yang benar adalah: ${word}');  
}  

void printCurrentState(List<String> clue) {  
  print('Kata: ${clue.join(' ')}');
}