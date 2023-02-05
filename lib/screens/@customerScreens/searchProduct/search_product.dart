import 'dart:async';
import 'dart:developer';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../../../utils/constant/app_color.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  SpeechToText _speechToText = SpeechToText();

  @override
  void initState() {
    _initSpeech();
    _speechToText = SpeechToText();
    super.initState();
  }

  void _initSpeech() async {
    speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(
        onResult: _onSpeechResult,
        cancelOnError: true,
        pauseFor: const Duration(seconds: 2));
    setState(() {});
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      textEditingController.text = result.recognizedWords;
      log(result.recognizedWords);
      log(textEditingController.text);
    });
  }

  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.microphone.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.microphone].request();
      return permissionStatus[Permission.microphone] ??
          PermissionStatus.granted;
    } else {
      return permission;
    }
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  TextEditingController textEditingController = TextEditingController();

  bool speechEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: AppColors.white),
        titleSpacing: 0,
        title: Row(
          children: [
            Expanded(
              child: Card(
                elevation: 2,
                child: SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: textEditingController,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search for products or packages',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(top: 5,left: 12),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                PermissionStatus permissionStatus = await _getPermission();
                if (permissionStatus == PermissionStatus.granted) {
                  if (_speechToText.isNotListening) {
                    _startListening();
                    Timer(const Duration(seconds: 3), () {
                      setState(() {
                        _speechToText.stop();
                      });
                    });
                  } else {
                    _stopListening;
                  }
                } else {
                  permissionStatus = await _getPermission();
                }
              },
              child: SizedBox(
                width: 50,
                child: AvatarGlow(
                  animate: !_speechToText.isNotListening,
                  glowColor: AppColors.white,
                  endRadius: 65.0,
                  duration: const Duration(milliseconds: 2000),
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  repeat: true,
                  child: Icon(
                      _speechToText.isNotListening ? Icons.mic_off : Icons.mic),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (ctx, i) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('item$i'),
              trailing: const Icon(Icons.chevron_right,
                  size: 20, color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
