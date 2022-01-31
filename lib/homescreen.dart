import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            backgroundColor: Colors.green[800],
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              )
            ]),
          ),
          body: TabBarView(children: [
            const Center(child: Text('Camera Not Working')),
            ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Person $index'),
                  subtitle: const Text('Hello'),
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/image.jpg'),
                  ),
                  trailing: Text('$index:00'),
                );
              },
              separatorBuilder: (ctx, index) {
                return const Divider();
              },
              itemCount: 24,
            ),
            const Center(child: Text('No Status Available')),
            const Center(child: Text('No Call History Available'))
          ]),
        ));
  }
}
