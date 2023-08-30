import 'package:flutter/material.dart';

// داخل الكلاس الخاص بالواجهة
void _showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Color(0xFF031D2F),
                    fontSize: 22,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5.0, // ارتفاع الهامش العمودي
                    horizontal: 16.0, // هامش أفقي
                  ),
                  hintText: 'COVID New Variant',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black
                          .withOpacity(0.5), // لون الإطار مع الشفافية
                    ),
                  ),
                  // تحكم في شفافية النص التوضيحي
                  hintStyle: TextStyle(
                    color:
                        Colors.black.withOpacity(0.5), // لون النص مع الشفافية
                  ),
                  suffixIcon: Icon(Icons.exit_to_app_sharp),
                ),
              ),
            ),
            SizedBox(
                // height: 20,
                ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 85,
                    height: 32,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical:
                            8), // زود الهامش الأفقي لتحقيق المسافة المطلوبة بين الأيقونة والنص
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.87, -0.49),
                        end: Alignment(-0.87, 0.49),
                        colors: [Color(0xFFFF3A44), Color(0xFFFF7F85)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFFB2B6),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showFilterBottomSheet(
                                context); // استدعاء واجهة المستخدم للـ BottomSheet
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.filter_list, // أيقونة Filter
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Filter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                      width: 105,
                      height: 35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFEFF0FA),
                          )),
                      child: Text(
                        'Technology',
                        style: TextStyle(
                          color: Color(0xFF2D0505),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  SizedBox(width: 8),
                  Container(
                      width: 75,
                      height: 32,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFEFF0FA),
                          )),
                      child: Text(
                        'Finance',
                        style: TextStyle(
                          color: Color(0xFF2D0505),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  SizedBox(width: 8),
                  Container(
                      width: 75,
                      height: 32,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFEFF0FA),
                          )),
                      child: Text(
                        'Arts',
                        style: TextStyle(
                          color: Color(0xFF2D0505),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                  SizedBox(width: 8),
                  Container(
                      width: 75,
                      height: 32,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFEFF0FA),
                          )),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          color: Color(0xFF2D0505),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                ],
              ),
            ),
            Text(
              ".Variant New COVID for results 11,130,000 About",
              style: TextStyle(
                color: Color(0xFF2D0505),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 345,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Frame 36.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 345,
                  height: 128,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x59626262), Colors.black],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  '5 things to know about the \'conundrum\' of lupus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'New York Small',
                                    fontWeight: FontWeight.w600,
                                    height: 1.49,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Matt Villano',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Sunday, 9 May 2021',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  width: 345,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Frame 37.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 345,
                  height: 128,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x59626262), Colors.black],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  '5 things to know about the \'conundrum\' of lupus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'New York Small',
                                    fontWeight: FontWeight.w600,
                                    height: 1.49,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Matt Villano',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Sunday, 9 May 2021',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  width: 345,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Frame 38.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 345,
                  height: 128,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0x59626262), Colors.black],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  '5 things to know about the \'conundrum\' of lupus',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'New York Small',
                                    fontWeight: FontWeight.w600,
                                    height: 1.49,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Matt Villano',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Sunday, 9 May 2021',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w600,
                                    height: 1.73,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
