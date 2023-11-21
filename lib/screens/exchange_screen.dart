import 'package:cryptocurrency_task/api_service/api_service.dart';
import 'package:cryptocurrency_task/model/Cryptomodel.dart';
import 'package:cryptocurrency_task/model/Data.dart';
import 'package:cryptocurrency_task/widget/currency_item_place_holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../widget/currency_item.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  dynamic _response;
  var index = 0;
  bool isLoading=true;
  Cryptomodel? cryptomodel;
  List<Data> cryptoData=[];
  List<Data> tempCryptoData=[];
  @override
  void initState() {
    callApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            SafeArea(
                child: Row(
                  children: [
                    const Text(
                      "EXCHANGE",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight
                          .bold),
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
                      onChanged: (value) {
                        filterSearchList(value.toLowerCase());
                      },
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
                      onPressed: () {
                        showFilterMenu();
                      },
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
              color: Colors.lightGreen.shade100,
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
                          margin: const EdgeInsets.only(top: 25, right: 15),
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
                                  color: Colors.green,),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(children: [
                      Image.asset(
                        "assets/icons/border_line.png",
                        width: 350,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/icons/banner_bottom.png",
                        fit: BoxFit.cover,
                        width: 350,
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
            const SizedBox(height:5,),
            Expanded(
            child:isLoading?Shimmer.fromColors(baseColor: Colors.grey.shade400, highlightColor:Colors.grey.shade100, child:ListView(children:[
              CurrencyItemPlaceHolder(),
              CurrencyItemPlaceHolder(),
              CurrencyItemPlaceHolder(),
              CurrencyItemPlaceHolder(),
              CurrencyItemPlaceHolder(),

            ])) :ListView.builder(
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>  CurrencyItem(cryptoData[index]),
                itemCount: cryptoData.length),
          ),
        ],
        ),
      );

  }
  Future callApi() async
  {
    var response=await ApiService().getCryptocurrency();
    setState(() {
      _response=response;
      isLoading=false;
      if(_response!=null)
        {

          print('--');
            cryptomodel=Cryptomodel.fromJson(_response);
            if(cryptomodel!.status!.errorCode==0)
              {
                  tempCryptoData=cryptomodel!.data!;
                  cryptoData=tempCryptoData;
              }
        }
    });

  }

  void filterSearchList(String query)
  {
    setState(() {
      print("okkkkkkk");
      cryptoData=tempCryptoData.where((element) =>element.name!.toLowerCase().contains(query)).toList();
    });

  }

  void showFilterMenu() async {
    var menuName = ['Low Price','High Price','Low Volume','High Volume'];
    RenderBox box = context.findRenderObject() as RenderBox;
    Offset offset = box.localToGlobal(Offset.zero);
    showMenu<String>(context: context,
        position:RelativeRect.fromLTRB(
            offset.dx+50, offset.dx+110, offset.dx, offset.dx),
        items: menuName.map((e) => PopupMenuItem<String>(value: e,child: Text(e))).toList()).then((String? value) {
      switch(value)
          {
        case 'Low Price':
          setState(() {
            cryptoData.sort((a, b) => a.quote!.usd!.price.compareTo(b.quote!.usd!.price),);
          });
          break;
        case 'High Price':
          setState(() {
            cryptoData.sort((a, b) => b.quote!.usd!.price.compareTo(a.quote!.usd!.price),);
          });
          break;
        case 'Low Volume':
          setState(() {
            cryptoData.sort((a, b) => a.quote!.usd!.volume24h.compareTo(b.quote!.usd!.volume24h),);
          });
          break;
        case 'High Volume':
          setState(() {
            cryptoData.sort((a, b) => b.quote!.usd!.volume24h.compareTo(a.quote!.usd!.volume24h),);
          });
          break;
      }


    }  );
  }

}