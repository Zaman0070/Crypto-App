import 'package:flutter/material.dart';
import 'package:flutter_tutorial/home_page.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({Key? key}) : super(key: key);

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int index = 0;
  final PageStorageBucket _bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: WillPopScope(
        onWillPop: (){
         return Future.value(false);
        },
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Colors.grey,
            child: PageStorage(
              bucket: _bucket,
              child: currentScreen,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomAppBar(
            elevation: 0,
            color: Color(0xff28292a),
            shape: CircularNotchedRectangle(),
            notchMargin: 8,
            child: SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 6,right: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(onPressed: (){
                    setState(() {
                      index = 0;
                      currentScreen = HomePage();
                    });
                    },
                      child: Image.asset('assets/images/home.png',
                      color: index ==0? Colors.white: Colors.grey,height: 22,
                      ),
                    ),
                    MaterialButton(onPressed: (){
                      setState(() {
                        index = 1;
                        currentScreen = HomePage();
                      });
                    },
                      child: Image.asset('assets/images/menu.png',
                        color: index ==1? Colors.white: Colors.grey,height: 22,
                      ),
                    ),
                    MaterialButton(onPressed: (){
                      setState(() {
                        index = 2;
                        currentScreen = HomePage();
                      });
                    },
                      child: Image.asset('assets/images/heart.png',
                        color: index ==2? Colors.white: Colors.grey,height: 22,
                      ),
                    ),
                    MaterialButton(onPressed: (){
                      setState(() {
                        index = 3;
                        currentScreen = HomePage();
                      });
                    },
                      child: Image.asset('assets/images/user.png',
                        color: index ==3? Colors.white: Colors.grey,height: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
