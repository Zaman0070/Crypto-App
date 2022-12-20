import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/detials_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Welcome bace\n',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                              text: 'Nike G.',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ]),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/pic1.jpg'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.32,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            hintText: 'Search',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(14),
                        child: Image.asset('assets/images/filter.png'),
                      ),
                    ),
                  ],
                ),
              ),
              FlipCard(
                fill: Fill
                    .fillBack, // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL, // default
                front:Container(
                  height: 430,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffc2c2c6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/hand.png'),
                      Positioned(
                        top: 15,
                        right: 25,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade200.withOpacity(0.6),
                          child: Icon(Icons.favorite,color: Colors.white,size: 30,),
                        ),
                      ),
                      Positioned(
                        top: 316,
                        left: 25,
                        right: 25,
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const  Text('Awakening',style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 20
                                    ),),
                                    Row(
                                      children:const [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage('assets/images/pic2.jpg'),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('Robert A.',style: TextStyle(fontSize: 16),)
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:const [
                                    Text('40.2 ETH',style: TextStyle(
                                      fontWeight: FontWeight.w900,fontSize: 24
                                    ),),
                                    Text('current bin',style: TextStyle(
                                        fontSize: 16
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                back:Container(
                  height: 430,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffc2c2c6),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/plant.png'),
                      Positioned(
                        top: 15,
                        right: 25,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade200.withOpacity(0.6),
                          child: Icon(Icons.favorite,color: Colors.white,size: 30,),
                        ),
                      ),
                      Positioned(
                        top: 316,
                        left: 25,
                        right: 25,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const DetailsScreen()));
                          },
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white.withOpacity(0.8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const  Text('Blossom',style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 20
                                      ),),
                                      Row(
                                        children:const [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundImage: AssetImage('assets/images/pic2.jpg'),
                                          ),
                                          SizedBox(width: 10,),
                                          Text('Robert A.',style: TextStyle(fontSize: 16),)
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children:const [
                                      Text('25.5 ETH',style: TextStyle(
                                          fontWeight: FontWeight.w900,fontSize: 24
                                      ),),
                                      Text('current bin',style: TextStyle(
                                          fontSize: 16
                                      ),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
