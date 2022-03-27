import 'package:moor_flutter/moor_flutter.dart';
//part 'requests_database.g.dart';

class Requets extends Table {
  TextColumn get name => text().withLength(min: 3, max: 50)();
  TextColumn get phoneNum => text().withLength(min: 10, max: 10)();
  DateTimeColumn get pickupDate => dateTime().nullable()();
  BoolColumn get Type => boolean().withDefault(Constant(false))();
}
