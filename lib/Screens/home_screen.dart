import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> tagsText = [
    'All',
    'Offer',
    'Love',
    'Education',
    'Career',
    'Marriage',
    'Health',
    'Wealth',
    'Finance',
    'Business',
    'Legal',
    'Remedies',
    'Parents'
  ];
  List<IconData> icons = [
    Icons.menu,
    Icons.discount,
    Icons.favorite,
    Icons.school,
    Icons.business_center,
    Icons.access_alarms_rounded,
    Icons.local_hospital,
    Icons.attach_money,
    Icons.diamond,
    Icons.add_business,
    Icons.fax_sharp,
    Icons.sports_gymnastics,
    Icons.family_restroom,
  ];
  List<Color> iconColors = [
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.greenAccent,
    Colors.orange,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.deepPurpleAccent,
  ];

  List<String> networkImageURL = [
    "https://dhwaniastro.com/public/cms-images/user-images/1980737471_Photos.jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1161422638_pixelcut-export%20(1)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1942704774_WhatsApp%20Image%202023-10-14%20at%2012.58.42%20(4)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/374933931_897997768_pixelcut-export%20(3)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/848949596_WhatsApp%20Image%202024-01-10%20at%2017.24.44%20(2).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1950110327_1177677552_pixelcut-export%20(6)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1380967981_Picture.jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/2069733096_WhatsApp%20Image%202023-11-08%20at%2016.11.54%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1015543231_pixelcut-export%20(6)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/80038808_PHOTO3.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRB69RXZ8r45_2JzCd9G2rqBngFvDe-NfCWyDaB_FK5Q&s",
    "https://dhwaniastro.democlicks.com/public/cms-images/user-images/870891474_pixelcut-export%20(5)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1210173434_546663313_pixelcut-export%20(11)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1472108365_878386502_pixelcut-export%20(1)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/608780646_WhatsApp%20Image%202024-01-06%20at%2018.15.09%20(1).jpg",
    "https://www.astrocamp.com/images/astrologer/2x/am-2301.jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/1215761815_pixelcut-export%20(3)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/972434749_Anand%20(1)%20(1).jpg",
    "https://dhwaniastro.com/public/cms-images/user-images/286011090_pixelcut-export%20(1).jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff9e82c),
        title: const Text(
          'Chat with Astrologer',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xfff9e82c),
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.currency_rupee,
                    size: 13,
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Icon(Icons.search),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.filter_alt),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/dhwani_Astro_launcher.png',
                  height: 50,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text('User'), Icon(Icons.edit)],
                    ),
                    Text("luckykandpal091@gmail.com")
                  ],
                )
              ],
            )
            // const DrawerHeader(
            //   child: UserAccountsDrawerHeader(
            //     decoration: BoxDecoration(color: Colors.green),
            //     accountName: Text(
            //       "Abhishek Mishra",
            //       style: TextStyle(fontSize: 18),
            //     ),
            //     accountEmail: Text("abhishekm977@gmail.com"),
            //     currentAccountPictureSize: Size.square(50),
            //     currentAccountPicture: CircleAvatar(
            //       backgroundColor: Color.fromARGB(255, 165, 255, 137),
            //       child: Text(
            //         "A",
            //         style: TextStyle(fontSize: 30.0, color: Colors.blue),
            //       ), //Text
            //     ), //circleAvatar
            //   ), //UserAccountDrawerHeader
            // ), //DrawerHeader
            ,
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Book a Pooja '),
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Customer Support Chat '),
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Wallet Transactions '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Order History '),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('AstroRemedy'),
            ),
          ],
        ),
      ), //Drawer
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(tagsText.length, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, right: 4.0, left: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 0.5, color: Colors.yellow.withOpacity(0.6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            icons[index],
                            size: 20,
                            color: iconColors[index],
                          ),
                          SizedBox(width: 8),
                          Text(
                            tagsText[index],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: CarouselSlider.builder(
          //     options: CarouselOptions(autoPlay: true),
          //     itemCount: 4,
          //     itemBuilder:
          //         (BuildContext context, int itemIndex, int pageViewIndex) =>
          //             Container(
          //       child: Image.asset(
          //         'assets/images/design 1.png',
          //       ),
          //     ),
          //   ),
          // ),

          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView.builder(
                itemCount: networkImageURL.length -
                    1, // Replace with your actual item count
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xfff9e82c), width: 0.5),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white38,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(70.0)),
                                      border: Border.all(
                                        color: Color(0xfff9e82c),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.network(
                                        networkImageURL[
                                            index], // Assuming this is your image URL
                                        fit: BoxFit.cover,
                                        height: 90,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (starIndex) => Icon(
                                        Icons.star,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Text('905 Orders'),
                                ],
                              ),
                              const SizedBox(width: 25),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      'Chitraank',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 5),
                                    Text('Vedic'),
                                    SizedBox(height: 5),
                                    Text('Hindi, Punjabi'),
                                    SizedBox(height: 5),
                                    Text('Exp: 10 Years'),
                                    SizedBox(height: 5),
                                    Text('Free'),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/verify_icon.png',
                                    height: 25,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff00BF15)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 4),
                                      child: Text(
                                        'Free Chat',
                                        style: TextStyle(
                                            color: Color(0xff00BF15),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ) // You can add your ButtonBar here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 20), // Add spacing between each item
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Implement action for home icon
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    Text('Home'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Implement action for message icon
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.message),
                    Text('Chat'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Implement action for video call icon
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.video_call),
                    Text('Live'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Implement action for call icon
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call),
                    Text('Call'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Implement action for remedies icon
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.abc_outlined),
                    Text('Remedies'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
