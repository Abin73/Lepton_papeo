import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfileModel {
  String docid;
  String name;
  String email;
  String address;
  String mobileNo;
  UserProfileModel({
    required this.docid,
    required this.name,
    required this.email,
    required this.address,
    required this.mobileNo,
  });


  UserProfileModel copyWith({
    String? docid,
    String? name,
    String? email,
    String? address,
    String? moblieNo,
  }) {
    return UserProfileModel(
      docid: docid ?? this.docid,
      name: name ?? this.name,
      email: email ?? this.email,
      address: address ?? this.address,
      mobileNo: moblieNo ?? this.mobileNo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docid': docid,
      'name': name,
      'email': email,
      'address': address,
      'moblieNo': mobileNo,
    };
  }

  factory UserProfileModel.fromMap(Map<String, dynamic> map) {
    return UserProfileModel(
      docid: map['docid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      address: map['address'] as String,
      mobileNo: map['moblieNo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserProfileModel.fromJson(String source) => UserProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserProfileModel(docid: $docid, name: $name, email: $email, address: $address, moblieNo: $mobileNo)';
  }

  @override
  bool operator ==(covariant UserProfileModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.docid == docid &&
      other.name == name &&
      other.email == email &&
      other.address == address &&
      other.mobileNo == mobileNo;
  }

  @override
  int get hashCode {
    return docid.hashCode ^
      name.hashCode ^
      email.hashCode ^
      address.hashCode ^
      mobileNo.hashCode;
  }
}

