import 'package:json_annotation/json_annotation.dart';
import 'package:stacked_app/models/address.dart';
import 'package:stacked_app/models/company.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final Address address;
  final String username;
  final String email;
  final String phone;
  final String website;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.address,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
