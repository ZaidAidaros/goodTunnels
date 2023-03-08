
String formatMesage(List<String> list){
  String text=list[0];
  for (int i=1; i<list.length;i++) {
    text+=";${list[i]}";
   }
  text+=";${list[0]}";
  return text;
}
List<String> deFormatMesage(String text){
  List<String> list= text.split(";");
  return list;
}