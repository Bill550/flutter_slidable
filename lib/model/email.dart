import 'package:meta/meta.dart';

class Email {
  final String email;
  final String message;
  final String title;
  const Email({
    @required this.email,
    @required this.message,
    @required this.title,
  });
}
