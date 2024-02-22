import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/widgets/custom_app_bar.dart';

class ConnectionsPage extends StatelessWidget {
  const ConnectionsPage({Key? key}) : super(key: key);

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
                                  fillColor: Colors.white,
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
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0)), // Set rounded corner radius
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        color: Colors.black,
                                        offset: Offset(1, 3))
                                  ] // Make rounded corner of border
                                  ),
                              child: const ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      //NetworkImage(teamMember.imageUrl)
                                      AssetImage('assets/images/background.jpg'),
                                ),
                                title: Text('connection.name'),
                                subtitle: Text('connection.profession'),
                                trailing: Icon(Icons.check),
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
                            backgroundColor: const  Color(0xFF5A55CA),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // <-- Radius
                            ),
                          ),
                          child: const Text('Done'),
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
