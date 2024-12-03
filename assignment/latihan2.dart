void main() {  
  String name = 'Belajar Flutter dengan Hacktiv8';  
  
  String result = reverse(name);  
  
  print('Menjadi:');  
  print(result);  
}  

String reverse(String str) {   
  List<String> words = str.split(' ');  
  List<String> reversed = words.reversed.toList();    
  return reversed.join(' ');  
}