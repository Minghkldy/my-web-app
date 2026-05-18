import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri("https://uwinmm.com/"), // <--- ကိုယ့် Website Link ပြောင်းရန်
            ),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
            ),
          ),
        ),
      ),
    );
  }
}
