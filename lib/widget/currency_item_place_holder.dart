 //CurrencyItemPlaceHolder
 import 'dart:ffi';

import 'package:cryptocurrency_task/model/Data.dart';
 import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';

 class CurrencyItemPlaceHolder extends StatefulWidget
 {
   CurrencyItemPlaceHolder( {super.key});

   @override
   State<CurrencyItemPlaceHolder> createState()=>_CurrencyItemPlaceHolderState();

 }
 class _CurrencyItemPlaceHolderState extends State<CurrencyItemPlaceHolder>
 {
   @override
   Widget build(BuildContext context) {
     return Row(
       children: [
         Container(
           margin: const EdgeInsets.only(top:10,),
           child: Row(
             children: [
               Container(width: 50,height: 50,color:Colors.white,),

            SizedBox(width: 20,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                         height: 30,
                         width: 100,
                        color: Colors.white,
                       ),
                   SizedBox(height: 5,),
                   Container(
                     height: 30,
                     width: 300,
                     color: Colors.white,
                   ),
                 ],
               ),
             ],
           ),
         ),

       ],
     );
   }

 }