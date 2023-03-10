import 'package:telephony/telephony.dart';
import 'package:sms_advanced/sms_advanced.dart' as sms_advanced;

import '../Functions/tashfeer.dart';


class SMSService{

  final Telephony _telephony = Telephony.instance;
  final sms_advanced.SmsSender _smsSender =sms_advanced.SmsSender();
  sms_advanced.SmsMessageState sendState = sms_advanced.SmsMessageState.None;

   final t = Tashfeer();
   


  //sms_advanced.SimCard? simCard;
  ////send sms msg
  sendSms(String msg, String address,
  {void Function(sms_advanced.SmsMessageState state)? onStateChange})async{

    msg = await t.tashfeer(msg);
    sms_advanced.SmsMessage sms =sms_advanced.SmsMessage(address,msg);

   await _smsSender.sendSms(sms);
    sms.onStateChanged.listen((event) {
     if(onStateChange!=null){
      onStateChange(event);
     }
     // sendStatelistener(event);
      });
  }

  // handel sent sms state
  static  sendStatelistener(sms_advanced.SmsMessageState state) {
   
  }

  // listene to coming sms
  receiveSms(){
    _telephony.listenIncomingSms(
      onNewMessage:(message){


    },
    onBackgroundMessage: onBackgroundReceiveHandeler,
    );
  }
  // listene to coming sms in background
  static onBackgroundReceiveHandeler(message) {
    
  }


}

