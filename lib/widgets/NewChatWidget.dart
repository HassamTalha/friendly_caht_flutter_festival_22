import 'package:friendly_chat/utils/library.dart';

class NewChatWidget extends StatelessWidget {
  const NewChatWidget({
    Key? key,
    required this.chatModal,
  }) : super(key: key);

  final DashChatTileModal? chatModal;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: chatModal!.isNew!,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
          child: Text(
            "New",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        color: Colors.red,
      ),
    );
  }
}
