
import 'dart:ui';
import 'file.dart';
import 'package:flutter/material.dart';
import 'image_class.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<PicsArt> pics = [
    PicsArt(
      'ram',
      'https://th.bing.com/th/id/OIP.dsetRELDs-zDSmYIQcnHywHaJQ?rs=1&pid=ImgDetMain',
    ),
    PicsArt(
      'shyam',
      'https://i.pinimg.com/originals/7d/2b/80/7d2b80bb1c4a0e0faa2ed1170171e36f.jpg',
    ),
    PicsArt(
      'Modi',
      'https://th.bing.com/th/id/OIP.PT1WO-SwopebduBu_LIlAgHaJg?rs=1&pid=ImgDetMain',
    ),
    PicsArt(
      'JP dalal',
      'https://th.bing.com/th/id/OIP.vYgvlytM8VvOG9QH2ISWlwHaHa?rs=1&pid=ImgDetMain',
    ),
    PicsArt(
      'Nayab saini',
      'https://th.bing.com/th/id/OIP.F7uW5BUX4wbtanjmR_pwKAHaEL?rs=1&pid=ImgDetMain',
    ),
    PicsArt(
      'Amit shah',
      'https://th.bing.com/th/id/OIP.l_GPtuXQFYkncoWSA9sGFQHaEK?rs=1&pid=ImgDetMain',
    )
  ];
  final List<Any> pic = [
    Any('https://th.bing.com/th/id/OIP.l_GPtuXQFYkncoWSA9sGFQHaEK?rs=1&pid=ImgDetMain')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          actions: [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.messenger_outline_sharp),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130,
                child: Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pics.length,
                      itemBuilder: (context, int index) {
                        PicsArt value = pics[index];
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(8),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                image: value.imgurl != null
                                    ? DecorationImage(
                                    image: NetworkImage(value.imgurl!),
                                    fit: BoxFit.cover)
                                    : null,
                                border: Border.all(width: 3, color: Colors.red),
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Text(value.name),
                          ],
                        );
                      }),
                ),
              ),
              Divider(
                height: 5,
                color: Colors.black12,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8.0,
                ), // Adjust padding here
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.pinkAccent),
                  ),
                  child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.R62ga1oQpdu5enm-B-ppDQHaHa?rs=1&pid=ImgDetMain",
                        fit: BoxFit.cover,
                      )),
                ),
                title: Text(
                  "narender_modi",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(Icons.more_vert, size: 28),
              ),
              Image.network(
                "https://th.bing.com/th/id/OIP.6d9zhY5Ay0cBQfMSph0BDgHaFj?rs=1&pid=ImgDetMain",


                cacheWidth: 1000,
                cacheHeight: 600,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 4),
                leading: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.red,
                ),
                title: Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 30,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      Icons.telegram_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1.5M likes",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text("@narender_modi ipsum dolor sit amet",
                        style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
                  ],
                ),
                subtitle: Text(
                  "# orem  #ipsum  #sit  #amet  #consectetur",
                  style: TextStyle(color: Colors.cyan[100]),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8.0,
                ), // Adjust padding here
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.pinkAccent),
                  ),
                  child: ClipOval(
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.j4zy77nRhF8Hgb9RO_mlhQHaEK?rs=1&pid=ImgDetMain",
                        fit: BoxFit.cover,
                      )),
                ),
                title: Text(
                  "nayab_saini",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Icon(Icons.more_vert, size: 28),
              ),
              Image.network(
                "https://th.bing.com/th/id/OIP.l1GfDcUYkq-BpkEqQRk15AHaE8?rs=1&pid=ImgDetMain",
                cacheWidth: 1000,
                cacheHeight: 600,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 4),
                leading: Icon(
                  Icons.favorite_border_rounded,
                  size: 30,
                ),
                title: Row(
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 30,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      Icons.telegram_sharp,
                      size: 30,
                      color: Colors.black54,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
              ),
              ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    "10 million likes",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  Text("@Trhsj Loerm ipsum dolor sit amet",
                      style:


                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
            ],
          ),
          subtitle: Text(
            "# orem  #ipsum  #sit  #amet  #consectetur",
            style: TextStyle(color: Colors.cyan[100]),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8.0,
          ), // Adjust padding here
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.pinkAccent),
            ),
            child: ClipOval(
                child: Image.network(
                  "https://lokmarg.com/wp-content/uploads/2020/12/Haryana-Minister-JP-Dalal.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          title: Text(
            "jpdalal",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),subtitle: Text('loharu halka'),
          trailing: Icon(Icons.more_vert, size: 28),
        ),
        Image.network(
          "https://files.prokerala.com/news/photos/imgs/1024/jp-dalal-1570001.jpg",
          cacheWidth: 1000,
          cacheHeight: 600,
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 4),
          leading: Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          ),
          title: Row(
            children: [
              Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
              SizedBox(
                width: 13,
              ),
              Icon(
                Icons.telegram_sharp,
                size: 30,
                color: Colors.black54,
              ),
            ],
          ),
          trailing: Icon(
            Icons.bookmark_border,
            size: 30,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1.3 M likes",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text("modi_sarkar Loerm ipsum dolor sit amet",
                  style:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
            ],
          ),
          subtitle: Text(
            "# orem  #ipsum  #sit  #amet  #consectetur",
            style: TextStyle(color: Colors.cyan[100]),
          ),
        ),
        BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home,
                size: 33,
              ),
              Icon(Icons.add_box_outlined, size: 33),
              Column(
                children: [

                ],
              ),
              Icon(Icons.video_camera_front_outlined, size: 33),
              Icon(
                Icons.search_rounded,
                size: 30,
              ),
              Icon(Icons.account_circle, size: 33),
            ],
          ),
        ),
        ],
      ),
    ),
    ));
  }
}
