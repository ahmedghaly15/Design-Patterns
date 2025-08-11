abstract class Visitor {
  void visitHouse(House house);
  void visitCompany(Company company);
  void visitFactory(Factory factory);
  void visitTaxCollectorCompany(TaxCollectorCompany taxCollectorCompany);
}

abstract class TaxHolder {
  void accept(Visitor visitor);
}

class House extends TaxHolder {
  @override
  void accept(Visitor visitor) {
    visitor.visitHouse(this);
  }
}

class Company extends TaxHolder {
  @override
  void accept(Visitor visitor) {
    visitor.visitCompany(this);
  }
}

class Factory extends TaxHolder {
  @override
  void accept(Visitor visitor) {
    visitor.visitFactory(this);
  }
}

class TaxCollectorCompany extends TaxHolder {
  final List<TaxHolder> _taxHolders;

  TaxCollectorCompany(this._taxHolders);

  @override
  void accept(Visitor visitor) {
    _taxHolders.forEach((taxHolder) {
      taxHolder.accept(visitor);
    });

    visitor.visitTaxCollectorCompany(this);
  }
}

class VisitorA extends Visitor {
  int _taxes = 0;

  @override
  void visitHouse(House house) {
    _taxes += 150;
    print('VisitorA Collected $_taxes from House');
  }

  @override
  void visitCompany(Company company) {
    _taxes += 1000;
    print('VisitorA Collected $_taxes from Company');
  }

  @override
  void visitFactory(Factory factory) {
    _taxes += 2000;
    print('VisitorA Collected $_taxes from Factory');
  }

  @override
  void visitTaxCollectorCompany(TaxCollectorCompany taxCollectorCompany) {
    print('VisitorA Collected $_taxes from TaxCollectorCompany');
  }
}
