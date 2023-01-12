import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkResultEnums { on, off }

NetworkResultEnums checkConnectivityResult(ConnectivityResult result) {
  switch (result) {
    case ConnectivityResult.bluetooth:
    case ConnectivityResult.wifi:
    case ConnectivityResult.ethernet:
    case ConnectivityResult.mobile:
      return NetworkResultEnums.on;
    case ConnectivityResult.none:
      return NetworkResultEnums.off;
    case ConnectivityResult.vpn:
      break;
  }
  return NetworkResultEnums.off;
}
