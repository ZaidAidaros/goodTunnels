
import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/SharedModels/subcommitmentm.dart';

class SubCommitmentMH{

  DBHelper dbHelper = DBHelper();

  createSubCommitment(SubCommitmentM subCommitmentM){
    dbHelper.insertData(SubCommitConst.subCommitTableName, subCommitmentM.toMap());
  }
  updateSubCommitment(SubCommitmentM subCommitmentM){
    dbHelper .upDateData(SubCommitConst.subCommitTableName, subCommitmentM.toMap(),
    SubCommitConst.columReqNo,subCommitmentM.toMap()[SubCommitConst.columReqNo]);
  }
  approveSubCommitment(SubCommitmentM subCommitmentM){
      subCommitmentM.isApproved=1;
    dbHelper .upDateData(SubCommitConst.subCommitTableName, subCommitmentM.toMap(),
    SubCommitConst.columReqNo,subCommitmentM.toMap()[SubCommitConst.columReqNo]);
  }
  getAllSubCommitments()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getData(SubCommitConst.subCommitTableName).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getSubCommitNotApproved()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getDataWhere(SubCommitConst.subCommitTableName,SubCommitConst.columIsApproved,0).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }
  getSubCommitApproved()async{
    List<SubCommitmentM> list =[];
    await dbHelper.getDataWhere(SubCommitConst.subCommitTableName,SubCommitConst.columIsApproved,1).then((value) {
      for (var element in value) { 
        list.add(SubCommitmentM.fromMap(element));
      }
    });
    return list;
  }

}