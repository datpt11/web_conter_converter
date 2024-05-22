import 'package:flutter/material.dart';
import 'package:web_content_converter/webcontent_converter.dart';
import 'package:web_content_converter_example/services/demo.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WebView Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: LayoutBuilder(builder: (ctn, constains) {
                return WebcontentConverter.embedWebView(
                  width: constains.maxWidth,
                  height: constains.maxHeight,

                  content: Demo.getInvoiceContent(),

                  /// url: "https://example.com/",
                );
              }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        child: const Icon(Icons.replay_outlined),
      ),
    );
  }

  _onPressed() {}
}
