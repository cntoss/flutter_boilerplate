abstract class AppEnvironment {
  late final String baseUrl;
}

class DevelopmentEnvironment implements AppEnvironment {
  @override
  String baseUrl = 'api/v1';
}

class ProductionEnvironment implements AppEnvironment {
  @override
  String baseUrl = 'live/ap/v1';
}
