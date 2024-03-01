// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/src/model/page_decoration.dart';
import 'package:thailand_province_project/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: IntroductionScreen(
        globalBackgroundColor: Colors.deepOrange[200],
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageUi(
              'น้ำตกถ้ำโสดา',
              'https://img.wongnai.com/p/800x0/2019/10/09/a8597f381f934d2caf2bb1b06e3ba664.jpg',
              'ที่เที่ยวร้อยเอ็ดสุดฮอตต้องที่นี่เลย “น้ำตกถ้ำโสดา” เพราะเป็นน้ำตกถ้ำแห่งเดียวในจังหวัดร้อยเอ็ด เหมาะสำหรับคนที่มาพักผ่อนในวันหยุด บำบัดความเหนื่อยล้าจากการทำงาน น้ำตกแห่งนี้เป็นน้ำตกถ้ำขนาดใหญ่ มีความสูงประมาณ 50 เมตร จุดเด่นอีกแห่งของที่นี่คือ มีเจดีย์หินที่เกิดขึ้นเองตามธรรมชาติ หากใครอยากสัมผัสกับความร่มรื่น เงียบสงบ ก็ลองมาที่นี่กันดูนะ '),
          PageUi(
              'พระมหาเจดีย์ชัยมงคล',
              'https://img.wongnai.com/p/800x0/2019/10/09/cd2abe793a08486c861d540f9ce122c2.jpg',
              'เมื่อมาถึงร้อยเอ็ด หากไม่มาสักการะ “พระมหาเจดีย์ชัยมงคล” ก็ถือว่ามาไม่ถึง เพราะเป็นมหาเจดีย์ขนาดใหญ่ที่มีความสวยงาม ตั้งอยู่บนยอดของเทือกเขาภูพาน หรือที่ชาวบ้านรู้จักกันในชื่อ “ผาน้ำย้อย” ที่นี่มีการใช้ศิลปะร่วมสมัยผสมผสานระหว่างภาคกลางและภาคอีสาน เป็นที่เที่ยวร้อยเอ็ดที่สวยงามอลังการมาก ทำให้ผู้คนที่มามีความรู้สึกราวกับว่าอยู่บนแดนสวรรค์เลย '),
          PageUi(
              'ผาหมอกมิวาย',
              'https://img.wongnai.com/p/800x0/2019/09/24/b3f5537ae43642e1bc2527a9109e4187.jpg',
              '“ผาหมอกมิวาย” อีกหนึ่งที่เที่ยวร้อยเอ็ดสุดฮิตในช่วงหน้าหนาว เพราะจะได้สัมผัสอากาศที่บริสุทธิ์ ชมวิวทิวทัศน์บนยอดเขา และยังเห็นหมอกที่ปกคลุมไปทั่วผืนป่าด้วย จนเป็นที่มาของชื่อ ที่นี่มีเส้นทางศึกษาธรรมชาติให้คนที่มีใจรักในการเดินป่าเขาได้ไปสำรวจชมความอุดมสมบูรณ์ของป่าและสัตว์ป่าอย่างใกล้ชิด'),
          PageUi(
              'สวนสมเด็จพระศรีนครินทร์',
              'https://img.wongnai.com/p/800x0/2019/10/09/d0c2b18ab1794e0dbe41e854c59b1cef.jpg',
              'ที่เที่ยวร้อยเอ็ดที่ต่อมาคือ “สวนสมเด็จพระศรีนครินทร์” สวนสาธารณะร้อยเอ็ดที่ตั้งอยู่ใจกลางเมือง มีพื้นที่กว้างขวางกว่า 123 ไร่ นอกจากจะเป็นที่พักผ่อนแล้ว ก็ยังเป็นสถานที่ใช้จัดงานประเพณีในเทศกาลสำคัญของจังหวัด และยังมีพื้นที่บางส่วนที่ให้นั่งเรือเล่น และจักรยานน้ำให้เช่าสำหรับออกกำลังกายอีกด้วย ใครกำลังมองหาที่พักผ่อนอยู่เราขอแนะนำเลย'),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          color: Colors.blueGrey,
          activeSize: Size(MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.width * 0.025),
          activeColor: const Color.fromARGB(255, 111, 34, 255),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        next: Icon(
          Icons.arrow_forward_sharp,
        ),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }

  PageViewModel PageUi(
    String IName,
    String IImage,
    String Index,
  ) {
    return PageViewModel(
      titleWidget: Text(
        IName,
        style: GoogleFonts.kanit(
          fontSize: MediaQuery.of(context).size.height * 0.035,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 48, 227, 240),
        ),
      ),
      image: Image.network(
        IImage,
      ),
      bodyWidget: Text('  ' + Index,
          style: GoogleFonts.kanit(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              color: Color.fromARGB(255, 20, 20, 20))),
    );
  }
}
