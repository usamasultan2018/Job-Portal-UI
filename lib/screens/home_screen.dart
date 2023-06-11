import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Alex Smith',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff08151F)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Your dream job is here',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Iconsax.search_favorite,
                        color: Colors.black,
                      ),
                      hintText: 'Search here . . .',
                      hintStyle: TextStyle(color: Color(0xff06070)),
                      suffixIcon: Icon(Icons.filter_alt_rounded)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 228,
                        width: 228,
                        decoration: BoxDecoration(
                          color: Color(0xff2355C4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFF),
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/logo/slack.png'),
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'XYZ Company',
                                style: TextStyle(
                                    color: Color(0xFFFFFFfff), fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Web Developer',
                                style: TextStyle(
                                    color: Color(0xFFFFFFfff), fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 58,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '36/h',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 32,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                        ),
                                    child:Icon(Icons.bookmark_outline,color: Colors.white70,) ,
                                    ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 228,
                        width: 228,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFF),
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/logo/google.png'),
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                    fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Product Developer',
                                style: TextStyle(
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 58,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '36/h',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 32,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child:Icon(Icons.bookmark_outline,) ,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Jobs',style: TextStyle(fontSize: 16),),
                    Text('View more ->',style: TextStyle(color: Colors.grey,fontSize: 13),)
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F7),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child:  Image.asset('assets/logo/google.png'),),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('UX Engineer',style: TextStyle(fontSize: 15),),
                                SizedBox(height: 5,),
                                Text('Google',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                            ),


                          ],
                        ),
                        Container(
                          height: 32,
                          width: 58,
                          decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              '32/h',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F6F7),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child:  Image.asset('assets/logo/ibm.png'),),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Product Manager',style: TextStyle(fontSize: 15),),
                                SizedBox(height: 5,),
                                Text('IBM',style: TextStyle(color: Colors.grey,fontSize: 12),),
                              ],
                            ),


                          ],
                        ),
                        Container(
                          height: 32,
                          width: 58,
                          decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              '32/h',
                              style: TextStyle(fontSize: 13),
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
      ),
    );
  }
}
