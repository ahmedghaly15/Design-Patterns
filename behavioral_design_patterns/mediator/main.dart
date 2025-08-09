import 'example.dart';

void main() {
  final cairoAirPort = CairoAirPort();
  final airBus1 = AirBus(cairoAirPort);
  final miniAirBus1 = MiniAirBus(cairoAirPort);

  print('\n==========================================\n');

  print('AirBus 1 requesting landing...\n');
  airBus1.requestLanding();

  print('\nMini AirBus 1 requesting landing...\n');
  miniAirBus1.requestLanding();

  print('\nAir Bus 1 Landed Successfully\n');
  airBus1.notifySuccess();

  print('\nMini Bus 1 requesting landing again...\n');
  miniAirBus1.requestLanding();

  print('\nMini AirBus 1 Landed Successfully\n');
  miniAirBus1.notifySuccess();
}
