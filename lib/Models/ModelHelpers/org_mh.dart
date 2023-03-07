import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/Centeral/organizationm.dart';

class OrganizationMH{
  DBHelper dbHelper = DBHelper();

  createOrganization(OrganizationM organizationM){
    dbHelper.insertData(organizationTableName, organizationM.toMap());
  }
  updateOrganization(OrganizationM organizationM){
    dbHelper .upDateData(organizationTableName, organizationM.toMap(),
    columCode,organizationM.toMap()[columCode]);
  }
  getAllOrg()async{
    List<OrganizationM> list =[];
    await dbHelper.getData(organizationTableName).then((value) {
      for (var element in value) { 
        list.add(OrganizationM.fromMap(element));
      }
    });
    return list;
  }

  //search not complate
  searchForOrg()async{
    List<OrganizationM> list =[];
    //complate this
    return list;
  }
}