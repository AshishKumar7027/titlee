import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class PickImageGalleryScreen extends StatefulWidget {
  const PickImageGalleryScreen({super.key});

  @override
  State<PickImageGalleryScreen> createState() => _PickImageGalleryScreenState();
}

class _PickImageGalleryScreenState extends State<PickImageGalleryScreen> {
  // String? path;
  // VideoPlayerController? _controller;
  //
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('http:/www.youtube.com'));
          },
          child: Text(
            'go to link',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
    //   body: Column(
    //     children: [
    //       _controller != null
    //           ?   Center(
    //         child:
    //            _controller!.value.isInitialized
    //               ? AspectRatio(
    //             aspectRatio: _controller!.value.aspectRatio,
    //             child: VideoPlayer(_controller!),
    //           )
    //               : Container()
    //       ): Text(
    //               'no image',
    //             ),
    //       SizedBox(height: 16),
    //       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           IconButton(hoverColor: Colors.blue,
    //             onPressed: () async {
    //               ImagePicker picker = ImagePicker();
    //               XFile? Xfile =
    //                   await picker.pickVideo(source: ImageSource.gallery);
    //               if (Xfile != null) {
    //                 path = Xfile.path;
    //                 _controller = VideoPlayerController.networkUrl(
    //                     Uri.parse(path ?? ''));
    //                 await _controller?.initialize();
    //                 _controller?.play();
    //                 setState(() {});
    //               }
    //             },
    //             icon: Icon(Icons.upload),
    //           ),
    //           IconButton(
    //             onPressed: () async {
    //               ImagePicker picker = ImagePicker();
    //               XFile? Xfile =
    //               await picker.pickVideo(source: ImageSource.camera);
    //               if (Xfile != null) {
    //                 path = Xfile.path;
    //                 _controller = VideoPlayerController.networkUrl(
    //                     Uri.parse(path ?? ''));
    //                 await _controller?.initialize();
    //                 _controller?.play();
    //                 setState(() {});
    //               }
    //             },
    //             icon: Icon(Icons.camera_alt),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
