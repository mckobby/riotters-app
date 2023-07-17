import 'package:flutter/material.dart';
import 'package:riotters/search_page.dart';
import 'package:share_plus/share_plus.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

int selectedIndex = 0;

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return Column(
              children: [
                Container(
                  color: Colors.grey.shade500,
                  height: height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Riotters',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Team folder',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(3),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const Search(),
                                      ),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(3),
                                  onPressed: () {
                                    shareApp();
                                  },
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: height * 0.105,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/me.jpg'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Mike',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage:
                                const AssetImage('images/bag.jpeg'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Yao',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/bo1.png'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Jojo',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/ed.png'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Kumah',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage:
                                const AssetImage('images/bag.jpeg'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Edith',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/it.png'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'King',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/mys.png'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Mymi',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/or.png'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Bella',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.035,
                            backgroundImage: const AssetImage('images/sn.jpeg'),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          const Text(
                            'Sandy',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Divider(
                  height: height * 0.01,
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Files',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute<void>(
                              //     builder: (BuildContext context) =>
                              //         const MyPage(),
                              //   ),
                              // );
                            },
                            child: const Text(
                              'Create new',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Icon(
                                      Icons.folder,
                                      color: Colors.blue[200],
                                    ),
                                    Positioned(
                                      left: 15,
                                      bottom: 14,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 4,
                                              spreadRadius: 3,
                                            )
                                          ],
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 3,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Assets',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'BrandLook',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Design',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'MoodBoards',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'WireFrames',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Other',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'GoodLife',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Holiday',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Attraction',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Accommodation',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                    ],
                  ),
                )
              ],
            );
          } else {
            return Column(
              children: [
                Container(
                  color: Colors.grey.shade500,
                  height: height * 0.3,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Riotters',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Team folder',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(3),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const Search(),
                                      ),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(3),
                                  onPressed: () {
                                    shareApp();
                                  },
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  height: height * 0.01,
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                    children: [
                      SizedBox(
                        width: width,
                        height: height * 0.23,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/me.jpg'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Mike',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/bag.jpeg'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Yao',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/bo1.png'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Jojo',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/ed.png'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Kumah',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/bag.jpeg'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Edith',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/it.png'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'King',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/mys.png'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Mymi',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage: const AssetImage(
                                    'images/or.png',
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Bella',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.08,
                                  backgroundImage:
                                      const AssetImage('images/sn.jpeg'),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                const Text(
                                  'Sandy',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Files',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute<void>(
                              //     builder: (BuildContext context) =>
                              //         const MyPage(),
                              //   ),
                              // );
                            },
                            child: const Text(
                              'Create new',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Icon(
                                      Icons.folder,
                                      color: Colors.blue[200],
                                    ),
                                    Positioned(
                                      left: 15,
                                      bottom: 14,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 4,
                                              spreadRadius: 3,
                                            )
                                          ],
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 3,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Assets',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'BrandLook',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Design',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'MoodBoards',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'WireFrames',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Other',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'GoodLife',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Holiday',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Attraction',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: width,
                        height: height * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.blue[200],
                                ),
                                SizedBox(
                                  width: width * 0.025,
                                ),
                                const Text(
                                  'Accommodation',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_vert,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      )
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 4, spreadRadius: 6)
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Time',
            icon: Icon(Icons.access_time),
          ),
          BottomNavigationBarItem(
            label: 'Box',
            icon: Icon(Icons.add_box),
          )
        ],
      ),
    );
  }

  void shareApp() {
    String message =
        'Check out Riotters, the new mobile app that keeps you entertained. Click here: https://www.linkedin.com/in/michael-kissi-013b4118a/';

    Share.share(message);
  }
}
