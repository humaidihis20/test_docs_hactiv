void main() {
  var res = new Person();
  res.nama = "Hisyam";
  res.age = 26;
  res.greet();
}

class Person {
  String? nama;
  int? age;
  
  void greet() {
    print("Halo, nama saya ${this.nama} dan saya berusia ${this.age} tahun.");
  }
}