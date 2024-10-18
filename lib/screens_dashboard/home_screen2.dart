import 'package:flutter/material.dart';
import 'package:title/screens_dashboard/person.dart';

import '../message_class.dart';
import 'detail_screen2.dart';


class HomeScreen2 extends StatelessWidget {
  HomeScreen2({super.key});

  final List<Person> personlist = [
    Person(
        name: 'Sidhu Moose Wala',mobileNo: '9813087575   India',
        imgurl:
            'https://th.bing.com/th/id/OIP.Ak0U-zbcsy8KsJwiFRhtnQHaH7?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u jkhdihsdihgsdkfhndvndm edkgfkelfhe f',
            otherperson: 'Ramesh',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'Sumesh',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'Ramesh',
            time: '6:55',
            isSend: true,
          ),
          Message(
            msg: 'ok do you take coffie',
            otherperson: 'Manish',
            time: '8:02',
            isSend: false,
          ),
          Message(
            msg: 'yes, i take coffie',
            otherperson: 'Arjun',
            time: '4:06',
            isSend: true,
          ),
          Message(
            msg: ' i take cold coffie and u',
            otherperson: 'Karan',
            time: '9:44',
            isSend: true,
          ),
          Message(
            msg: 'no i don take tea ',
            otherperson: 'Karan',
            time: '9:44',
            isSend: false,
          ),
          Message(
            msg: 'ok ok ',
            otherperson: 'Karan',
            time: '9:44',
            isSend: true,
          ),
          Message(
            msg: ' do u play pubg',
            otherperson: 'Karan',
            time: '9:44',
            isSend: true,
          ),
          Message(
            msg: 'yes i play pubg',
            otherperson: 'Karan',
            time: '9:44',
            isSend: false,
          ),
          Message(
            msg: ' i am also pubg',
            otherperson: 'Karan',
            time: '9:44',
            isSend: true,
            image: 'https://wallpaperaccess.com/full/9411716.jpg'
          ),
          Message(

            msg: 'can we play together',
            otherperson: 'Karan',
            time: '9:44',
            isSend: false,
          ),
          Message(
            msg: 'yes,off course',
            otherperson: 'Karan',
            time: '9:44',
            isSend: true,
          ),
        ]),

    Person(
        name: 'Ankit',mobileNo: '9813087575   India',
        imgurl:
            'https://th.bing.com/th/id/OIP.R84ThTNtEOWTLN7yTzcAmwHaHa?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Ajay',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.gROnwK3CnE_hoaeohC4AGwHaKL?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Aman',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.YuDSZy4KPrf3i_x3Bc0uogHaEp?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Soniya',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.Zv-EjeMsLShPCNCPX0IIiQHaLG?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Karina',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/R.9aa6f2a5d000db3405eca6f8e10a48ce?rik=ZQ%2bn1PIF4lAoYg&riu=http%3a%2f%2fwallpapercave.com%2fwp%2fwc1746645.jpg&ehk=1uApIreKI'
            'c6m3SRUTwsvgeWYKYKFzOchm23yM6EaMXU%3d&risl=&pid=ImgRaw&r=0',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Deepika',mobileNo: '9813087575   India',
        imgurl:
        'https://i2.cinestaan.com/image-bank/1500-1500/104001-105000/104052.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Pankaj',mobileNo: '9813087575   India',
        imgurl:
        'https://wallpapercave.com/wp/wp5739576.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Suresh',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.v0sX5myF6V6JURFaGo6d1gHaL0?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Akshay kumar',mobileNo: '9813087575   India',
        imgurl:
        'https://wallpapercave.com/wp/wp7956306.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Sunil',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/R.99370bee5e6fa932336f23f81acbc91e?rik=hHOHNXIzvyotXQ&riu=http%3a%2f%2fwww.veethi.com%2fimages%2fpeople%2ffullsize%2fSunil_Shetty_20180309080309.jpeg&ehk'
            '=EmNkeZuWxRoXaxtylqyaQvwF%2fzKxEBYOs0WFhj386hI%3d&risl=&pid=ImgRaw&r=0',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Jitender',mobileNo: '9813087575   India',
        imgurl:
        'https://www.surfindia.com/celebrities/images/celebrities/jitender.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Mandeep',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.r1ydGqZPOd0by4OAUsbH2QHaLH?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Pranjal',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.gIFktoxhWbombJ9BbtTJegHaJQ?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Manisha',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.vH_ONFcoSfSBFdvZ9akWsQHaLL?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Pawan',mobileNo: '9813087575   India',
        imgurl:
        'https://wallpapercave.com/wp/wp3995793.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Krishan',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.MKpMAmNstjANxJF8xSXcZAHaKX?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Karan',mobileNo: '9813087575   India',
        imgurl:
        'https://wallpaperaccess.com/full/3488531.jpg',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Navye',mobileNo: '9813087575   India',
        imgurl:
        'https://th.bing.com/th/id/OIP.HBWDIvRC-VHmFtoryOinqQHaE8?rs=1&pid=ImgDetMain',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),
    Person(
        name: 'Sandeep',mobileNo: '9813087575   India',
        imgurl:
        'https://images.unsplash.com/photo-1726931598787-00b60840177c?q=80&w=1770&auto=format&fit='
            'crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        messages: [
          Message(
            msg: 'hello how are u',
            otherperson: 'rahul',
            time: '6:30',
            isSend: true,
          ),
          Message(
            msg: ' i am fine and u',
            otherperson: 'pradeep',
            time: '5:30',
            isSend: false,
          ),
          Message(
            msg: 'i am also fine ',
            otherperson: 'ajay',
            time: '6:55',
            isSend: true,
          ),
        ]),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat Screen'),
        ),
        body: ListView.builder(
            itemCount: personlist.length,
            itemBuilder: (context, int index) {
              Person person = personlist[index];
              return ListTile(

                leading: ClipOval(
                    child: Image.network(
                  person.imgurl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                )
                ),  title: Text(person.name),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen2(
                      person: person,
                    );
                  }));
                },
              );
            }
            ),
    );
  }
}
