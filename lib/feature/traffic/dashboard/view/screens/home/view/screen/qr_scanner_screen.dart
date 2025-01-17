import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic/dashboard/data/model/qr_code_data_model.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:echalan/route/app_route.dart';
import 'dart:convert';
import 'dart:async';

class QRScannerScreen extends StatefulWidget {
  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen>
    with WidgetsBindingObserver {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool isScanning = true;
  bool isProcessing = false;
  Timer? _debounceTimer;

  static const String _invalidQrMessage = 'Invalid QR Code format';
  static const Duration _debounceDelay = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _debounceTimer?.cancel();
    controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (controller == null) return;

    // Pause camera when app is inactive to save battery
    if (state == AppLifecycleState.inactive) {
      controller?.pauseCamera();
    } else if (state == AppLifecycleState.resumed) {
      controller?.resumeCamera();
    }
  }

  Future<void> _processQRCode(String? rawData) async {
    // Debounce QR processing to prevent multiple rapid scans
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_debounceDelay, () async {
      if (!isScanning || rawData == null || isProcessing) return;

      setState(() => isProcessing = true);

      try {
        final dynamic decodedData = jsonDecode(rawData);
        if (decodedData is! Map<String, dynamic>) {
          throw const FormatException('Invalid QR data structure');
        }

        final qrData = Map<String, dynamic>.from(decodedData);

        if (_isValidQRData(qrData)) {
          controller?.pauseCamera(); // Pause camera before navigation
          setState(() => isScanning = false);
          await _navigateToTicketScreen(rawData);
        } else {
          _showError(_invalidQrMessage);
        }
      } catch (e) {
        _showError(_invalidQrMessage);
      } finally {
        if (mounted) {
          setState(() => isProcessing = false);
        }
      }
    });
  }

  bool _isValidQRData(Map<String, dynamic> qrData) {
    return qrData.containsKey('fullName') &&
        qrData.containsKey('licenseNumber');
  }

  Future<void> _navigateToTicketScreen(String qrData) async {
    final Map<String, dynamic> decodedData =
        jsonDecode(qrData) as Map<String, dynamic>;
    await Navigator.pushReplacementNamed(
      context,
      AppRouter.createTicketScreen,
      arguments: QRCodeDataModel(
        fullName: decodedData['fullName'] as String,
        licenseNumber: decodedData['licenseNumber'] as String,
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller..resumeCamera();

    // Use distinct to prevent duplicate scans
    controller.scannedDataStream.distinct().listen((scanData) {
      _processQRCode(scanData.code);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(
        textLeftSpace: 10.w,
        title: 'Scan QR Code',
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              alignment: Alignment.center,
              children: [
                QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: Theme.of(context).primaryColor,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: 300,
                  ),
                ),
                if (isProcessing)
                  const ColoredBox(
                    // Using ColoredBox instead of Container for better performance
                    color: Colors.black54,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
          const _ScannerStatusText(), // Extracted to separate widget for better performance
        ],
      ),
    );
  }
}

// Extracted status text widget to prevent unnecessary rebuilds
class _ScannerStatusText extends StatelessWidget {
  const _ScannerStatusText();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: Center(
        child: Text(
          'Align QR code within the frame to scan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
