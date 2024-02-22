import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/middlewares/middlewares.dart';

import 'package:get/get.dart';
import 'package:kabianga_task_mastery/pages/contact/index.dart';

import '../../pages/dashboard/index.dart';
import '../../pages/frame/sign_in/index.dart';
import '../../pages/frame/welcome/index.dart';

import '../../pages/message/chat/index.dart';
import '../../pages/message/photoview/index.dart';
import '../../pages/profile/index.dart';
import '../../pages/settings/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // about boot up the app
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),

    GetPage(
        name: AppRoutes.Settings,
        page: () => const SettingsPage(),
        binding: SettingBinding()),
    GetPage(
      name: AppRoutes.Profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.Dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
      GetPage(
        name: AppRoutes.Chat,
        page: () => const ChatPage(),
        binding: ChatBinding()),

    GetPage(
        name: AppRoutes.Photoimageview,
        page: () => const PhotoImageView(),
        binding: PhotoImageViewBinding()),
/*
    
    // GetPage(
    //   name: AppRoutes.Application,
    //   page: () => ApplicationPage(),
    //   binding: ApplicationBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(priority: 1),
    //   ],
    // ),

    // 
    GetPage(name: AppRoutes.EmailLogin, page: () => EmailLoginPage(), binding: EmailLoginBinding()),
    GetPage(name: AppRoutes.Register, page: () => RegisterPage(), binding: RegisterBinding()),
    GetPage(name: AppRoutes.Forgot, page: () => ForgotPage(), binding: ForgotBinding()),
    GetPage(name: AppRoutes.Phone, page: () => PhonePage(), binding: PhoneBinding()),
    GetPage(name: AppRoutes.SendCode, page: () => SendCodePage(), binding: SendCodeBinding()),
    */
    //contact page
    GetPage(
        name: AppRoutes.Contact,
        page: () => const ContactPage(),
        binding: ContactBinding()),

    // // message page
    // GetPage(
    //   name: AppRoutes.Message,
    //   page: () => const MessagePage(),
    //   binding: MessageBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(priority: 1),
    //   ],
    // ),

    // //profile section
    // GetPage(
    //     name: AppRoutes.Profile,
    //     page: () => const ProfilePage(),
    //     binding: ProfileBinding()),

    // //chat detail
    // GetPage(
    //     name: AppRoutes.Chat,
    //     page: () => const ChatPage(),
    //     binding: ChatBinding()),

    //GetPage(name: AppRoutes.Photoimgview, page: () => PhotoImgViewPage(), binding: PhotoImgViewBinding()),

    //GetPage(name: AppRoutes.VideoCall, page: () => VideoCallPage(), binding: VideoCallBinding()),*/
  ];
}
