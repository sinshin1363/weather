import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/constant.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return     SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 65, 3, 77),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right:20, bottom: 15 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
              
              children: [
                
                  SizedBox(
                    width: 250,
                    height: 45,
                    child: SearchBar(
                      backgroundColor: MaterialStatePropertyAll(klightpurple),
                    
                      hintText: 'Search Here',
                       
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: klightpurple,
                  child: Icon(Icons.search, color:Colors.white ),
                  ),
                  
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: 220,
            color: klightpurple,
            child:  Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  const Text('Mon, 20 Novamber', textAlign: TextAlign.left, style: TextStyle(color: Colors.grey,fontSize: 12)),
                  const Text('London - United Kingdom',textAlign: TextAlign.left,style:  TextStyle(color: Colors.grey,fontSize: 12) ),
             Container(
              margin: const EdgeInsets.only(top: 0, bottom: 10),
               child:  Row(children: [
                           const Text('12.0' , style: TextStyle(color: Colors.white, fontSize: 32), ),
                           const Text('  °C' , style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 36), ),
                           Container(

                            
                             margin: const EdgeInsets.only(left: 60, bottom: 40, top: 10),
                             
                             ),

                               Image.asset('assets/images/176.png',
                          width: 50,
                          height: 80,

                          )

                         ],
                         ),

             ),
                  const Text('^7.1°C  ^6.7°C', textAlign: TextAlign.left, style: TextStyle(color: Colors.grey,fontSize: 12)),
                  const Text('Partly cloudy' , style: TextStyle(color: Colors.white, fontSize: 32), ),
                  const Text('Fwwlings like 4.2°C ', textAlign: TextAlign.left, style: TextStyle(color: Colors.grey,fontSize: 12)),


                ],
              ),


            ),

          ),


           const Padding(
             padding: EdgeInsets.only(left: 8.0),
             child: Text('Today' , style: TextStyle(color: Colors.white, fontSize: 20, ), ),
           ),
          Expanded(
            child: 
            SingleChildScrollView(
              
                child: SizedBox(
                  width: Get.width,
                  height: 140,
                  child: ListView.builder(
                            
                  itemCount: 24, // Per hour in a day
                  itemBuilder: (context, index) {
                    return ListTile(
                      
                      title: Text('00:00', style: TextStyle(color: Colors.white),), 
                      subtitle: Text("7 °C", style: TextStyle(color: Colors.orange, fontSize: 17)),
                      leading: Image.asset('assets/images/176.png', height: 20, width: 20),
                      trailing: 
                       Text('40%', style: TextStyle(color: Colors.white, fontSize: 15),)
                       ,
                      
                    );
                  }
                                ),
                ),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.topLeft,
              width: Get.width,
              height: Get.height,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: klightpurple,
                borderRadius: BorderRadius.circular(9)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                   const Text('Wendnesday   ',style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(width: 20, height: 20, child: Image.asset('assets/images/263.png',)
                    ),
                    Text('   80%   ',style: TextStyle(color: Colors.white, fontSize: 14)),
                    Text("7 °C", style: TextStyle(color: Colors.orange, fontSize: 14)),
                    
                    ],
                  ),
                                    Row(
                    children: [
                   const Text('Wendnesday   ',style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(width: 20, height: 20, child: Image.asset('assets/images/263.png',)
                    ),
                    Text('   80%   ',style: TextStyle(color: Colors.white, fontSize: 14)),
                    Text("7 °C", style: TextStyle(color: Colors.orange, fontSize: 14)),

                ],
              ),
               
              
              
          ]),
          ),


        )],
        ),
        
      ),
    );
  }
}