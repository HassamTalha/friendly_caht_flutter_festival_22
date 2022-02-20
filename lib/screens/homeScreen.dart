import 'package:friendly_chat/utils/library.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text("Friendly Chat", style: kAppBarTextStyle),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
              ),
            )
          ],
        ),
        body: Container(
          decoration: getScreenDecoration(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Messages", style: kTitleStyle),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: dashChats.length,
                  itemBuilder: (context, index) {
                    return ChatTile(
                      chatModal: dashChats[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
