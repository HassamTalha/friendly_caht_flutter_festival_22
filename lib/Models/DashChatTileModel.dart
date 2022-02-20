import 'dart:convert';

class DashChatTileModal {


  String? title;
  String? message;
  String? time;
  bool? isNew;
  String? image;
  DashChatTileModal({
    this.title,
    this.message,
    this.time,
    this.isNew,
    this.image,
  });

  DashChatTileModal copyWith({
    String? title,
    String? message,
    String? time,
    bool? isNew,
    String? image,
  }) {
    return DashChatTileModal(
      title: title ?? this.title,
      message: message ?? this.message,
      time: time ?? this.time,
      isNew: isNew ?? this.isNew,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'message': message,
      'time': time,
      'isNew': isNew,
      'image': image,
    };
  }

  factory DashChatTileModal.fromMap(Map<String, dynamic> map) {
    return DashChatTileModal(
      title: map['title'],
      message: map['message'],
      time: map['time'],
      isNew: map['isNew'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DashChatTileModal.fromJson(String source) => DashChatTileModal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DashChatTileModal(title: $title, message: $message, time: $time, isNew: $isNew, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DashChatTileModal &&
      other.title == title &&
      other.message == message &&
      other.time == time &&
      other.isNew == isNew &&
      other.image == image;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      message.hashCode ^
      time.hashCode ^
      isNew.hashCode ^
      image.hashCode;
  }
}
