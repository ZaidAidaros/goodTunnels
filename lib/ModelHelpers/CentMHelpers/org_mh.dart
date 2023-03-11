import 'package:goodtunnels/Core/Constants/SharedConst/CodingBlock/codingblock_constants.dart';
import 'package:goodtunnels/Core/Services/dbhelper.dart';
import 'package:goodtunnels/Models/Centeral/organizationm.dart';

import '../../Core/Constants/CenConst/orgconstants.dart';

class OrganizationMH{
  DBHelper dbHelper = DBHelper();

  createOrganization(OrganizationM organizationM){
    dbHelper.insertData(CodingBlockConst.columOrgCode, organizationM.toMap());
  }
  updateOrganization(OrganizationM organizationM){
    dbHelper .upDateData(CodingBlockConst.columOrgCode, organizationM.toMap(),
    CodingBlockConst.columCode,organizationM.toMap()[CodingBlockConst.columCode]);
  }
  getAllOrg()async{
    List<OrganizationM> list =[];
    await dbHelper.getData(CodingBlockConst.columOrgCode).then((value) {
      for (var element in value) { 
        list.add(OrganizationM.fromMap(element));
      }
    });
    return list;
  }

    Future<OrganizationM?> getOrgByPhone(String phone)async{
    return await dbHelper.getDataWhere(
      OrgConst.orgTableName,
      OrgConst.columOrgPhone,
      phone
    ).then((value){
      if(value.isNotEmpty){
       return OrganizationM.fromMap(value.first);
      }else{
        return null;
      }
    });
    }

  //search not complate
  searchForOrg()async{
    List<OrganizationM> list =[];
    //complate this
    return list;
  }
}