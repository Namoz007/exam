import 'package:exam/pages/enter_pages/enter_first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterPaparyPage extends StatefulWidget {
  const EnterPaparyPage({super.key});

  @override
  State<EnterPaparyPage> createState() => _EnterPaparyPageState();
}

class _EnterPaparyPageState extends State<EnterPaparyPage> {

  @override
  void initState(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnterFirstPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(''),

          Center(
            child: SvgPicture.asset('assets/imgs/papary.svg'),
          ),

          const Text('v1.0.678',style: TextStyle(color: Color(0xFF0864ED),fontFamily: "Nunito",fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
