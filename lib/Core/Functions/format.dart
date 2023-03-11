import 'package:goodtunnels/Core/Constants/opcodeconst.dart';
import 'package:goodtunnels/Core/Functions/converters.dart';
import 'package:goodtunnels/Models/SharedModels/subcommitmentm.dart';
import '../../Models/SharedModels/commitment.dart';

// to format Commitment as sms msg
String formatComitToSMS(CommitmentM commitmentM) {
  String msg = "${OpCodesConst.commit};";
  int req = int.parse(commitmentM.requestNo!.toString().substring(2, 11));
  msg += "${ZNumSysConverter.intToBase32(req)};";
  msg += "${ZNumSysConverter.intToBase32(commitmentM.codingblockcode!)};";
  msg += "${commitmentM.adminUint};";
  msg += "${commitmentM.authEntity};";
  msg += "${commitmentM.authOfficer};";
  msg += "${commitmentM.forDuration};";
  msg += "${commitmentM.submitDate};";
  msg += ";${OpCodesConst.commit}";
  return msg;
}

// to deformat sms msg as Commitment
CommitmentM deFormatSMSToCommit(String msg) {
  List<String> list = msg.split(";");
  int req = int.parse(
      "${DateTime.now().toString().substring(0, 1)}${ZNumSysConverter.base32ToInt(list[1])}");
  return CommitmentM(
      requestNo: req,
      codingblockcode: ZNumSysConverter.base32ToInt(list[2]),
      adminUint: list[3],
      authEntity: list[4],
      authOfficer: list[5],
      forDuration: list[6],
      submitDate: list[7]);
}

// to format response commitment as sms msg
String formatComitToSMSResponse(CommitmentM commitmentM) {
  String msg = "${OpCodesConst.respCommit};";
  msg += "${ZNumSysConverter.intToBase32(commitmentM.requestNo!)};";
  msg += ZNumSysConverter.intToBase32(commitmentM.isApproved!);
  msg += "${commitmentM.rejectResin};";
  msg += ";${OpCodesConst.respCommit}";
  return msg;
}

// to deformat sms msg as response commitment
CommitmentM deFormatSMSResponseToCommit(String msg) {
  List<String> list = msg.split(";");
  return CommitmentM(
      requestNo: ZNumSysConverter.base32ToInt(list[1]),
      isApproved: int.parse(list[2]),
      rejectResin: list[3]);
}

// to format sub Commitment as sms msg
String formatSubComitToSMS(SubCommitmentM subCommitmentM) {
  String msg = "${OpCodesConst.subcommit};";
  msg += "${ZNumSysConverter.intToBase32(subCommitmentM.reqNo!)};";
  msg += "${ZNumSysConverter.intToBase32(subCommitmentM.objCode!)};";
  msg += "${ZNumSysConverter.intToBase32(subCommitmentM.spendingAmount!)};";
  msg +=
      "${ZNumSysConverter.intToBase32(subCommitmentM.balanceAfterApproved!)};";
  msg += "${subCommitmentM.contenues};";
  msg += "${subCommitmentM.expectedPaymentDate};";
  msg += "${subCommitmentM.description};";
  msg += ";${OpCodesConst.subcommit}";
  return msg;
}

SubCommitmentM deFormatSMSToSubCommit(String msg) {
  List<String> list = msg.split(";");
  return SubCommitmentM(
      reqNo: ZNumSysConverter.base32ToInt(list[1]),
      objCode: ZNumSysConverter.base32ToInt(list[2]),
      spendingAmount: ZNumSysConverter.base32ToInt(list[3]),
      balanceAfterApproved: ZNumSysConverter.base32ToInt(list[4]),
      contenues: int.parse(list[5]),
      expectedPaymentDate: list[6],
      description: list[7]);
}

String formatSubComitToSMSResponse(SubCommitmentM subCommitmentM) {
  String msg = "${OpCodesConst.respSubcommit};";
  msg += "${ZNumSysConverter.intToBase32(subCommitmentM.reqNo!)};";
  msg += "${ZNumSysConverter.intToBase32(subCommitmentM.id!)};";
  msg += ZNumSysConverter.intToBase32(subCommitmentM.isApproved!);
  msg += "${subCommitmentM.rejectResin};";
  msg += ";${OpCodesConst.respSubcommit}";
  return msg;
}

SubCommitmentM deFormatSMSResponseSubCommit(String msg) {
  List<String> list = msg.split(";");
  return SubCommitmentM(
      reqNo: ZNumSysConverter.base32ToInt(list[1]),
      id: ZNumSysConverter.base32ToInt(list[2]),
      isApproved: int.parse(list[3]),
      rejectResin: list[4]);
}
