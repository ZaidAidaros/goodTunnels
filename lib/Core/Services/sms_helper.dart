
import 'sms_service.dart';
import 'package:sms_advanced/sms_advanced.dart';

class SmsHelper{

  final SMSService _smsService =SMSService();
  SmsMessageState sendState = SmsMessageState.None;


  sendSmsMsg( msg,String address)async{
   await _smsService.sendSms(msg,address,onStateChange: (state) => sendState=state,);
  }
  
}