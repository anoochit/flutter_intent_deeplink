import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String link = "gigaupload://view/file/1665834384878";

  intentURL({required String uri}) async {
    await launchUrl(
      Uri.parse(link),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deep Link Intent"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // launch url with application mode
            intentURL(uri: link);
          },
          child: const Text("Intent !"),
        ),
      ),
    );
  }
}
