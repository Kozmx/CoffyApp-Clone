import 'package:flutter/material.dart';

class mainPageView extends StatefulWidget {
  const mainPageView({super.key});

  @override
  State<mainPageView> createState() => _mainPageViewState();
}

class _mainPageViewState extends State<mainPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(),
      ),
      body: Container(
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.shopping_bag_outlined,color: Colors.white,),
            Text('Eskişehir Odunpazarı',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),),
            ],
        ),
      color: const Color.fromARGB(255, 246, 145, 57),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/coffy_logo.png',width: 100,height: 100,),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      elevation: 0,
      leading: Icon(Icons.notifications_none_sharp,color: Colors.white,),
      actions: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.qr_code, color: Colors.black),
          label: Text('QR ile\nÖde',style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.black),),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(100, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
              ),
            ),
          ),
      ],
    );
  }
}