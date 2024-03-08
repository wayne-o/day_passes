import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePage')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'Splash',
          path: '/splash',
          builder: (context, params) => const SplashWidget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => const SignInWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => const SignUpWidget(),
        ),
        FFRoute(
          name: 'MyBooking',
          path: '/myBooking',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'MyBooking')
              : const MyBookingWidget(),
        ),
        FFRoute(
          name: 'Message',
          path: '/message',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Message')
              : const MessageWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const ProfileWidget(),
        ),
        FFRoute(
          name: 'ExplorePage',
          path: '/explorePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ExplorePage')
              : const ExplorePageWidget(),
        ),
        FFRoute(
          name: 'Onboarding',
          path: '/onboarding',
          builder: (context, params) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'OTP',
          path: '/otp',
          builder: (context, params) => const OtpWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'CreateNewPassword',
          path: '/createNewPassword',
          builder: (context, params) => const CreateNewPasswordWidget(),
        ),
        FFRoute(
          name: 'SelectLanguage',
          path: '/selectLanguage',
          builder: (context, params) => const SelectLanguageWidget(),
        ),
        FFRoute(
          name: 'SelectLanguageModal',
          path: '/selectLanguageModal',
          builder: (context, params) => const SelectLanguageModalWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'ForgotPasswordProfile',
          path: '/forgotPasswordProfile',
          builder: (context, params) => const ForgotPasswordProfileWidget(),
        ),
        FFRoute(
          name: 'LegalAndPolicies',
          path: '/legalAndPolicies',
          builder: (context, params) => const LegalAndPoliciesWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'Security',
          path: '/security',
          builder: (context, params) => const SecurityWidget(),
        ),
        FFRoute(
          name: 'HelpandSupport',
          path: '/helpandSupport',
          builder: (context, params) => const HelpandSupportWidget(),
        ),
        FFRoute(
          name: 'ChatUser',
          path: '/chatUser',
          builder: (context, params) => const ChatUserWidget(),
        ),
        FFRoute(
          name: 'Search',
          path: '/search',
          builder: (context, params) => const SearchWidget(),
        ),
        FFRoute(
          name: 'SearchResult',
          path: '/searchResult',
          builder: (context, params) => const SearchResultWidget(),
        ),
        FFRoute(
          name: 'Details',
          path: '/details',
          builder: (context, params) => DetailsWidget(
            image: params.getParam('image', ParamType.String),
            name: params.getParam('name', ParamType.String),
            location: params.getParam('location', ParamType.String),
            price: params.getParam('price', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'BookingHotel',
          path: '/bookingHotel',
          builder: (context, params) => BookingHotelWidget(
            image: params.getParam('image', ParamType.String),
            name: params.getParam('name', ParamType.String),
            location: params.getParam('location', ParamType.String),
            price: params.getParam('price', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'AddNewCard',
          path: '/addNewCard',
          builder: (context, params) => const AddNewCardWidget(),
        ),
        FFRoute(
          name: 'PaymentSuccessfull',
          path: '/paymentSuccessfull',
          builder: (context, params) => const PaymentSuccessfullWidget(),
        ),
        FFRoute(
          name: 'Ticket',
          path: '/ticket',
          builder: (context, params) => TicketWidget(
            name: params.getParam('name', ParamType.String),
            location: params.getParam('location', ParamType.String),
            price: params.getParam('price', ParamType.double),
            image: params.getParam('image', ParamType.String),
            status: params.getParam('status', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Whishlist',
          path: '/whishlist',
          builder: (context, params) => const WhishlistWidget(),
        ),
        FFRoute(
          name: 'NotificationsLive',
          path: '/notificationsLive',
          builder: (context, params) => const NotificationsLiveWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
