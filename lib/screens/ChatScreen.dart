import 'package:friendly_chat/utils/library.dart';

class ChatScreen extends StatefulWidget {
  final DashChatTileModal? chatModal;
  const ChatScreen({Key? key, @required this.chatModal}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = [];
  final _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isComposing = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var message = ChatMessage(
      image: widget.chatModal!.image!,
      title: widget.chatModal!.title!,
      text: widget.chatModal!.message!,
      animationController: AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this,
      ),
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Row(
          children: [
            DashWidget(
              dashImage: widget.chatModal!.image!,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.chatModal!.title!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "Active 5 hours ago",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: getScreenDecoration(context),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, index) => _messages[index],
                itemCount: _messages.length,
              ),
            ),
            const Divider(height: 1.0),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.all(8),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: kLightColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                onSubmitted: _isComposing ? _handleSubmitted : null,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
                focusNode: _focusNode,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send_rounded),
                onPressed: _isComposing
                    ? () => _handleSubmitted(_textController.text)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // This method consist of logic to send message.
  // 1- First we need to clear our text field to make room for another message.
  // 2- Then we need to notify our send button to change its state so empty message can not be send.
  // 3- We need to create a message object/ Widget and add it to our messages list. In order to show it on the screen.
  // Note that we are attaching new animation controller to the message so when it is rendered on the screen
  // only it has to animate and not all other messages.

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    var message = ChatMessage(
      image: dashChats[2].image!,
      title: kName,
      text: text,
      animationController: AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this,
      ),
    );
    setState(() {
      _messages.insert(0, message);
    });

    // We will request focus manually to not close keyboard by default.

    _focusNode.requestFocus();
    message.animationController.forward();
  }

  // The framework calls dispose method when this State object
  // will never build again. After the framework calls dispose,
  // the State object is considered unmounted and the mounted property is false.
  // Dispose method is always mandatory in Statefull Widgets
  // to free up all the resources. Stateless widgets dont have state so their is no need to call dispose.
  // Mostly we have to call dispose  manually when  we use controllers. Like animationControllers, ScrollController etc
  @override
  void dispose() {
    // Here we have to manually dispose every controller attached to the messages.
    // In real world example when we have chats consisting of thousands of messages then we restrict our logic to render
    // fixed number of messages on the screen and to render other on scroll. In this way
    // we are efficiently manage our memory.

    for (var message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }
}
