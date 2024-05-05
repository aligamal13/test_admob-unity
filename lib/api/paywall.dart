import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PayWall extends StatefulWidget {
  const PayWall({super.key, required this.offering});
  final Offering offering;
  @override
  State<PayWall> createState() => _PayWallState();
}

class _PayWallState extends State<PayWall> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Wrap(
            children: <Widget>[
              Container(
                height: 70.0,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(247, 222, 134, 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0))),
                child: Center(
                    child: Text(
                  'Google Play Subscription Required',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold,color:const Color.fromRGBO(255, 92, 0, 1) ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, left: 16.0, right: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'للاشتراك لمنع الاعلانات',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: widget.offering.availablePackages.length,
                itemBuilder: (BuildContext context, int index) {
                  var myProductList = widget.offering.availablePackages;
                  print(myProductList[index].storeProduct.description);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Card(
                      color: Colors.white,
                      child: ListTile(
                          onTap: () async {
                            try {
                              CustomerInfo customerInfo =
                                  await Purchases.purchasePackage(
                                      myProductList[index]);
                              if (customerInfo
                                          .entitlements.all['all_features'] !=
                                      null &&
                                  customerInfo.entitlements.all['all_features']
                                          ?.isActive ==
                                      true) {
                                if (context.mounted) {
                                  //dialog to show subscription success
                                 /* await Utils.errorDialog(context,
                                      title: 'Successfully subscribed',
                                      subtitle:
                                          'Your subscription is confirmed and will be automatically renewed on ${customerInfo.entitlements.all['all_features']!.expirationDate!.substring(0, 10)}.');*/
                                }
                              }
                            } catch (e) {
                              //dialog to show subscription failure
                              /*if (context.mounted) {
                                if (e.toString().contains('NETWORK_ERROR') ||
                                    e
                                        .toString()
                                        .contains('OFFLINE_CONNECTION_ERROR')) {
                                  await Utils.connectionDialog(context);
                                }
                              }*/
                            }

                            if (context.mounted) {
                              Navigator.pop(context);
                            }
                          },
                          title: Text(
                            myProductList[index].storeProduct.title,
                            
                          ),
                          subtitle: Text(
                              myProductList[index].storeProduct.description,
                              style: const TextStyle(
                                color: Color.fromRGBO(255, 92, 0, 1),
                                fontSize: 12.0,
                              )),
                          trailing: Text(
                            myProductList[index].storeProduct.priceString,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  );
                },
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                        'No commitment. Cancel anytime.\nPayment will be charged to your Google Play account at the end of your billing cycle. Subscriptions automatically renew unless canceled by the user. You can manage and cancel your subscriptions in the settings of the Google Play store. For more information, please see our ',
                    children: [
                      TextSpan(
                        text: 'Terms of Use',
                        style: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          //'Terms of Use'
                          ..onTap = () async {
                            final url = Uri.parse(
                                '');
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            }
                          },
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                        //Privacy Policy
                          ..onTap = () async {
                            final url = Uri.parse(
                                '');
                            if (await canLaunchUrl(url)) {
                              launchUrl(url);
                            }
                          },
                      ),
                      const TextSpan(text: '.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
