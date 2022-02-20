import 'package:friendly_chat/utils/library.dart';

class ChatTile extends StatelessWidget {
  final DashChatTileModal? chatModal;
  const ChatTile({Key? key, this.chatModal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _handleClick(context);
      },
      child: Container(
        margin: EdgeInsets.only(right: 20, top: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey.withOpacity(0.4),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0)
          ],
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(
              20,
            ),
          ),
          color: chatModal!.isNew! ? kLightColor : Colors.white,
        ),
        child: ListTile(
          leading: DashWidget(
            dashImage: chatModal!.image,
          ),
          title: Text(
            chatModal!.title!,
            style: kTitleStyle,
          ),
          subtitle: Text(
            chatModal!.message!,
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "2:45 PM",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              NewChatWidget(chatModal: chatModal)
            ],
          ),
        ),
      ),
    );
  }

  void _handleClick(context) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (_) => ChatScreen(),
    //   ),
    // );

    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ChatScreen(
        chatModal: chatModal,
      ),
      transitionDuration: Duration(milliseconds: 900),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    ));
  }
}
