import 'package:hive/hive.dart';

part 'note_Model.g.dart';

@HiveType(typeId: 0)
class note_Model extends HiveObject{
  @HiveField(0)
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String date;

  note_Model({required this.title, required this.subtitle, required this.date});
}
