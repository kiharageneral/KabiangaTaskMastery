
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kabianga_task_mastery/common/entities/entities.dart';
import 'package:kabianga_task_mastery/common/routes/routes.dart';
import 'package:kabianga_task_mastery/common/store/store.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/pages/frame/sign_in/index.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>['openid']);

class SignInController extends GetxController {
  final state = SignInState();
  SignInController();
  final db = FirebaseFirestore.instance;

  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        final _gAuthentication = await user.authentication;
        final _credential = GoogleAuthProvider.credential(
            idToken: _gAuthentication.idToken,
            accessToken: _gAuthentication.accessToken);
        await FirebaseAuth.instance.signInWithCredential(_credential);
        String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? "";
        UserLoginResponseEntity userProfile = UserLoginResponseEntity();
        userProfile.email = email;
        userProfile.photoUrl = photoUrl;
        userProfile.accessToken = id;
        userProfile.displayName = displayName;

        UserStore.to.saveProfile(userProfile);
        var userbase = await db
            .collection("users")
            .withConverter(
              fromFirestore: UserData.fromFirestore,
              toFirestore: (UserData userdata, options) =>
                  userdata.toFirestore(),
            )
            .where("id", isEqualTo: id)
            .get();

        if (userbase.docs.isEmpty) {
          final data = UserData(
            id: id,
            name: displayName,
            email: email,
            photoUrl: photoUrl,
            location: "",
            fcmtoken: "",
            addtime: Timestamp.now(),
          );
          await db
              .collection("users")
              .withConverter(
                fromFirestore: UserData.fromFirestore,
                toFirestore: (UserData userdata, options) =>
                    userdata.toFirestore(),
              )
              .add(data);
        }
        toastInfo(msg: "login success");
        Get.offAndToNamed(AppRoutes.Dashboard);
      }
    } catch (e) {
      toastInfo(msg: "login success");
      print(e);
    }
  }

  @override
  void onReady() {
    super.onReady();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print("User is currently logged out");
      } else {
        print("user is logged in");
      }
    });
  }
}
