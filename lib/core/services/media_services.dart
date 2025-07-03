import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MediaServices {
  final ImagePicker picker = ImagePicker();
  MediaServices();
  Future<File?> imageFromGallery() async {
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      return File(file.path);
    }
    return null;
  }
}
