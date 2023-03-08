

reqNoGenerator()=>dateToInt(DateTime.now());
dateToInt(DateTime dateTime)=> int.parse( 
    "${dateTime.year}${dateTime.month}${dateTime.day}${dateTime.hour}${dateTime.minute}${dateTime.second}");