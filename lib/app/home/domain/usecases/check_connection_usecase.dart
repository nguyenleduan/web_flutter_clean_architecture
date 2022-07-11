import 'package:dartz/dartz.dart';

import '../../../../base/domain/usecase/base_usecase.dart';
import '../../../../base/domain/usecase/params.dart';
import '../../../../base/failure.dart';
import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

class CheckConnectionUseCase extends BaseUseCase<NoParams, HomeEntity> {
  final HomeRepository _repository;

  CheckConnectionUseCase(this._repository);

  @override
  Future<Either<Failure, HomeEntity>> call(NoParams params) async {
    return await _repository.checkConnection();
  }
}
