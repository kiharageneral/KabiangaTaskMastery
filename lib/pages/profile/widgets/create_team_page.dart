import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';
import 'package:kabianga_task_mastery/pages/profile/widgets/radio_list_tile_widget.dart';
import 'package:kabianga_task_mastery/pages/task/task_pages/add_team_member.dart';


class CreateTeamPage extends StatelessWidget {
  const CreateTeamPage({Key? key}) : super(key: key);

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
          title: 'Connections',
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F4FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 100, top: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage('assets/img/upload.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 100, top: 10),
                      child: Row(
                        children: const [
                          Text(
                            'Upload logo file',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 80, top: 10),
                      child: Row(
                        children: const [
                          Text('Your log will be public always'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text('Team Name'),
                      ],
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text('Member'),
                      ],
                    ),
                    TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(fontSize: 20.0),
                        hintText: 'Select Member',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        suffixIcon: IconButton(
                          onPressed: () {
                            Get.to(() => const AddTeamMember());
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text('Type'),
                      ],
                    ),
                    const RadioListTileWidget(),
                    Expanded(
                      child: Stack(fit: StackFit.expand, children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const  Color(0xFF5A55CA),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12), // <-- Radius
                                ),
                              ),
                              child: const Text('Done'),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
