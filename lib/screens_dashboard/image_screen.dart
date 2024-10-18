import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  String? path;
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Image Upload',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(Icons.timer),
          SizedBox(width: 20),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _controller != null
                ? Center(
                    child: _controller!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          )
                        : Container(),
                  )
                : Text(
                    'SIDHU BRO',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? xfile =
                        await picker.pickVideo(source: ImageSource.gallery);
                    if (xfile != null) {
                      path = xfile.path;
                      _controller = VideoPlayerController.networkUrl(
                          Uri.parse(path ?? ''));
                      await _controller?.initialize();
                      _controller?.play();
                      setState(() {});
                    }
                  },
                  icon: Column(
                    children: [
                      Icon(
                        Icons.upload,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 20),
                      Text('Gallery Video')
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final ImagePicker picker = ImagePicker();
                    final XFile? xfile =
                        await picker.pickVideo(source: ImageSource.camera);
                    if (xfile != null) {
                      path = xfile.path;

                      _controller =
                          VideoPlayerController.file(File(path ?? ''));
                      await _controller?.initialize();
                      _controller?.play();
                      setState(() {});
                    }
                  },
                  icon: Column(
                    children: [
                      Icon(Icons.camera_alt),
                      SizedBox(height: 20),
                      Text('Camra Video')
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
