import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget
{
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    var index=0;
    return Card(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
      color: Colors.black.withOpacity(0.9),
      elevation: 2,
      child: Container(
        height: 80,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
        [
          InkWell(
            onTap: (){
              index=0;
            },
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children:  [
              ImageIcon(AssetImage('assets/icons/smile.png'),size: 25,color:index==0?Colors.white:Colors.grey,),
              SizedBox(height: 1,),
              Text('E-Shop',style: TextStyle(color: index==0?Colors.white:Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
            ],),
          ),


          InkWell(
            onTap: (){
              index=2;
            },
            child: Column( mainAxisAlignment: MainAxisAlignment.center,children:  [
              ImageIcon(AssetImage('assets/icons/exchange.png'),size: 30,color:index==2?Colors.white:Colors.grey,),
              Text('Exchange',style: TextStyle(color: index==2?Colors.white:Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
            ],),
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Expanded(child: ImageIcon(AssetImage('assets/icons/earth.png'),size: 40,color: Colors.yellow,)),
          ],),


          InkWell(
            onTap: (){
              index=3;
            },
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              ImageIcon(AssetImage('assets/icons/launch.png'),size: 30,color:index==3?Colors.white:Colors.grey,),
              Text('Launchpads',style: TextStyle(color: index==3?Colors.white:Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
            ],),
          ),

          InkWell(
            onTap: (){
              index==4;
            },
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children:  [
              ImageIcon(AssetImage('assets/icons/wallet.png'),size: 30,color:index==4?Colors.white:Colors.grey,),
              Text('Wallet',style: TextStyle(color: index==4?Colors.white:Colors.grey,fontWeight: FontWeight.bold,fontSize: 10),)
            ],),
          ),
          ],
      )),
    );
  }
  
}