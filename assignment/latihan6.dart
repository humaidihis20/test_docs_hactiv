import 'dart:io';  

void main() {  
  stdout.write('Masukkan ukuran papan (misal 3 untuk papan 3x3): ');  
  int size = int.parse(stdin.readLineSync() ?? '3');
  drawBoard(size);
}  
  
void drawBoard(int size) {   
  String rowLines = " --- ";  
  String colLines = "|   ";  

  for (int i = 0; i < size; i++) {  
    stdout.write(rowLines);  
    for (int j = 0; j < size - 1; j++) {  
      stdout.write(rowLines);  
    }  
    stdout.writeln(); 
 
    for (int j = 0; j < size; j++) {  
      stdout.write(colLines);  
    }  
    stdout.writeln("|"); 
  }  
  
  stdout.write(rowLines);  
  for (int j = 0; j < size - 1; j++) {  
    stdout.write(rowLines);  
  }  
  stdout.writeln();
}  