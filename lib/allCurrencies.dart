// To parse this JSON data, do
//
//     final allCurriencies = allCurrienciesFromJson(jsonString);

import 'dart:convert';

Map<String, String> allCurrienciesFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, String>(k, v));

String allCurrienciesToJson(Map<String, String> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v)));
