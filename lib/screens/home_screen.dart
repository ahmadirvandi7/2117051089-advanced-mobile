import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   var fitur = [
    "Request",
    "Send",
    "Bills",
    "Pay",
    "Withdraw",
    "Games",
    "Split",
    "Mobile",
  ];

  var fiturIcons = [
    Icons.call_received,
    Icons.call_made,
    Icons.receipt_long,
    Icons.add,
    Icons.payments,
    Icons.videogame_asset,
    Icons.splitscreen,
    Icons.phone_android,
  ];
  var news = [
    'Get your greens for less',
    'Level up your gaming experience',
  ];
  var descriptionNews = [
    'Enjoy exclusive discounts at Ranch Market, your go-to veggie supermarket',
    'Get exciting cashback offers on topping up your game balance',
  ];
  var imagesNews = [
    'assets/images/sayur.png',
    'assets/images/gaming.png',
  ];


  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/fotopp.jpeg'),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hai, ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffA4A8AE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Shanon',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 166,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Platinum Member',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Member Since 08/23',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Rp.4.000.000',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                itemCount: fitur.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Flexible(
                            child: Icon(
                              fiturIcons[index],
                              color: Colors.black,
                              size: 32,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                          child: Text(
                            fitur[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      'Promo',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 245),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: news.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imagesNews[index]),
                      ),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  news[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  descriptionNews[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}