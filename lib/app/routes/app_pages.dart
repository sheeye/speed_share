import 'package:get/get.dart';
import 'package:global_repository/global_repository.dart';
import 'package:speed_share/main.dart';
import 'package:speed_share/pages/share_chat.dart';

part 'app_routes.dart';

class SpeedPages {
  SpeedPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => SpeedShare(),
    ),
    GetPage(
      name: Routes.chat,
      page: () {
        return ShareChat(
          needCreateChatServer:
              Get.parameters['needCreateChatServer'] == 'true',
          chatServerAddress: Get.parameters['chatServerAddress'],
        );
      },
    ),
  ];
}
