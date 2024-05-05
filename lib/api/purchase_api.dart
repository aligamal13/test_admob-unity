import 'package:purchases_flutter/purchases_flutter.dart';

class PurchaseApi {
  static const _apiKey = 'goog_rICIUClUNrexFaAfIkAQDpwMKjD';
  static Future init() async {
    await Purchases.setLogLevel(LogLevel.info);
    PurchasesConfiguration configuration;

    configuration = PurchasesConfiguration(_apiKey);

    await Purchases.configure(configuration);
  }
}
