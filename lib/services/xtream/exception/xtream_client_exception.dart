/// Represents an exception that occurs when interacting with the Xtream Code
/// Client.
class XTreamClientException implements Exception {
  /// Creates a new instance of [XTreamClientException].
  ///
  /// The [cause] parameter should describe the reason for the exception.
  XTreamClientException(this.cause);

  /// The cause of the exception.
  final String cause;
}
