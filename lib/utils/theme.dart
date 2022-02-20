
import 'package:friendly_chat/utils/library.dart';

const Color kPrimaryColor = Color(0xFF0067bc);
const Color kAccentColor = Color(0xFFFEF9EB);
const Color kLightColor = Color(0xFF90eff9);
const Color kDashBackground = Color(0xFFE6E6E6);

const TextStyle kTitleStyle = TextStyle(
    color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 16);

TextStyle kAppBarTextStyle = TextStyle(
    fontFamily: GoogleFonts.quicksand(
  fontWeight: FontWeight.bold,
).fontFamily);

Decoration getScreenDecoration(context) {
  return BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      color: Theme.of(context).accentColor);
}
