class CompanyA extends Iterable<String> {
  final List<String> _employees;

  CompanyA(this._employees) {
    addEmployee("Ahmed");
    addEmployee("Osama");
    addEmployee("Ali");
  }

  @override
  Iterator<String> get iterator => _employees.iterator;

  void addEmployee(String employee) {
    _employees.add(employee);
  }
}

class CompanyB extends Iterable<String> {
  final List<String> _employees;

  CompanyB(this._employees) {
    addEmployee("Blal");
    addEmployee("Kamal");
    addEmployee("Ola");
  }

  @override
  Iterator<String> get iterator => _employees.iterator;

  void addEmployee(String employee) {
    _employees.add(employee);
  }
}
