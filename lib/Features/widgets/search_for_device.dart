import 'package:flutter/material.dart';

class SearchForDevice  extends StatelessWidget {
  const SearchForDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        centerTitle: true,
        leading:const Icon(Icons.arrow_back_ios,color: Colors.black,),
        title: const Text('Devices',style: TextStyle(color: Colors.black),),
      ),
      body: Column(

        children: [
          const SizedBox(height: 45,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children:  [

                const Text('Search For Device',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400),),
               const Spacer(),
                Image.asset('assets/images/loading-16-svgrepo-com 1.png'),
              ],
            ),
          ),
          const Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
            width: double.infinity,
            height: 80,
             decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:const Color(0xffE9F4FA),
        ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Image.asset('assets/images/Vector.png'),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text('Name : Your Glove',style: TextStyle(color: Color(0xff5FBDC5,),fontWeight: FontWeight.w400 ),),
                      SizedBox(height: 5,),
                      Text('Mac :  00:11:22:33:FF:EE',style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ],
              ),
      ),
          ),
        ],
      ),
    );
  }
}
