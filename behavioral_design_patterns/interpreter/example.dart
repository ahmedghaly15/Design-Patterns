abstract class Expression {
  bool interpret(String context);
}

class TerminalExpression implements Expression {
  final String _data;

  TerminalExpression(this._data);

  @override
  bool interpret(String context) {
    return context.contains(_data);
  }
}

class OrExpression implements Expression {
  final Expression _expr1;
  final Expression _expr2;

  OrExpression(this._expr1, this._expr2);

  @override
  bool interpret(String context) {
    return _expr1.interpret(context) || _expr2.interpret(context);
  }
}

class AndExpression implements Expression {
  final Expression _expr1;
  final Expression _expr2;

  AndExpression(this._expr1, this._expr2);

  @override
  bool interpret(String context) {
    return _expr1.interpret(context) && _expr2.interpret(context);
  }
}

class Interpreter {
  Expression buildInterpretationTree() {
    final terminal1 = TerminalExpression("Lions");
    final terminal2 = TerminalExpression("Tigers");
    final terminal3 = TerminalExpression("Bears");

    // Tigers and Bears
    final alternation1 = AndExpression(terminal2, terminal3);

    // Lions or (Tigers and Bears)
    final alternation2 = OrExpression(terminal1, alternation1);

    // Bears and (Lions or (Tigers and Bears))
    return AndExpression(terminal3, alternation2);
  }
}
