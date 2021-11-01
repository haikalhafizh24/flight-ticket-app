import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final int balancae;

  const UserModel({
    required this.id,
    required this.email,
    this.name = '',
    this.balancae = 0,
  });
  @override
  List<Object?> get props => throw UnimplementedError();
}
