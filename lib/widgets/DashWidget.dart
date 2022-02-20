

import 'package:friendly_chat/utils/library.dart';

class DashWidget extends StatelessWidget {
  final String? dashImage;
  const DashWidget({
    Key? key,
    @required this.dashImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: dashImage!,
      child: CircleAvatar(
        child: Image.asset(dashImage!),
        backgroundColor: kDashBackground,
      ),
    );
  }
}
