enum AppEnv {
  dev,
  prod,
  ;

  bool get isProd => this == AppEnv.prod;
}

AppEnv currentAppEnv = _parse();

AppEnv _parse() {
  switch (_appEnv) {
    case 'dev':
      return AppEnv.dev;
    case 'prod':
      return AppEnv.prod;
  }

  throw Exception('undefined appenv');
}

const _appEnv = String.fromEnvironment(
  'APP_ENV',
  defaultValue: 'unknownEnv',
);
