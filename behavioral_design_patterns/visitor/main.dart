import 'example.dart';

void main() {
  final house = House();
  final company = Company();
  final factory = Factory();

  final taxCollector = TaxCollectorCompany([house, company, factory]);
  final visitorA = VisitorA();

  taxCollector.accept(visitorA);
}
