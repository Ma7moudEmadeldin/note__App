import 'package:hive/hive.dart';

part 'note_Model.g.dart';

@HiveType(typeId: 0)
class note_Model {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;

  note_Model({required this.title, required this.subtitle, required this.date});
}
