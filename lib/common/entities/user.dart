import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  final String? id;
  final String? name;
  final String? email;
  final String? photoUrl;
  final String? location;
  final String? fcmtoken;
  final Timestamp? addtime;

  UserData({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.location,
    this.fcmtoken,
    this.addtime,
  });

  factory UserData.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserData(
      id: data?['id'],
      name: data?['name'],
      email: data?['email'],
      photoUrl: data?['photourl'],
      location: data?['location'],
      fcmtoken: data?['fcmtoken'],
      addtime: data?['addtime'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (email != null) "email": email,
      if (photoUrl != null) "photourl": photoUrl,
      if (location != null) "location": location,
      if (fcmtoken != null) "fcmtoken": fcmtoken,
      if (addtime != null) "addtime": addtime,
    };
  }
}
// //api post response msg
// class UserLoginResponseEntity {
//   int? code;
//   String? msg;
//   UserItem? data;

//   UserLoginResponseEntity({
//     this.code,
//     this.msg,
//     this.data,
//   });

//   factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
//       UserLoginResponseEntity(
//         code: json["code"],
//         msg: json["msg"],
//         data: UserItem.fromJson(json["data"]),
//       );
// }


// 登录返回
class UserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  String? email;
  String? photoUrl;

  UserLoginResponseEntity({
    this.accessToken,
    this.displayName,
    this.email,
    this.photoUrl,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        email: json["email"],
        photoUrl: json["photoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "email": email,
        "photoUrl": photoUrl,
      };
}

class MeListItem {
  String? name;
  String? icon;
  String? explain;
  String? route;

  MeListItem({
    this.name,
    this.icon,
    this.explain,
    this.route,
  });

  factory MeListItem.fromJson(Map<String, dynamic> json) => MeListItem(
        name: json["name"],
        icon: json["icon"],
        explain: json["explain"],
        route: json["route"],
      );
}
