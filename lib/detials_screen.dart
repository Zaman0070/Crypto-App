import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffc2c2c6),
              ),
              child: Stack(
                children: [
                  Image.asset('assets/images/plant.png'),
                  const Positioned(
                    top: 65,
                    left: 10,
                    child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
                  ),
                   Positioned(
                    top: 55,
                    right: 10,
                    child: CircleAvatar(
                        backgroundColor: Colors.grey.shade200.withOpacity(0.6),
                        child: Icon(Icons.favorite,color: Colors.white,size: 30,)),
                  ),
                  Positioned(
                    top: 510,
                    left: 25,
                    right: 25,
                    child: Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const[
                            Text('Remaining',style: TextStyle(fontSize: 18),),
                            Text('23h: 12m :18s',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 630,
                left: 20,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Blossom',style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 20
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          children:const [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/images/pic2.jpg'),
                            ),
                            SizedBox(width: 10,),
                            Text('Rober A.',style: TextStyle(
                              fontSize: 16
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Positioned(
                top: 630,
                right: 20,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children:const [
                        Text('25.5 ETH',style: TextStyle(
                            fontWeight: FontWeight.w900,fontSize: 24,
                        ),),
                        SizedBox(height: 10,),
                        Text('Current bin',style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ],
                )),
            Positioned(
                top: 720,
                right: 20,
                left: 20,
                child:Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff28292a)
                  ),
                  child: const Center(
                    child: Text('Collect items',style: TextStyle(
                      fontSize: 20,color: Colors.white
                    ),),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
