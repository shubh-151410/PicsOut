import 'package:flutter/material.dart';
import 'package:markets/src/pages/Aboutus.dart';
import 'package:markets/src/pages/privacy_policy.dart';

import 'src/models/route_argument.dart';
import 'src/pages/cart.dart';
import 'src/pages/category.dart';
import 'src/pages/checkout.dart';
import 'src/pages/debug.dart';
import 'src/pages/delivery_addresses.dart';
import 'src/pages/delivery_pickup.dart';
import 'src/pages/details.dart';
import 'src/pages/forget_password.dart';
import 'src/pages/help.dart';
import 'src/pages/languages.dart';
import 'src/pages/login.dart';
import 'src/pages/menu_list.dart';
import 'src/pages/order_success.dart';
import 'src/pages/pages.dart';
import 'src/pages/payment_methods.dart';
import 'src/pages/paypal_payment.dart';
import 'src/pages/product.dart';
import 'src/pages/profile.dart';
import 'src/pages/reviews.dart';
import 'src/pages/settings.dart';
import 'src/pages/signup.dart';
import 'src/pages/splash_screen.dart';
import 'src/pages/tracking.dart';
import 'src/pages/walkthrough.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Debug':
        return MaterialPageRoute(builder: (_) => DebugWidget(routeArgument: args as RouteArgument));
      case '/Walkthrough':
        return MaterialPageRoute(builder: (_) => Walkthrough());
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/MobileVerification':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/MobileVerification2':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/Login':
        return MaterialPageRoute(builder: (_) => LoginWidget());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => ProfileWidget());
      case '/ForgetPassword':
        return MaterialPageRoute(builder: (_) => ForgetPasswordWidget());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesWidget(currentTab: args));
      case '/Details':
        return MaterialPageRoute(builder: (_) => DetailsWidget(routeArgument: args as RouteArgument));
      case '/Menu':
        return MaterialPageRoute(builder: (_) => MenuWidget(routeArgument: args as RouteArgument));
      case '/Product':
        return MaterialPageRoute(builder: (_) => ProductWidget(routeArgument: args as RouteArgument));
      case '/Category':
        return MaterialPageRoute(builder: (_) => CategoryWidget(routeArgument: args as RouteArgument));
      case '/Cart':
        return MaterialPageRoute(builder: (_) => CartWidget(routeArgument: args as RouteArgument));
      case '/Tracking':
        return MaterialPageRoute(builder: (_) => TrackingWidget(routeArgument: args as RouteArgument));
      case '/Reviews':
        return MaterialPageRoute(builder: (_) => ReviewsWidget(routeArgument: args as RouteArgument));
      case '/PaymentMethod':
        return MaterialPageRoute(builder: (_) => PaymentMethodsWidget());
      case '/DeliveryAddresses':
        return MaterialPageRoute(builder: (_) => DeliveryAddressesWidget());
      case '/DeliveryPickup':
        return MaterialPageRoute(builder: (_) => DeliveryPickupWidget(routeArgument: args as RouteArgument));
      case '/Checkout':
        return MaterialPageRoute(builder: (_) => CheckoutWidget(routeArgument: RouteArgument(param: 'Cash on Delivery')));
      case '/CashOnDelivery':
        return MaterialPageRoute(
            builder: (_) => OrderSuccessWidget(routeArgument: RouteArgument(param: 'Cash on Delivery')));
      case '/PayOnPickup':
        return MaterialPageRoute(
            builder: (_) => OrderSuccessWidget(routeArgument: RouteArgument(param: 'Pay on Pickup')));
      case '/PayPal':
        return MaterialPageRoute(builder: (_) => PayPalPaymentWidget(routeArgument: args as RouteArgument));
      case '/OrderSuccess':
        return MaterialPageRoute(builder: (_) => OrderSuccessWidget(routeArgument: args as RouteArgument));
      case '/Languages':
        return MaterialPageRoute(builder: (_) => LanguagesWidget());
      case '/Help':
        return MaterialPageRoute(builder: (_) => HelpWidget());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => SettingsWidget());
      case '/Aboutus':
        return MaterialPageRoute(builder: (_) => AboutUs());
      case '/privacyandpolicy':
        return MaterialPageRoute(builder: (_) => PrivcyPolicy());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => PagesWidget(currentTab: 2));
    }
  }
}