import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Album QR'),
      ),
      body: Center(
        child: QrImageView(
          data: '1234567890',
          version: QrVersions.auto,
          size: 200.0,
          embeddedImage: const NetworkImage(
              'https://banner2.cleanpng.com/20180425/egw/kisspng-qr-code-2d-code-barcode-information-qr-codea4-5ae08ccbefe823.8613303715246655479827.jpg'),
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(80, 80),
          ),
        ),
      ),
    );
  }
}
