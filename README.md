<h1 Friendly Chat - Flutter Festival 22 </h1>

This repo belongs to Flutter Festival's 1st hands-on presented by Hassam Talha on 20th Feb-2022. Where we learned how to **Uplift your UI in FlutterApps**.

###  🔽[Download][download] Android APK (TESTING)

<br>


## 🤔 Our Main Focus
- **Hero Widgets**: A widget that marks its child as being a candidate for hero animations.

When a PageRoute is pushed or popped with the Navigator, the entire screen's content is replaced. An old route disappears and a new route appears. If there's a common visual feature on both routes then it can be helpful for orienting the user for the feature to physically move from one page to the other during the routes' transition. Such an animation is called a hero animation. The hero widgets "fly" in the Navigator's overlay during the transition and while they're in-flight they're, by default, not shown in their original locations in the old and new routes.

To label a widget as such a feature, wrap it in a Hero widget. When navigation happens, the Hero widgets on each route are identified by the HeroController. For each pair of Hero widgets that have the same tag, a hero animation is triggered.

If a Hero is already in flight when navigation occurs, its flight animation will be redirected to its new destination. The widget shown in-flight during the transition is, by default, the destination route's Hero's child.

For a Hero animation to trigger, the Hero has to exist on the very first frame of the new page's animation.

Routes must not contain more than one Hero for each tag.

- **Hero Animations**: To control the Hero flight animation we can use either of the following methods.
1- Custom animations
2- With PageRouteBuilder

- **Animation class and Animation Controller**: This library provides basic building blocks for implementing animations in Flutter. Other layers of the framework use these building blocks to provide advanced animation support for applications. For example, the widget library includes ImplicitlyAnimatedWidgets and AnimatedWidgets that make it easy to animate certain properties of a Widget. If those animated widgets are not sufficient for a given use case, the basic building blocks provided by this library can be used to implement custom animated effects.

- **TickerProviderState**: Provides Ticker objects that are configured to only tick while the current tree is enabled, as defined by TickerMode.

To create an AnimationController in a class that uses this mixin, pass vsync: this to the animation controller constructor whenever you create a new animation controller.

- **SingleTickerProviderState**: If you only have a single Ticker (for example only a single AnimationController) for the lifetime of your State, then using a SingleTickerProviderStateMixin is more efficient. This is the common case.

- **Dart Packages**: We want to overcome the charges we required to send the SOS SMS in future in collaboration with our Government hopefully.

## ⚒️ Tools & Technology

- Flutter (Mobile App Development)

## 👀 More Look & Feel

Here's what the final look will be!

<img src="https://github.com/HassamTalha/friendly_chat_flutter_festival_22/blob/main/assets/images/Screenshot_1645347743.png?raw=true">

<img src="https://github.com/HassamTalha/friendly_chat_flutter_festival_22/blob/main/assets/images/Screenshot_1645347789.png?raw=true">




[download]: https://drive.google.com/file/d/1k5aeFg-2WjWTq1g_oKAMxoeMGILTfppQ/view?usp=sharing