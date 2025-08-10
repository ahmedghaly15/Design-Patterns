// State
abstract class Book {
  void nextBook();
}

class Worker {
  late Book currentBook;

  Worker() {
    currentBook = Book1(this);
  }

  void getNextBook() {
    currentBook.nextBook();
    print('Getting $currentBook');
  }
}

class Book1 extends Book {
  final Worker _worker;

  Book1(this._worker);

  @override
  void nextBook() {
    _worker.currentBook = Book2(_worker);
  }

  @override
  String toString() {
    return 'Book1';
  }
}

class Book2 extends Book {
  final Worker _worker;

  Book2(this._worker);

  @override
  void nextBook() {
    _worker.currentBook = Book3(_worker);
  }

  @override
  String toString() {
    return 'Book2';
  }
}

class Book3 extends Book {
  final Worker _worker;

  Book3(this._worker);

  @override
  void nextBook() {
    _worker.currentBook = Book1(_worker);
  }

  @override
  String toString() {
    return 'Book3';
  }
}
