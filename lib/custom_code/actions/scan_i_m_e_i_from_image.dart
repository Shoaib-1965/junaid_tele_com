// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

// Custom Action Code
// Add these dependencies to your pubspec.yaml:
// image_picker: ^1.0.4
// google_mlkit_text_recognition: ^0.11.0

Future<String> scanIMEIFromImage() async {
  try {
    // Initialize image picker
    final ImagePicker picker = ImagePicker();

    // Pick image from camera
    final XFile? photo = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100, // High quality for better OCR
    );

    if (photo == null) {
      // User cancelled
      return '';
    }

    // Initialize text recognizer
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final inputImage = InputImage.fromFilePath(photo.path);

    // Process image
    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    // Close recognizer
    await textRecognizer.close();

    // Extract first IMEI number only
    String imeiNumber = _extractFirstIMEI(recognizedText.text);

    return imeiNumber;
  } catch (e) {
    print('Error scanning IMEI: $e');
    return '';
  }
}

String _extractFirstIMEI(String text) {
  // Remove all spaces and special characters, keep only digits
  String cleanText = text.replaceAll(RegExp(r'[^0-9]'), ' ');

  // Split by spaces and filter
  List<String> numbers =
      cleanText.split(' ').where((s) => s.isNotEmpty).toList();

  // First, try to find numbers near "IMEI" text
  RegExp imeiPattern =
      RegExp(r'IMEI[:\s]*([0-9\s]{14,17})', caseSensitive: false);
  Iterable<RegExpMatch> matches = imeiPattern.allMatches(text);

  for (var match in matches) {
    String? imei = match.group(1);
    if (imei != null) {
      String cleanIMEI = imei.replaceAll(RegExp(r'[^0-9]'), '');
      if (cleanIMEI.length == 15 || cleanIMEI.length == 14) {
        return cleanIMEI; // Return first IMEI found
      }
    }
  }

  // If no IMEI found with label, look for first 15-digit number
  for (String num in numbers) {
    if (num.length == 15 || num.length == 14) {
      // Basic validation: IMEI usually starts with specific TAC codes
      if (num.startsWith(RegExp(r'[0-9]{2}'))) {
        return num; // Return first valid IMEI
      }
    }
  }

  return ''; // No IMEI found
}
