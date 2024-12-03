class Student {
  String _name;
  List<double> _grades = [];
  Student(this._name);

  void addGrade(double grade) {
    if (grade >= 0 && grade <= 100) {
      _grades.add(grade);
      print('Nilai $grade berhasil ditambahkan.');
    } else {
      print('Nilai harus di antara 0 dan 100.');
    }
  }

  double calculateAverage() {
    if (_grades.isEmpty) {
      print('Belum ada nilai yang ditambahkan.');
      return 0.0;
    }
    double total = _grades.reduce((a, b) => a + b);
    return total / _grades.length;
  }

  void printDetails() {
    double average = calculateAverage();
    print('-----------------------------');
    print('Nama siswa: $_name');
    if (_grades.isNotEmpty) {
      print('Rata-Rata Nilai: ${average.toStringAsFixed(2)}');
    } else {
      print('Rata-Rata Nilai: Belum ada nilai.');
    }
    print('-----------------------------');
  }
}

void main() {
  Student student = Student('Hisyam');
  student.addGrade(85.0);
  student.addGrade(90.5);
  student.addGrade(78.0);
  student.printDetails();
  student.addGrade(105.0);
  double average = student.calculateAverage();
  print('Rata-rata dihitung secara terpisah: ${average.toStringAsFixed(2)}');
}