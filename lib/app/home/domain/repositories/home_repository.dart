import 'package:dartz/dartz.dart';

import '../../../../base/failure.dart';
import '../entities/home_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> checkConnection();
}
