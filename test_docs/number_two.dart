void main() {
  var res = new Bird();
  res.hewanFullname = "Ayam";
  res.terbang = true;
  res.umurHewan = 3;
  res.describe();
  res.fly();
  print(res);
}

class Animal {
  String? namaHewan;
  int? age;

// Method menampilkan nama hewan dan usia
  void describe() {
    print("Nama hewan: ${this.namaHewan}, usia: ${this.age} tahun.");
  }
}

// Inheritance
class Bird extends Animal {
  bool? canFly;

  set hewanFullname(String name) => this.namaHewan = name;

  set umurHewan(int age) => this.age = age;

  set terbang(bool flying) => this.canFly = flying;
//   Set properti name, age, dan canFly

// Jika canFly adalah true, cetak: [name] sedang terbang!
// Jika canFly adalah false, cetak: [name] tidak bisa terbang.
  void fly() {
    if (canFly == true) {
      print("${this.namaHewan} sedang terbang!");
    } else {
      print("${this.namaHewan} tidak bisa terbang.");
    }
  }
}
