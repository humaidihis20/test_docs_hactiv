void main() {  
  List<int> initial = [9, 2, 6, 8, 5, 3, 2, 9, 7, 1];  
  print('Initial list is ${initial}');  

  List<int> cleanedList = duplicated(initial);   
  print('Cleaned list is $cleanedList');  
}  
 
List<int> duplicated(List<int> list) {  
  Set<int> uniqueSet = list.toSet();  
  return uniqueSet.toList();  
}  