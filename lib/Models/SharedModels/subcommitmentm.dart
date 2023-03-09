
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';

class SubCommitmentM{
  
  int? id;
  int? reqNo;
  int? isApproved;
  int? authNo;
  int? objCode;
  int? contenues;
  int? spendingAmount;
  int? balanceAfterApproved;
  String? expectedPaymentDate;
  String? description;
  String? rejectResin;
  SubCommitmentM({
    this.id,
    this.reqNo,
    this.objCode,
    this.isApproved,
    this.authNo,
    this.contenues,
    this.spendingAmount,
    this.balanceAfterApproved,
    this.expectedPaymentDate,
    this.description,
    this.rejectResin
    });
  SubCommitmentM.fromMap(Map<String,Object?> map){
    id=map[SubCommitConst.columId] as int;
    reqNo=map[SubCommitConst.columReqNo] as int;
    isApproved = map[SubCommitConst.columIsApproved] as int;
    authNo=map[SubCommitConst.columAuthNo] as int;
    objCode = map[SubCommitConst.columObjCode] as int;
    contenues = map[SubCommitConst.columContenue] as int;
    spendingAmount = map[SubCommitConst.columSpendingAmount] as int;
    balanceAfterApproved = map[SubCommitConst.columBalanceAfter] as int;
    expectedPaymentDate = map[SubCommitConst.columExpectedPayDate].toString();
    description = map[SubCommitConst.columDescription].toString();
    rejectResin = map[SubCommitConst.columSubmitRejResn].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(id != null){
      map[SubCommitConst.columId]=id!;
    }
    if(reqNo != null){
      map[SubCommitConst.columReqNo]=reqNo!;
    }
    if(isApproved!=null){
      map[SubCommitConst.columIsApproved]= isApproved!;
    }
    if(authNo != null){
      map[SubCommitConst.columAuthNo]=authNo!;
    }
    if(objCode != null){
      map[SubCommitConst.columObjCode]=objCode!;
    }
    if(contenues != null){
      map[SubCommitConst.columContenue]=contenues!;
    }
    if(description != null){
      map[SubCommitConst.columDescription]=description!;
    }
    if(spendingAmount != null){
      map[SubCommitConst.columSpendingAmount]=spendingAmount!;
    }
    if(balanceAfterApproved != null){
      map[SubCommitConst.columBalanceAfter]= balanceAfterApproved!;
    }
    if(expectedPaymentDate != null){
      map[SubCommitConst.columExpectedPayDate]=expectedPaymentDate!;
    }
    if(rejectResin!=null){
      map[SubCommitConst.columSubmitRejResn]= rejectResin!;
    }

    return map;
  }
}

