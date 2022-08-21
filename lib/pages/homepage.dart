import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/pages/chatview.dart';
import 'package:telegram_clone_ui/pages/filesview.dart';
import 'package:telegram_clone_ui/widget/drawerWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: const DrawerWidget(),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(Icons.search),
                      ),
                    ],
                    title: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Telegram',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    centerTitle: false,
                    floating: true,
                    pinned: true,
                    snap: true,
                    forceElevated: innerBoxIsScrolled,
                    bottom: const TabBar(
                      tabs: [
                        Tab(
                          text: 'All Chats ',
                        ),
                        Tab(
                          text: 'Files',
                        )
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: const TabBarView(
              children: [
                Chatview(),
                Filesview(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 2, 173, 253),
            onPressed: (() {}),
            child: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ));
  }
}
