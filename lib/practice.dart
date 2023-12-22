import 'package:flutter/material.dart';

class Practicepage extends StatefulWidget {
  const Practicepage({super.key});

  @override
  State<Practicepage> createState() => _PracticepageState();
}

class _PracticepageState extends State<Practicepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        PopupMenuItem(
                          value: '2',
                          child: Text('Settings'),
                        ),
                        PopupMenuItem(
                          value: '3',
                          child: Text('Logout'),
                        ),
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
            backgroundColor: Colors.teal,
            title: Text("Flutter demo"),
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('chats')),
              Tab(child: Text("status")),
              Tab(child: Text('Calls')),
            ]),
          ),
          body: TabBarView(children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    ),
                    title: Text('himu'),
                    subtitle: Text('How are you'),
                    trailing: Text("8.00pm"),
                  );
                }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                      ),
                    ),
                    title: Text('himu'),
                    subtitle: Text('32 min ago'),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    ),
                    title: Text('himu'),
                    subtitle: Text(
                      index / 2 == 0
                          ? 'you missed the audio  call'
                          : 'you miss the video call',
                      style: TextStyle(color: Colors.red),
                    ),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ])),
    );
  }
}
