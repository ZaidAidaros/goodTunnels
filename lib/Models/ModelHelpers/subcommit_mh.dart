import 'package:goodtunnels/Core/Constants/commitments_constants.dart';
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/SharedModels/CommitmentDetails.dart';

class SubCommitmentMH{

  DBHelper dbHelper = DBHelper();

  createSubCommitment(SubCommitmentM subCommitmentM){
    dbHelper.insertData(subCommitmentTableNamt, subCommitmentM.toMap());
  }
  updateSubCommitment(SubCommitmentM subCommitmentM){
    dbHelper .upDateData(subCommitmentTableNamt, subCommitmentM.toMap(),
    columReqNo,subCommitmentM.toMap()[columReqNo]);
  }
  approveSubCommitment(SubCommitmentM subCommitmentM){
      subCommitmentM.isApproved=1;
    dbHelper .upDateData(commitTableNamt, subCommitmentM.toMap(),
    columReqNo,subCommitmentM.toMap()[columReqNo]);
  }
  getAllSubCommitments()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getData(commitTableNamt).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getSubCommitNotApproved()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getDataOne(commitTableNamt,columIsApproved,0).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getSubCommitApproved()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getDataOne(commitTableNamt,columIsApproved,1).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }

}