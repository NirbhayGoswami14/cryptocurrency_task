import 'package:cryptocurrency_task/widget/currency_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            SafeArea(
                child: Row(
              children: [
                const Text(
                  "EXCHANGE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      size: 28,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                    )),

                //const ImageIcon(AssetImage("assets/icons/noti.png"),size: 25,),
                // SizedBox(width: 10,),
                //const ImageIcon(AssetImage("assets/icons/setting.png"),size: 25,),
              ],
            )),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: [
                  SizedBox(
                    width: 270,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Cryptocurrency',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade600,
                          size: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                                color: Colors.grey.shade100,
                                style: BorderStyle.none)),
                        contentPadding: const EdgeInsets.all(8),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(
                              color: Colors.grey.shade100,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.8), width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list),
                      label: const Text(
                        'Filter',
                      ),
                      style: TextButton.styleFrom(primary: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Cryptocurrency",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "NFT",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none),
              elevation: 0,
              color: Colors.lightGreen.shade50,
              child: Container(
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25, left: 25),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/bitcoin_icon.png",
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'BTC',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'Bitcoin',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.only(top: 25,right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text("\$55,000 USD",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '+2.5%',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,),textAlign:TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(children: [
                      Expanded(
                        child: Image.asset(
                          "assets/icons/border_line.png",
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/icons/banner_bottom.png",
                          fit: BoxFit.cover,
                          width: 350,
                        ),
                      ),
                    ],),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Top Cryptocurrencies",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ],
            ),
            Expanded(child:  ListView.builder(itemBuilder: (context, index) => const CurrencyItem(),itemCount: 10) ),

          ],
        ),
      ),
    );
  }
}
