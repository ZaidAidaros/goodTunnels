

  import 'package:get/get.dart';
import 'package:goodtunnels/Core/Services/settingservices.dart';
import 'package:telephony/telephony.dart';

receiveSmsListener() {
    Telephony.instance.listenIncomingSms(
      onNewMessage: (SmsMessage message) =>Get.find<SettingServices>().onReciveSMS(message),
      onBackgroundMessage: SettingServices.onBackgroundReceiveHandeler,
    );
  }

