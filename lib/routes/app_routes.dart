import 'package:flutter/material.dart';
import 'package:wilt/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:wilt/presentation/friend_list_screen/friend_list_screen.dart';
import 'package:wilt/presentation/share_screen/share_screen.dart';
import 'package:wilt/presentation/image_management_screen/image_management_screen.dart';
import 'package:wilt/presentation/scoring_screen/scoring_screen.dart';
import 'package:wilt/presentation/activity_feed_screen/activity_feed_screen.dart';
import 'package:wilt/presentation/add_friends_screen/add_friends_screen.dart';
import 'package:wilt/presentation/email_login_screen/email_login_screen.dart';
import 'package:wilt/presentation/video_library_screen/video_library_screen.dart';
import 'package:wilt/presentation/contact_sharing_screen/contact_sharing_screen.dart';
import 'package:wilt/presentation/followers_screen/followers_screen.dart';
import 'package:wilt/presentation/hashtag_screen/hashtag_screen.dart';
import 'package:wilt/presentation/user_account_screen/user_account_screen.dart';
import 'package:wilt/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String contactUsScreen = '/contact_us_screen';

  static const String friendListScreen = '/friend_list_screen';

  static const String shareScreen = '/share_screen';

  static const String imageManagementScreen = '/image_management_screen';

  static const String scoringScreen = '/scoring_screen';

  static const String activityFeedScreen = '/activity_feed_screen';

  static const String addFriendsScreen = '/add_friends_screen';

  static const String emailLoginScreen = '/email_login_screen';

  static const String videoLibraryScreen = '/video_library_screen';

  static const String contactSharingScreen = '/contact_sharing_screen';

  static const String followersScreen = '/followers_screen';

  static const String hashtagScreen = '/hashtag_screen';

  static const String userAccountScreen = '/user_account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        contactUsScreen: ContactUsScreen.builder,
        friendListScreen: FriendListScreen.builder,
        shareScreen: ShareScreen.builder,
        imageManagementScreen: ImageManagementScreen.builder,
        scoringScreen: ScoringScreen.builder,
        activityFeedScreen: ActivityFeedScreen.builder,
        addFriendsScreen: AddFriendsScreen.builder,
        emailLoginScreen: EmailLoginScreen.builder,
        videoLibraryScreen: VideoLibraryScreen.builder,
        contactSharingScreen: ContactSharingScreen.builder,
        followersScreen: FollowersScreen.builder,
        hashtagScreen: HashtagScreen.builder,
        userAccountScreen: UserAccountScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ContactUsScreen.builder
      };
}
