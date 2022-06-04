import 'package:advicer/domain/entities/advice_Entity.dart';

abstract class AdvicerRemoteDatasource {
  /// requests a random advice from free api
  /// throws a server-Exception if respond code is not 200
  Future<AdviceEntity> getRandomAdviceFromApi();
}

class AdvicerRemoteDatasourceImpl implements AdvicerRemoteDatasource {
  @override
  Future<AdviceEntity> getRandomAdviceFromApi() {
    // TODO: implement getRandomAdviceFromApi
    throw UnimplementedError();
  }
}
