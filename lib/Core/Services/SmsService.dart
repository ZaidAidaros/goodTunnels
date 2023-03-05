import 'package:sms_advanced/sms_advanced.dart';



class SMSService{


  static SMSService? _smsService;
  static get instance{
    _smsService??=SMSService();
    return _smsService;
  }


  String receiverPhone="";

  SmsSender _sender = new SmsSender();
  SmsReceiver _receiver = new SmsReceiver();
  String _address = "+967775283579";

  sendSms(String mesage,{void Function()? onSent,void Function()? onDelivered,void Function()? onFail}){
   SmsMessage msg = SmsMessage(_address, mesage);
    _sender.sendSms(msg);
    msg.onStateChanged.listen((event) {
      if(event==SmsMessageState.Sent){
        onSent!();
      }else if(event == SmsMessageState.Delivered){
        onDelivered!();
      }else if(event == SmsMessageState.Fail){
        onFail!();
      }
    });
  }


  receiveSms({void Function(SmsMessage smsMessage)? onSMSReceived}){
    _receiver.onSmsReceived!.listen((event) { 
      if(onSMSReceived!=null){
        onSMSReceived(event);
      }
      
    },
    );
  
  }



}

