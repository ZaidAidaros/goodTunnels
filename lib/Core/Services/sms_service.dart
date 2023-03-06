import 'package:telephony/telephony.dart';
import 'package:sms_advanced/sms_advanced.dart' as sms_advanced;


class SMSService{

  final Telephony _telephony = Telephony.instance;
  final sms_advanced.SmsSender _smsSender =sms_advanced.SmsSender();
  final String _address="775283579"; 
  ////send sms msg
  sendSms(String msg){
    sms_advanced.SmsMessage sms =sms_advanced.SmsMessage(_address,msg);
    _smsSender.sendSms(sms);
    sms.onStateChanged.listen((event) {
      sendStatelistener(event);
      });
  }

  // handel sent sms state
  static  sendStatelistener(sms_advanced.SmsMessageState state) {
   
  }

  // listene to coming sms
  receiveSms(){
    _telephony.listenIncomingSms(
      onNewMessage:(message){
      print("-----****forground***------");
      print(message.address.toString()+"\n"+message.body.toString());
      print("-----*******------");
    },
    onBackgroundMessage: onBackgroundReceiveHandeler,
    );
  }
  // listene to coming sms in background
  static onBackgroundReceiveHandeler(message) {
      print("-----***bacground****------");
      print(message.toString());
      print("-----*******------");
    }



}

