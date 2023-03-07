import 'package:goodtunnels/Core/Constants/commitments_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/SharedModels/commitment.dart';

class CommitmentMH{

  DBHelper dbHelper = DBHelper();

  createCommitment(CommitmentM commitmentM){
    dbHelper.insertData(commitTableNamt, commitmentM.toMap());
  }
  updateCommitment(CommitmentM commitmentM){
    dbHelper .upDateData(commitTableNamt, commitmentM.toMap(),
    columReqNo,commitmentM.toMap()[columReqNo]);
  }
    approveCommitment(CommitmentM commitmentM){
      commitmentM.isApproved=1;
    dbHelper .upDateData(commitTableNamt, commitmentM.toMap(),
    columReqNo,commitmentM.toMap()[columReqNo]);
  }
  getAllCommitments()async{
    List<CommitmentM> list =[];
    await dbHelper.getData(commitTableNamt).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getCommitNotApproved()async{
    List<CommitmentM> list =[];
    await dbHelper.getDataOne(commitTableNamt,columIsApproved,0).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getCommitApproved()async{
    List<CommitmentM> list =[];
    await dbHelper.getDataOne(commitTableNamt,columIsApproved,1).then((value) {
      for (var element in value) { 
        list.add(CommitmentM.fromMap(element));
      }
    });
    return list;
  }

}