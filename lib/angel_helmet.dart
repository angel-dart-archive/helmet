/// A collection of 11 middleware and handlers to help secure your application
/// using HTTP headers.
library angel_helmet;

import 'package:angel_framework/angel_framework.dart';

/// Configures your application to use the most common handlers from the library.
AngelConfigurer helmet() {
  return (Angel app) async {
    app.responseFinalizers.add(waterfall([
      dnsPrefetchControl(),
      frameguard(),
      hidePoweredBy(),
      hsts(),
      ieNoOpen(),
      noSniff(),
      xssFilter()
    ]));
  };
}

RequestMiddleware contentSecurityPolicy() {}

RequestMiddleware dnsPrefetchControl() {}

RequestMiddleware frameguard() {}

RequestMiddleware hidePoweredBy() {}

RequestMiddleware hpkp() {}

RequestMiddleware hsts() {}

RequestMiddleware ieNoOpen() {}

RequestMiddleware noCache() {}

RequestMiddleware noSniff() {}

RequestMiddleware referrerPolicy() {}

RequestMiddleware xssFilter() {}
