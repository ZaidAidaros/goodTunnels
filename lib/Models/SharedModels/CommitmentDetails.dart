import 'package:goodtunnels/Core/Constants/commitments_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';

class SubCommitmentM{
  
  int? id;
  int? reqNo;
  int? isApproved;
  int? authNo;
  int? docChapter;
  int? docPart;
  int? docType;
  int? docItem;
  int? contenues;
  int? spendingAmount;
  int? balanceAfterApproved;
  int? expectedPaymentDate;
  String? description;

  SubCommitmentM.fromMap(Map<String,Object?> map){
    id=map[columId] as int;
    reqNo=map[columReqNo] as int;
    isApproved = map[columIsApproved] as int;
    authNo=map[columAuthNo] as int;
    docChapter = map[columDOCChapter] as int;
    docPart = map[columDOCPart] as int;
    docType = map[columDOCType] as int;
    docItem = map[columDOCItem] as int;
    contenues = map[columContenue] as int;
    description = map[columDescription].toString();
    spendingAmount = map[columSpendingAmount] as int;
    balanceAfterApproved = map[columBalanceAfter] as int;
    expectedPaymentDate = map[columExpectedPayDate] as int;
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(id != null){
      map[columId]=id!;
    }
    if(reqNo != null){
      map[columReqNo]=reqNo!;
    }
    if(isApproved!=null){
      map[columIsApproved]= isApproved!;
    }
    if(authNo != null){
      map[columAuthNo]=authNo!;
    }
    if(docChapter != null){
      map[columDOCChapter]=docChapter!;
    }
    if(docPart != null){
      map[columDOCPart]=docPart!;
    }
    if(docType != null){
      map[columDOCType]=docType!;
    }
    if(docItem != null){
      map[columDOCItem]=docItem!;
    }
    if(contenues != null){
      map[columContenue]=contenues!;
    }
    if(description != null){
      map[columDescription]=description!;
    }
    if(spendingAmount != null){
      map[columSpendingAmount]=spendingAmount!;
    }
    if(balanceAfterApproved != null){
      map[columBalanceAfter]= balanceAfterApproved!;
    }
    if(expectedPaymentDate != null){
      map[columExpectedPayDate]=expectedPaymentDate!;
    }

    return map;
  }
}

