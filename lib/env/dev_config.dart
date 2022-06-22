import 'base_config.dart';

class DevConfig implements BaseConfig {

  @override
  // TODO: implement apiHostLARAVEL
  String get apiHost => "http://bullspree.php.dev.drcsystems.ooo/api/";

  @override
  // TODO: implement httpLogs
  bool get httpLogs => true;

  @override
  // TODO: implement apiVersion
  String get apiVersion => "v1/";

}