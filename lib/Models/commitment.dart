import 'package:goodtunnels/Core/Constants/commitments_constants.dart';

class CommitmentM{

  int? requestNo;
  int? codingblockcode;
  String? adminUint;
  String? authEntity;
  String? authOfficer;
  String? forDuration;
  int? submitDate;

  CommitmentM.fromMap(Map<String,Object> map){
    requestNo = map[columReqNo] as int;
    codingblockcode = map[columReqNo] as int;
    adminUint = map[columAdminUnit].toString();
    authEntity = map[columAuthEntity].toString();
    authOfficer = map[columAuthOfficer].toString();
    submitDate = map[columAdminUnit] as int;
    forDuration = map[columForDuratiom].toString();
  }

  Map<String,Object> toMap(){
    Map<String,Object> map = <String,Object>{};
    if(requestNo!=null){
      map[columReqNo]= requestNo!;
    }
    if(codingblockcode!=null){
      map[columReqNo]= codingblockcode!;
    }
    if(adminUint!=null){
      map[columAdminUnit]= adminUint!;
    }
    if(authEntity!=null){
      map[columAuthEntity]= authEntity!;
    }
    if(authOfficer!=null){
      map[columAuthOfficer]= authOfficer!;
    }
    if(forDuration!=null){
      map[columForDuratiom]= forDuration!;
    }
    if(submitDate!=null){
      map[columSubmitDate]= submitDate!;
    }

    return map;
  }
}

