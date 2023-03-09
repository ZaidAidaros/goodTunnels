import 'package:goodtunnels/Core/Constants/codingblock_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/Centeral/organizationm.dart';

class OrganizationMH{
  DBHelper dbHelper = DBHelper();

  createOrganization(OrganizationM organizationM){
    dbHelper.insertData(CodingBlockConst.orgTableName, organizationM.toMap());
  }
  updateOrganization(OrganizationM organizationM){
    dbHelper .upDateData(CodingBlockConst.orgTableName, organizationM.toMap(),
    CodingBlockConst.columCode,organizationM.toMap()[CodingBlockConst.columCode]);
  }
  getAllOrg()async{
    List<OrganizationM> list =[];
    await dbHelper.getData(CodingBlockConst.orgTableName).then((value) {
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