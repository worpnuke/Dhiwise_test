import 'package:test/presentation/logged_out_screen/logged_out_screen.dart';
import 'package:test/presentation/logged_out_screen/binding/logged_out_binding.dart';
import 'package:test/presentation/register_step_1_screen/register_step_1_screen.dart';
import 'package:test/presentation/register_step_1_screen/binding/register_step_1_binding.dart';
import 'package:test/presentation/login_screen/login_screen.dart';
import 'package:test/presentation/login_screen/binding/login_binding.dart';
import 'package:test/presentation/discover_overflow_behavior_container_screen/discover_overflow_behavior_container_screen.dart';
import 'package:test/presentation/discover_overflow_behavior_container_screen/binding/discover_overflow_behavior_container_binding.dart';
import 'package:test/presentation/photo_open_overlay_one_screen/photo_open_overlay_one_screen.dart';
import 'package:test/presentation/photo_open_overlay_one_screen/binding/photo_open_overlay_one_binding.dart';
import 'package:test/presentation/search_screen/search_screen.dart';
import 'package:test/presentation/search_screen/binding/search_binding.dart';
import 'package:test/presentation/search_results_screen/search_results_screen.dart';
import 'package:test/presentation/search_results_screen/binding/search_results_binding.dart';
import 'package:test/presentation/profile_screen/profile_screen.dart';
import 'package:test/presentation/profile_screen/binding/profile_binding.dart';
import 'package:test/presentation/chats_screen/chats_screen.dart';
import 'package:test/presentation/chats_screen/binding/chats_binding.dart';
import 'package:test/presentation/individual_chat_screen/individual_chat_screen.dart';
import 'package:test/presentation/individual_chat_screen/binding/individual_chat_binding.dart';
import 'package:test/presentation/register_step_2_screen/register_step_2_screen.dart';
import 'package:test/presentation/register_step_2_screen/binding/register_step_2_binding.dart';
import 'package:test/presentation/photo_open_overlay_screen/photo_open_overlay_screen.dart';
import 'package:test/presentation/photo_open_overlay_screen/binding/photo_open_overlay_binding.dart';
import 'package:test/presentation/search_results_preserve_scroll_position_screen/search_results_preserve_scroll_position_screen.dart';
import 'package:test/presentation/search_results_preserve_scroll_position_screen/binding/search_results_preserve_scroll_position_binding.dart';
import 'package:test/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:test/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String loggedOutScreen = '/logged_out_screen';

  static String registerStep1Screen = '/register_step_1_screen';

  static String loginScreen = '/login_screen';

  static String discoverOverflowBehaviorContainerScreen =
      '/discover_overflow_behavior_container_screen';

  static String photoOpenOverlayOneScreen = '/photo_open_overlay_one_screen';

  static String searchScreen = '/search_screen';

  static String searchResultsScreen = '/search_results_screen';

  static String profileScreen = '/profile_screen';

  static String chatsScreen = '/chats_screen';

  static String individualChatScreen = '/individual_chat_screen';

  static String registerStep2Screen = '/register_step_2_screen';

  static String photoOpenOverlayScreen = '/photo_open_overlay_screen';

  static String searchResultsPreserveScrollPositionScreen =
      '/search_results_preserve_scroll_position_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loggedOutScreen,
      page: () => LoggedOutScreen(),
      bindings: [
        LoggedOutBinding(),
      ],
    ),
    GetPage(
      name: registerStep1Screen,
      page: () => RegisterStep1Screen(),
      bindings: [
        RegisterStep1Binding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: discoverOverflowBehaviorContainerScreen,
      page: () => DiscoverOverflowBehaviorContainerScreen(),
      bindings: [
        DiscoverOverflowBehaviorContainerBinding(),
      ],
    ),
    GetPage(
      name: photoOpenOverlayOneScreen,
      page: () => PhotoOpenOverlayOneScreen(),
      bindings: [
        PhotoOpenOverlayOneBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultsScreen,
      page: () => SearchResultsScreen(),
      bindings: [
        SearchResultsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: chatsScreen,
      page: () => ChatsScreen(),
      bindings: [
        ChatsBinding(),
      ],
    ),
    GetPage(
      name: individualChatScreen,
      page: () => IndividualChatScreen(),
      bindings: [
        IndividualChatBinding(),
      ],
    ),
    GetPage(
      name: registerStep2Screen,
      page: () => RegisterStep2Screen(),
      bindings: [
        RegisterStep2Binding(),
      ],
    ),
    GetPage(
      name: photoOpenOverlayScreen,
      page: () => PhotoOpenOverlayScreen(),
      bindings: [
        PhotoOpenOverlayBinding(),
      ],
    ),
    GetPage(
      name: searchResultsPreserveScrollPositionScreen,
      page: () => SearchResultsPreserveScrollPositionScreen(),
      bindings: [
        SearchResultsPreserveScrollPositionBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoggedOutScreen(),
      bindings: [
        LoggedOutBinding(),
      ],
    )
  ];
}
