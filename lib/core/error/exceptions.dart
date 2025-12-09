abstract class PortfolioException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const PortfolioException(this.message, [this.stackTrace]);

  @override
  String toString() => 'PortfolioException: $message';
}

class NetworkException extends PortfolioException {
  const NetworkException(super.message, [super.stackTrace]);
}

class JsonParsingException extends PortfolioException {
  const JsonParsingException(super.message, [super.stackTrace]);
}

class DataNotFoundException extends PortfolioException {
  const DataNotFoundException(super.message, [super.stackTrace]);
}

class TimeoutException extends PortfolioException {
  const TimeoutException(super.message, [super.stackTrace]);
}
