import 'package:goodtunnels/Core/Constants/commitments_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/SharedModels/commitment.dart';

class CommitmentMH{

  DBHelper dbHelper = DBHelper();

  createCommitment(CommitmentM commitmentM){
    dbHelper.insertData(CommitConst.commitTableNamt, commitmentM.toMap());
  }
  updateCommitment(CommitmentM commitmentM){
    dbHelper .upDateData(CommitConst.commitTableNamt, commitmentM.toMap(),
    CommitConst.columReqNo,commitmentM.toMap()[CommitConst.columReqNo]);
  }
    approveCommitment(CommitmentM commitmentM){
      commitmentM.isApproved=1;
    dbHelper .upDateData(CommitConst.commitTableNamt, commitmentM.toMap(),
    CommitConst.columReqNo,commitmentM.toMap()[CommitConst.columReqNo]);
  }
  getAllCommitments()async{
    List<CommitmentM> list =[];
    await dbHelper.getData(CommitConst.commitTableNamt).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getCommitNotApproved()async{
    List<CommitmentM> list =[];
    await dbHelper.getDataWhere(CommitConst.commitTableNamt,CommitConst.columIsApproved,0).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getCommitApproved()async{
    List<CommitmentM> list =[];
    await dbHelper.getDataWhere(CommitConst.commitTableNamt,
    CommitConst.columIsApproved,1).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }

  receiveCommitReq(List list){

  }

}