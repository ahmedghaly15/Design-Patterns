import 'example.dart';

void main() {
  final companyA = CompanyA([]);
  final companyB = CompanyB([]);

  print('Employees in Company A:\n');
  companyA.forEach((employee) {
    print('Company A Employee: $employee');
  });

  print('\n=========================================\n');

  print('Employees in Company B:\n');
  companyB.forEach((employee) {
    print('Company B Employee: $employee');
  });
}
