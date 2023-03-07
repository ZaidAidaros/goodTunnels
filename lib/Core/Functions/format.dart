
String formatMesage(List<String> list){
  String text="";
  for (var element in list) {
    text+=";$element";
   }
  text+=":$list[0]";
  return text;
}
List<String> deFormatMesage(String text){
  List<String> list= text.split(";");
  return list;
}