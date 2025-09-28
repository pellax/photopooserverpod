/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

enum ColorTypeEnum implements _i1.SerializableModel {
  RED,
  GREEN,
  BLUE;

  static ColorTypeEnum fromJson(String name) {
    switch (name) {
      case 'RED':
        return ColorTypeEnum.RED;
      case 'GREEN':
        return ColorTypeEnum.GREEN;
      case 'BLUE':
        return ColorTypeEnum.BLUE;
      default:
        throw ArgumentError(
            'Value "$name" cannot be converted to "ColorTypeEnum"');
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
