import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/routes/routes.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/pages/profile/widgets/create_team_page.dart';
import 'package:kabianga_task_mastery/pages/profile/widgets/work_with_widget.dart';

import '../../common/values/values.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary
            ]),
      ),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Profile Page',
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomContainer(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: Dimensions.height20),
                      CircleAvatar(
                        radius: Dimensions.radius50,
                        backgroundImage:
                            const AssetImage('assets/images/background.jpg'),
                      ),
                      SizedBox(height: Dimensions.height10),
                      Text(
                        'General Kihara',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Software Engineer',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: Dimensions.fontSize20),
                      Row(
                        children: [
                          Text(
                            'Team you work now',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {
                                Get.to(() => const CreateTeamPage());
                              },
                              icon: const Icon(Icons.add))
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height50 * 4,
                        child: ListView(children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: Dimensions.height20,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(
                                  Dimensions.radius20 /
                                      2), // Set rounded corner radius
                            ),
                            child: ListTile(
                              leading: const CircleAvatar(
                                backgroundImage:
                                    //NetworkImage(teamMember.imageUrl)
                                    AssetImage('assets/images/background.jpg'),
                              ),
                              title: Text(
                                'Kabianga taskMastery development',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              trailing: Text('active',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontSize: Dimensions.fontSize24 / 2)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: Dimensions.height10,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(
                                  Dimensions.radius20 /
                                      2), // Set rounded corner radius
                            ),
                            child: const ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    //NetworkImage(teamMember.imageUrl)
                                    AssetImage('assets/images/background.jpg'),
                              ),
                              title: Text('Flutter app development'),
                              //trailing: Text('active'),
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(height: Dimensions.height20),
                      Row(
                        children: [
                          SizedBox(
                              child: Text(
                            'Work with',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                      SizedBox(height: Dimensions.fontSize20),
                      const WorkWithWidget(),
                      SizedBox(height: Dimensions.height20),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.Settings);
                        },
                        child: Row(children: [
                          const Icon(Icons.settings),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Text(
                            'Settings',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                      SizedBox(height: Dimensions.height20)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
