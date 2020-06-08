
class ConvertDate{
  String _month;
  int _year;
  int _day;
  String convert(String date)
  {
    var parsedDate = DateTime.parse(date);
    switch (parsedDate.month) {
      case 1:
        _month = "JAN";
        break;
      case 2:
        _month = "FEB";
        break;
      case 3:
        _month = "MAR";
        break;
      case 4:
        _month = "APR";
        break;
      case 5:
        _month = "MAY";
        break;
      case 6:
        _month = "JUN";
        break;
      case 7:
        _month = "JUL";
        break;
      case 8:
        _month = "AUG";
        break;
      case 9:
        _month = "SEP";
        break;
      case 10:
        _month = "OCT";
        break;
      case 11:
        _month = "NOV";
        break;
      case 12:
        _month = "DEC";
        break;
    }
    _year = parsedDate.year;
    _day = parsedDate.day;
    String s;
    if(_day == 1)
      {
        s = 'st';
      }
    else if(_day == 2)
      {
        s = 'nd';
      }
    else if(_day == 3)
      {
        s = 'rd';
      }
    else
      {
        s = 'th';
      }

    return '$_day$s of $_month $_year';
  }
}
