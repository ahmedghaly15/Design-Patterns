import 'behavioral_design_patterns/chain_of_responsibility/example.dart';

void main() {
  // Create handlers
  Handler conferenceHandler = ConferenceHandler();
  Handler purchaseHandler = PurchaseHandler();
  Handler ceoHandler = CeoHandler();

  // Set up the chain of responsibility
  conferenceHandler.setSuccessor(purchaseHandler);
  purchaseHandler.setSuccessor(ceoHandler);

  // Test the chain with different requests
  print("Sending conference request:");
  conferenceHandler.handleRequest(RequestType.conference);

  print("\nSending purchase request:");
  conferenceHandler.handleRequest(RequestType.purchase);

  print("\nSending unknown request:");
  conferenceHandler.handleRequest(RequestType.purchase);

  print("\nSending request to CEO:");
  ceoHandler.handleRequest(RequestType.conference);
}
