import 'package:flutter/material.dart';
import 'package:web_content_converter/webcontent_converter.dart';
import 'package:web_content_converter_example/services/demo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME SCREEN"),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Image converter"),
            leading: Icon(Icons.image),
          ),
          ListTile(
            title: const Text("content to image"),
            onTap: () => Navigator.of(context).pushNamed("/content_image_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          ListTile(
            title: const Text("weburi to image"),
            onTap: () => Navigator.of(context).pushNamed("/weburi_image_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          ListTile(
            title: const Text("File path to image"),
            onTap: () => Navigator.of(context).pushNamed("/path_image_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          const ListTile(
            title: Text("Pdf converter"),
            leading: Icon(Icons.picture_as_pdf),
          ),
          ListTile(
            title: const Text("content to pdf"),
            onTap: () => Navigator.of(context).pushNamed("/content_pdf_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          ListTile(
            title: const Text("weburi to pdf"),
            onTap: () => Navigator.of(context).pushNamed("/weburi_pdf_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          ListTile(
            title: const Text("file path to pdf"),
            onTap: () => Navigator.of(context).pushNamed("/path_pdf_screen"),
            trailing: const Icon(Icons.arrow_right),
          ),
          ListTile(
            title: const Text("bluetooth device screen"),
            onTap: () => Navigator.of(context).pushNamed("/bluetooth_device_screen"),
            trailing: const Icon(Icons.bluetooth_connected),
          ),
          ListTile(
            title: const Text("webview screen"),
            onTap: () => Navigator.of(context).pushNamed("/webview_screen"),
            trailing: const Icon(Icons.open_in_browser_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          WebcontentConverter.printPreview(

              /// url: "https://www.google.com",

              content: Demo.getInvoiceContent(),
              autoClose: false,
              duration: 1000);
        },
        child: const Icon(Icons.print),
      ),
    );
  }
}
