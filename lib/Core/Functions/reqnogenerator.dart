
generateReqNo(int orgCode) {
  String s = "";
  DateTime.now().toString().substring(2, 10).split("-").forEach((element) {
    s += element;
  });
  DateTime.now().toString().substring(11, 19).split(":").forEach((element) {
    s += element;
  });
  return int.parse("$s$orgCode");
}

String formateDate(DateTime dateTime){
  String s = "";
  dateTime.toString().substring(0, 10).split("-").forEach((element) {
    s += element;
  });
  return s;
}