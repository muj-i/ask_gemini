import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  const ImagePickerBottomSheet({
    super.key,
    required this.onTapForPhotoLibrary,
    required this.onTapForCamera,
  });

  final VoidCallback onTapForPhotoLibrary;
  final VoidCallback onTapForCamera;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select Image',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: IntrinsicHeight(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(.2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 26,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Photo Library'),
                onTap: onTapForPhotoLibrary,
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: onTapForCamera,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
