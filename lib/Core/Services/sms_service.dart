import 'package:sms_advanced/sms_advanced.dart';

class SMSService {
  final SmsSender _smsSender = SmsSender();
  SmsMessageState sendState = SmsMessageState.None;

  ////send sms msg
  sendSms(String msg, String address,
      {void Function(SmsMessageState state)? onStateChange}) async {
    SmsMessage sms = SmsMessage(address, msg);

    await _smsSender.sendSms(sms);
    sms.onStateChanged.listen((event) {
      if (onStateChange != null) {
        onStateChange(event);
      }
      // sendStatelistener(event);
    });
  }

  // handel sent sms state
  static sendStatelistener(SmsMessageState state) {}

  // listene to coming sms
}
