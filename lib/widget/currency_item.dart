import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatefulWidget
{
  const CurrencyItem({super.key});

  @override
  State<CurrencyItem> createState()=>_CurrencyItemState();

}
class _CurrencyItemState extends State<CurrencyItem>
{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top:10,),
          child: Row(
            children: [
              Stack(children: [

              ],),
              Image.asset('assets/icons/eth_icon.png',width: 60,height: 60,),
              const SizedBox(
                width: 10,
              ),
              Stack(children: [

              ],),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(children: [
                    const Text(
                      'ETH',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 20,),
                    Image.asset('assets/icons/red.png')
                  ],),

                  const Text(
                    'Ethereum',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ],
              ),


            ],
          ),

        ),
        Spacer(),
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
                '-2.5%',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,),textAlign:TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }

}