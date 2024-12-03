void main() {   
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];  

  List<int> evenNumbers = a.where((number) => number.isEven).toList();  
 
  print('Bilangan genap: ${evenNumbers}');  
}  