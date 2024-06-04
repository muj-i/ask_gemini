import 'package:ask_gemini/app/modules/home/views/widgets/image_picker_bottom_sheet.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A S K  G E M I N I !'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GetBuilder<HomeController>(builder: (controller) {
          return DashChat(
            scrollToBottomOptions: ScrollToBottomOptions(
              scrollToBottomBuilder: (scrollController) {
                return Positioned(
                  bottom: 10,
                  right: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_downward),
                    onPressed: () {
                      scrollController.animateTo(
                        0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    },
                    color: Colors.white,
                  ),
                );
              },
            ),
            messageOptions: MessageOptions(
              containerColor: Colors.white,
              currentUserContainerColor: Colors.white.withOpacity(0.2),
              textColor: Colors.black,
              currentUserTextColor: Colors.white,
            ),
            typingUsers:
                controller.isMessageGenerating ? [controller.geminiUser] : [],
            inputOptions: InputOptions(
              showTraillingBeforeSend: true,
              trailing: [
                IconButton(
                  icon: const Icon(Icons.image),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return ImagePickerBottomSheet(
                          onTapForPhotoLibrary: () {
                            controller.sendMediaMessage(isCameraSelect: false);
                            Get.back();
                          },
                          onTapForCamera: () {
                            controller.sendMediaMessage(isCameraSelect: true);
                            Get.back();
                          },
                        );
                      },
                    );
                  },
                  color: Colors.white,
                ),
              ],
              sendButtonBuilder: (send) {
                return IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: send,
                  color: Colors.white,
                );
              },
              inputDecoration: InputDecoration(
                  hintText: 'Ask Gemini anything...',
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white))),
              inputTextStyle: const TextStyle(color: Colors.white),
              alwaysShowSend: controller.isMessageGenerating ? false : true,
              sendOnEnter: controller.isMessageGenerating ? false : true,
              cursorStyle: const CursorStyle(color: Colors.white),
              inputToolbarStyle: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            currentUser: controller.currentUser,
            onSend: controller.sendMessage,
            messages: controller.messages,
          );
        }),
      ),
    );
  }
}
