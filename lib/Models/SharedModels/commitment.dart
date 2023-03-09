import 'package:goodtunnels/Core/Constants/commitments_constants.dart';

class CommitmentM{

  int? requestNo;
  int? isApproved;
  int? codingblockcode;
  String? adminUint;
  String? authEntity;
  String? authOfficer;
  String? forDuration;
  String? submitDate;
  String? rejectResin;

  CommitmentM({
    this.requestNo,
    this.codingblockcode,
    this.isApproved,
    this.adminUint,
    this.authEntity,
    this.authOfficer,
    this.forDuration,
    this.submitDate,
    this.rejectResin
  });

  CommitmentM.fromMap(Map<String,Object?> map){
    requestNo = map[CommitConst.columReqNo] as int;
    isApproved = map[CommitConst.columIsApproved] as int;
    codingblockcode = map[CommitConst.columCodinBlocCode] as int;
    adminUint = map[CommitConst.columAdminUnit].toString();
    authEntity = map[CommitConst.columAuthEntity].toString();
    authOfficer = map[CommitConst.columAuthOfficer].toString();
    submitDate = map[CommitConst.columSubmitDate].toString();
    forDuration = map[CommitConst.columForDuration].toString();
    rejectResin = map[CommitConst.columSubmitRejResn].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(requestNo!=null){
      map[CommitConst.columReqNo]= requestNo!;
    }
    if(isApproved!=null){
      map[CommitConst.columIsApproved]= isApproved!;
    }
    if(codingblockcode!=null){
      map[CommitConst.columCodinBlocCode]= codingblockcode!;
    }
    if(adminUint!=null){
      map[CommitConst.columAdminUnit]= adminUint!;
    }
    if(authEntity!=null){
      map[CommitConst.columAuthEntity]= authEntity!;
    }
    if(authOfficer!=null){
      map[CommitConst.columAuthOfficer]= authOfficer!;
    }
    if(forDuration!=null){
      map[CommitConst.columForDuration]= forDuration!;
    }
    if(submitDate!=null){
      map[CommitConst.columSubmitDate]= submitDate!;
    }
    if(submitDate!=null){
      map[CommitConst.columSubmitRejResn]= rejectResin!;
    }

    return map;
  }

}

