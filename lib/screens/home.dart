import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF171717),
          body: Stack(
            children: [
              //siyah appbar kısmı hem menu ve search iconu var
              //hem de kategori listviewı var
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection:
                          Axis.horizontal, //listviewi yana doğru kaydırır

                      padding: const EdgeInsets.only(left: 10),
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Messages",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Online",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Groups",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "More",
                            style: TextStyle(color: Colors.grey, fontSize: 25),
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                      ],
                    ),
                  )
                ],
              ),

              //yeşil favorite contacts kısmı
              Positioned(
                top: 170,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                  height: 220,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 204, 98, 183),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Favorite Constacts",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                        height:
                            90, //listview'e height verek için sized boz içerisinde kulandık
                        child: ListView(
                          scrollDirection:
                              Axis.horizontal, //Yana doğru kaydırmaca
                          children: [
                            buildContactAvatar('Alla', 'img1.jpeg'),
                            buildContactAvatar('Judy', 'img2.jpeg'),
                            buildContactAvatar('Mikle', 'img3.jpeg'),
                            buildContactAvatar('Moane', 'img5.jpeg'),
                            buildContactAvatar('Julie', 'img6.jpeg'),
                            buildContactAvatar('Allen', 'img7.jpeg'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //beyaz mesaj kutusu kısmı
              Positioned(
                top: 345,
                left: 0,
                right: 0,
                bottom: 0, //yerden başlamasını sağlıyor
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                    color: Color(0xFFEFFFFC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.only(left: 25),
                    children: [
                      buildConversationRow(
                          'Alla', 'Hello, how are you?', 'img1.jpeg', 2),
                      buildConversationRow(
                          'Mikle', 'Are you serious?', 'img3.jpeg', 1),
                      buildConversationRow(
                          'Moane', 'What do you mean?', 'img5.jpeg', 2),
                      buildConversationRow(
                          'Allen', 'thats it..', 'img7.jpeg', 14),
                      buildConversationRow(
                          'Julie', 'Hahahahah!', 'img6.jpeg', 2),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: SizedBox(
            height: 65,
            width: 65,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 204, 98, 183),
              child: const Icon(
                Icons.edit_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int messagecnt) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),

                const SizedBox(width: 15), //foto ile yazı arasına 15 px mesafe
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),

                    const SizedBox(height: 5), //yazılar arasına 5 px mesafe
                    Text(message,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '16:35',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: const Color.fromARGB(255, 204, 98, 183),
                    child: Text(
                      messagecnt.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
        ),
      ],
    );
  }

  //çember user avatarları aralarına padding ekleyerek oluşturmamızı sağlıyor
  //parametre olarak kişinin adını ve file name alıyor
  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ), // yazıyla resim arasına boşluk bırakmak için
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

//çember user avatarlar için widget classı oluşturduk
class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      child: CircleAvatar(
        radius: 29,
        backgroundColor: Colors.white,
        backgroundImage: Image.asset("lib/assets/images/$filename").image,
      ),
    );
  }
}
