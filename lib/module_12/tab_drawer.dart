import 'package:flutter/material.dart';

class Tab_Drawer extends StatelessWidget {
  const Tab_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //splashBorderRadius: BorderRadius.circular(100),
            // dividerColor: Colors.white,
            labelColor: Colors.cyanAccent,

            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 18),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.green,
            ),
            indicatorColor: Colors.orange,
            tabs: [
              SizedBox(
                width: 100,
                child: Tab(text: 'Home', icon: Icon(Icons.home)),
              ),
              SizedBox(
                width: 100,
                child: Tab(text: 'Favorite', icon: Icon(Icons.favorite)),
              ),
              SizedBox(
                width: 100,

                child: Tab(text: 'Setting', icon: Icon(Icons.settings)),
              ),
            ],
          ),
          backgroundColor: Colors.teal,
          title: Text('Tab Bar And Drawer View'),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                      radius: 50,
                    ),
                    SizedBox(height: 10),
                    Text('Sojeb Chandra'),
                  ],
                ),
              ),
              ListTile(title: Text('Home'), leading: Icon(Icons.home)),
              ListTile(title: Text('Favorite'), leading: Icon(Icons.favorite)),
              ListTile(title: Text('Setting'), leading: Icon(Icons.settings)),
              ListTile(title: Text('Logout'), leading: Icon(Icons.logout)),
            ],
          ),
          elevation: 20,
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                      radius: 50,
                    ),
                    SizedBox(height: 10),
                    Text('Sojeb Chandra'),
                  ],
                ),
              ),
              ListTile(title: Text('Home'), leading: Icon(Icons.home)),
              ListTile(title: Text('Favorite'), leading: Icon(Icons.favorite)),
              ListTile(title: Text('Setting'), leading: Icon(Icons.settings)),
              ListTile(title: Text('Logout'), leading: Icon(Icons.logout)),
            ],
          ),
          elevation: 20,
        ),
      ),
    );
  }
}
