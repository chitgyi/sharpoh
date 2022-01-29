import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:shar_poh/feature/app/pages/post_detail_page.dart';
import 'package:shar_poh/feature/app/widgets/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const LideSideBar(),
          Expanded(
            child: SizedBox(
              height: ResponsiveWrapper.of(context).scaledHeight,
              child: IndexedStack(
                children: const [
                  PostListView(),
                  PostListView(),
                ],
              ),
            ),
          ),
          const RightSideBar(),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: ResponsiveWrapper.of(context).isMobile,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class RightSideBar extends StatelessWidget {
  const RightSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !ResponsiveWrapper.of(context).isMobile,
      child: Container(
        width: ResponsiveWrapper.of(context).scaledWidth * 0.3,
      ),
    );
  }
}

class LideSideBar extends StatelessWidget {
  const LideSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !ResponsiveWrapper.of(context).isMobile,
      child: Container(
        width: ResponsiveWrapper.of(context).scaledWidth * 0.25,
        height: ResponsiveWrapper.of(context).scaledHeight,
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              height: ResponsiveWrapper.of(context).scaledHeight * 0.3,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: const FlutterLogo(
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 14.0),
            ListTile(
              leading: const Icon(Icons.maps_home_work),
              title: const Text('Posts'),
              onTap: () {},
              selected: true,
            ),
            ListTile(
              leading: const Icon(Icons.maps_home_work),
              title: const Text('Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.maps_home_work),
              title: const Text('Favourite'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PostListView extends StatelessWidget {
  const PostListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      padding: const EdgeInsets.all(10),
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: PostItem(
          onTapAccept: () {},
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const PostDetailPage(),
            ),
          ),
        ),
      ),
      itemCount: 10,
    );
  }
}
