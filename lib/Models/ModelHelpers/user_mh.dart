import 'package:goodtunnels/Core/Constants/subcommitment_constants.dart';
import 'package:goodtunnels/Core/Constants/user_const.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/Centeral/userm.dart';

class UserMH{
  DBHelper dbHelper = DBHelper();

  createOrganization(UserM userM){
    dbHelper.insertData(userTName, userM.toMap());
  }
  updateOrganization(UserM userM){
    dbHelper.upDateData(userTName, userM.toMap(),
    columUId,userM.toMap()[columUId]);
  }
  getAllUsers()async{
    List<UserM> list =[];
    await dbHelper.getData(userTName).then((value) {
      for (var element in value) { 
        list.add(UserM.fromMap(element));
      }
    });
    return list;
  }
 Future<UserM?> getUser(int userId)async{
    UserM? userM;
    await dbHelper.getDataOne(userTName, columUId,userId).then((value) {
      userM=UserM.fromMap(value.first);
    });
    return  userM;
  }

}