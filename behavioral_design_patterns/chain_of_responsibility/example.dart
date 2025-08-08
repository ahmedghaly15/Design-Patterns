enum RequestType { conference, purchase }

abstract class Handler {
  /// The next handler in the chain
  Handler? successor;

  /// Sets the next handler in the chain
  void setSuccessor(Handler successor) {
    this.successor = successor;
  }

  void handleRequest(RequestType requestType);
}

class ConferenceHandler extends Handler {
  @override
  void handleRequest(RequestType requestType) {
    if (requestType == RequestType.conference) {
      print("ConferenceHandler: Handling conference request.");
    } else {
      /// Pass the request to the next handler
      successor?.handleRequest(requestType);
    }
  }
}

class PurchaseHandler extends Handler {
  @override
  void handleRequest(RequestType requestType) {
    if (requestType == RequestType.purchase) {
      print("PurchaseHandler: Handling purchase request.");
    } else {
      successor?.handleRequest(requestType);
    }
  }
}

class CeoHandler extends Handler {
  @override
  void handleRequest(RequestType requestType) {
    print("CeoHandler: Can handle anything.");
  }
}
