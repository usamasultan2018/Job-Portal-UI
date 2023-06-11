import 'package:flutter/material.dart';
class IntroPage1 extends StatelessWidget {
  final VoidCallback onPress;
  const IntroPage1({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: size*0.6,
            color:Color(0xffF4F7FD),
            child: Center(child: Image.asset('assets/images/intro1.png'),),
          ),
          TextButton(onPressed: onPress,
              child: Text('Skip')),
          SizedBox(height: 20,),

          Image.asset('assets/texts/t1.png'),
        ],
      ),
    );
  }
}
