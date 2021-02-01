import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  final String url;

  const WebViewScreen({Key key, this.url}) : super(key: key);
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  InAppWebViewController webView;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 2), () {
      setLoadingStatus();
    });
  }

  setLoadingStatus() {
    setState(() {
      _loading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.arrow_back_rounded,
          color: Theme.of(context).primaryColor,
          size: 24.0,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: (_loading)
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 96.0,
                  right: 96.0,
                  child: Container(
                    child: InAppWebView(
                      initialUrl: widget.url,
                      initialHeaders: {},
                      onProgressChanged:
                          (InAppWebViewController inAppWebViewController,
                              int progress) {
                        print('Progress: $progress');
                      },
                      initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(
                          debuggingEnabled: true,
                          preferredContentMode:
                              UserPreferredContentMode.DESKTOP,
                          transparentBackground: true,
                        ),
                      ),
                      onWebViewCreated: (InAppWebViewController controller) {
                        webView = controller;
                      },
                      onLoadStart:
                          (InAppWebViewController controller, String url) {},
                      onLoadStop: (InAppWebViewController controller,
                          String url) async {},
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: -10,
                  bottom: 0,
                  child: Container(
                    child: Image.asset(
                      'assets/images/sidebar_left.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: -30,
                  bottom: 0,
                  child: Container(
                    child: Image.asset(
                      'assets/images/sidebar_right.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
