import 'package:dio/src/options.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';

class ErrorLogger extends ParseErrorLogger {
  final logger = Logger();
  @override
  void logError(Object error, StackTrace stackTrace, RequestOptions options) {
    logger.e(error);
  }
}
