import 'package:everything_for_us/models/models.dart';
import 'package:flutter/material.dart';
import 'package:everything_for_us/screens/screens.dart';

class AppRoutes {
   static const initialRoute = 'login';

   static final menuOptions = <MenuOption>[
    
    MenuOption(route: 'home', name: 'Home Screen', screen: HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'housework', name: 'Housework Screen', screen: HouseworkScreen(), icon: Icons.house_sharp),
    
    
    //EXAMPLES
    MenuOption(route: 'listView1', name: 'List View tipo 1', screen: const ListView1Screen(), icon: Icons.view_list_outlined),
    MenuOption(route: 'listView2', name: 'List View tipo 2', screen: const ListView2Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.chrome_reader_mode_outlined),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.person_outline_outlined),
    MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.social_distance_sharp),
    MenuOption(route: 'listviewbuilder', name: 'Infinite scroll & Pull', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined)
   ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
   
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'login' : ( BuildContext context) => const LoginScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    
    return appRoutes;
  }
  //  static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'      :(context) => const HomeScreen(),
  //       'listView1' :(context) => const ListView1Screen(),
  //       'listView2' :(context) => const ListView2Screen(),
  //       'card'      :(context) => const CardScreen(),
  //       'alert'     :(context) => const AlertScreen()
  //     };

    static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
 
  
}