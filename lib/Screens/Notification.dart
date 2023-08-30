import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'Hot Updates',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFFF3A44),
            fontSize: 21,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 1.29,
            letterSpacing: -0.41,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 1,
          ),
          Image(image: AssetImage('assets/images/Frame 32.png')),
          // Padding(padding: EdgeInsetsDirectional.fromSTEB(57 ,-10,-10, 0)),
          SizedBox(height: 16),
          SizedBox(
            width: 345,
            child: Text(
              'Monday, 10 May 2021',
              style: TextStyle(
                color: Color(0xFF2D0505),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w300,
                height: 1.73,
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 343,
            child: Text(
              'WHO classifies triple-mutant Covid variant from India as global health risk',
              style: TextStyle(
                color: Color(0xFF121212),
                fontSize: 14,
                fontFamily: 'New York Small',
                fontWeight: FontWeight.w600,
                height: 1.49,
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 343,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      color: Color(0xFF0080FF),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Published by Berkeley Lovelace Jr.',
            style: TextStyle(
              color: Color(0xFF2D0505),
              fontSize: 12,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 1.73,
            ),
          ),
          Container(
            width: 345,
            height: 128,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Frame 33.png"),
                fit: BoxFit.fill,
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
                  width: 327,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 345,
            child: Text(
              'Sunday, 9 May 2021',
              style: TextStyle(
                color: Color(0xFF2D0505),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w300,
                height: 1.73,
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 343,
            child: Text(
              'What to do if you\'re planning or attending a wedding during the pandemic',
              style: TextStyle(
                color: Color(0xFF121212),
                fontSize: 14,
                fontFamily: 'New York Small',
                fontWeight: FontWeight.w600,
                height: 1.49,
              ),
            ),
          ),
          SizedBox(
            width: 343,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      color: Color(0xFF0080FF),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 345,
            child: Text(
              'Published by Kristen Rogers',
              style: TextStyle(
                color: Color(0xFF2D0505),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 1.73,
              ),
            ),
          )
        ],
      ),
    );
  }
}
