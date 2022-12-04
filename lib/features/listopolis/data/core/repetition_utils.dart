import 'package:listopolis/features/listopolis/data/core/date_time_utils.dart';
import 'package:listopolis/features/listopolis/data/models/reminder_time.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_config.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_type.dart';

class RepetitionUtil{
  static RepetitionConfig createRepetitionOnSecond(String second, DateTime dateTime, String channelKey){
    ReminderTime repTime = ReminderTime("00:00:$second", channelKey);
    RepetitionType repType = RepetitionType.secondOfMinute();
    RepetitionConfig config = RepetitionConfig(repType, DateTimeUtil.getDate(dateTime), [repTime]);
    return config;
  }

  static int getChannelID(){
    return DateTime.now().millisecondsSinceEpoch;
  }
}