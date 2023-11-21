import 'dart:core';
import 'dart:ffi';

import 'package:cryptocurrency_task/model/Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatefulWidget
{
  CurrencyItem(this.cryptoData, {super.key});
  Data cryptoData;
  @override
  State<CurrencyItem> createState()=>_CurrencyItemState();

}
class _CurrencyItemState extends State<CurrencyItem>
{
  String percentage="",image="";
  MaterialColor? color;

  @override
  void initState() {
    if(double.parse(widget.cryptoData.quote!.usd!.percentChange1h.toString())<0)
      {
        percentage="${double.parse(widget.cryptoData.quote!.usd!.percentChange1h.toString()).toStringAsFixed(2)}%";
        image="assets/icons/red.png";
        color=Colors.red;
      }
    else
      {
        percentage="+${double.parse(widget.cryptoData.quote!.usd!.percentChange1h.toString()).toStringAsFixed(2)}%";
        image="assets/icons/green.png";
        color=Colors.green;
      }
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top:10,),
          child: Row(
            children: [
              Image.network("https://s2.coinmarketcap.com/static/img/coins/64x64/${widget.cryptoData.id}.png",width:50,height: 50,),
              //Image.asset('assets/icons/eth_icon.png',width: 60,height: 60,),
              const SizedBox(
                width: 10,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                    children: [
                    Text(
                      widget.cryptoData.symbol!,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 20,),
                    Image.asset(image)
                  ],),

                   Text(
                    widget.cryptoData.name!,
                    style: const TextStyle(
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
            children:  [
              Text("\$${double.parse(widget.cryptoData.quote!.usd!.price!.toString()).toStringAsFixed(2)} USD",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                percentage,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: color,),textAlign:TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }

}