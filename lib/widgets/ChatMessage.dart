
import 'package:friendly_chat/utils/library.dart';

class ChatMessage extends StatelessWidget {
  final String title;
  final String image;
 
  const ChatMessage({
    required this.text,
   
    required this.animationController,
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);
  final String text;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor:
          CurvedAnimation(parent: animationController, curve: Curves.easeIn),
      axisAlignment: 0.0,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundColor: kDashBackground,
                child: Image.asset(
                  image,
                ),
              ),
            ),
         
            // BubbleNormal(
            //   text: 'Added iMassage shape bubbles',
            //   color: Color(0xFF1B97F3),
            //   tail: true,
            //   isSender: false,
            //   // delivered: true,
            //   // seen: true,
            //   sent: false,
            //   textStyle: TextStyle(color: Colors.white, fontSize: 16),
            // ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    // color: kLightColor,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          10,
                        ),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "2:45 AM",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
