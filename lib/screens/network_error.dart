import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatefulWidget {
  @override
  _NetworkErrorScreenState createState() => _NetworkErrorScreenState();
}

class _NetworkErrorScreenState extends State<NetworkErrorScreen> {
  StreamSubscription<ConnectivityResult> subscription;
  @override
  initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        Navigator.of(context).pop();
      }
    });
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.35),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.error,
                color: Colors.white,
                size: 64.0,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text(
                  'You are not connected to the Internt. Check your internet connection and try again.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
