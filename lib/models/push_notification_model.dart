import 'package:firebase_messenger/models/push_notification_model.g.dart';
import 'package:json_annotation/json_annotation.dart';

///Model notification consist of title(from user) and body(message)
class PushNotificationModel {
  Notification notification;
  String to;

  PushNotificationModel({required this.notification, required this.to});

  factory PushNotificationModel.fromJson(Map<String, dynamic> json) =>
      $PushNotificationModelFromJson(json);

  Map<String, dynamic> toJson() => $PushNotificationModelToJson(this);
}

@JsonSerializable()
class Notification {
  String title;
  String body;

  Notification({required this.title, required this.body});

  factory Notification.fromJson(Map<String, dynamic> json) =>
      $NotificationFromJson(json);

  Map<String, dynamic> toJson() => $NotificationToJson(this);
}


