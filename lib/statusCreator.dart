import 'DateTime.dart';
ConvertDate dateConvert = ConvertDate();
class CreateStatus{
  String myStatus(String status, String endDate, String nextRelease)
  {
    if(status == 'finished')
      {
        return 'Finished on ${dateConvert.convert(endDate)}';
      }
    else
      {
        if(nextRelease == null)
          {
            return 'Still Streaming';
          }
        else
          {
             return 'Still Streaming, \nNext Release on ${dateConvert.convert(nextRelease)}';
          }
      }
  }
}