import 'dart:convert';

class MessageModal {

  String? title;
  String? image;
  String? text;
  MessageModal({
    this.title,
    this.image,
    this.text,
  });
  MessageModal? reply;

  MessageModal copyWith({
    String? title,
    String? image,
    String? text,
  }) {
    return MessageModal(
      title: title ?? this.title,
      image: image ?? this.image,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'text': text,
    };
  }

  factory MessageModal.fromMap(Map<String, dynamic> map) {
    return MessageModal(
      title: map['title'],
      image: map['image'],
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModal.fromJson(String source) => MessageModal.fromMap(json.decode(source));

  @override
  String toString() => 'MessageModal(title: $title, image: $image, text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MessageModal &&
      other.title == title &&
      other.image == image &&
      other.text == text;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode ^ text.hashCode;
}
