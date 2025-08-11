class Singleton {
  // Private named constructor
  Singleton._internal();

  // The single instance (created lazily)
  static final Singleton _instance = Singleton._internal();

  // Public factory constructor returns the same instance every time
  factory Singleton() => _instance;
}
