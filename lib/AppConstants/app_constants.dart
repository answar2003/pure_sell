import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Screens/CartPage/CartPage.dart';
import '../Screens/CatalogueScreen/catalogue.dart';
import '../Screens/CheckOut/checkout.dart';
import '../Screens/Favorite/favorite.dart';
import '../Screens/Filter/filter.dart';
import '../Screens/Item/item.dart';
import '../Screens/NotificationScreen/NotificationWidget/notification.dart';
import '../Screens/OnBoarding/onbordering.dart';
import '../Screens/Orders/orders.dart';
import '../Screens/PrivacyPolicy/privacy_policy.dart';
import '../Screens/Product/product.dart';
import '../Screens/ProfilePage/ProfilePage.dart';
import '../Screens/Settings/settings.dart';
import '../Screens/ShippingAddress/shipping_address.dart';
import '../Screens/home_screen/home.dart';
import '../Screens/mainhomepage/mainhome_screen.dart';
import '../Screens/signup_screen/signup_screen.dart';


class AppConstants {
  static Map<String, Widget Function(dynamic)> appRoutes = {
    '/': (_) => const OnBoarding(),
    Home.routeName: (_) => const Home(),
    Main.routeName: (_) => const Main(),
    Catalogue.routeName: (_) => const Catalogue(),
    Items.routeName: (_) => const Items(),
    Filter.routeName: (_) => const Filter(),
    Product.routeName: (_) => Product(),
    Favorite.routeName: (_) => const Favorite(),
    Profile.routeName: (_) => const Profile(),
    Cart.routeName: (_) => const Cart(),
    CheckOut.routeName: (_) => const CheckOut(),
    SignUpScreen.routeName: (_) => const SignUpScreen(),
    Settings.routeName: (_) => const Settings(),
    Orders.routeName: (_) => const Orders(),
    PrivacyPolicy.routeName: (_) => const PrivacyPolicy(),
    OnBoarding.routeName: (_) => const OnBoarding(),
    NotificationScreen.routeName: (_) => const NotificationScreen(),
    ShippingAddress.routeName: (_) => const ShippingAddress(),
  };

  static setSystemStyling() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  static const privacyPolicyTxt =
      'Give your E-Commerce app an outstanding look.It\'s a small but attractive and beautiful design template for your E-Commerce App.Contact us for more amazing and outstanding designs for your apps.Do share this app with your Friends and rate us if you like this.Also check your other apps';
}
