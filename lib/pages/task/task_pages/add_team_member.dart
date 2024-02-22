import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';
import 'package:kabianga_task_mastery/common/widgets/widgets.dart';


class AddTeamMember extends StatelessWidget {
  const AddTeamMember({Key? key}) : super(key: key);

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
          title: 'Add Team Member',
        ),
        body: Column(
          children: [
            Expanded(
              child: CustomContainer(
                height: MediaQuery.of(context).size.height,
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  fillColor:
                                      Theme.of(context).colorScheme.tertiary,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    //borderSide: BorderSide.none
                                  ),
                                  hintText: 'Search',
                                  hintStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  suffixIcon: Container(
                                    padding: const EdgeInsets.all(15),
                                    width: 18,
                                    child: const Icon(Icons.search),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          //physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.tertiary,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    Dimensions
                                        .width20)), // Set rounded corner radius
                              ),
                              child: ListTile(
                                leading: const CircleAvatar(
                                  backgroundImage:
                                      //NetworkImage(teamMember.imageUrl)
                                      AssetImage('assets/images/background.jpg'),
                                ),
                                title: Text(
                                  'General Kihara',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                                subtitle: Text(
                                  'Software Developer',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                                trailing: const Icon(Icons.check),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: Text(
                            'Done',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
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
