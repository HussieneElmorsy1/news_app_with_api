import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:news_app_with_api/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:news_app_with_api/Data/Repository/get_new_repo.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: (
                  //              GetNewRepo().getAllNews(),
                  ) async {
                context.read<GetNewsCubit>().getNews();
              },
              child: Text("Get Updated News")),
          SizedBox(
            height: 30,
          ),
          BlocBuilder<GetNewsCubit, GetNewsState>(
            builder: (context, state) {
              if (state is GetNewsInitial) {
                return Center(
                  child: Text("pleas press the button to get news"),
                );
              } else if (state is GetNewsLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetNewsSuccess) {
                return Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical:
                                              5.0, // ارتفاع الهامش العمودي
                                          horizontal: 16.0, // هامش أفقي
                                        ),
                                        hintText: 'Dogecoin to the Moon...',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide(
                                            color: Colors.black.withOpacity(
                                                0.5), // لون الإطار مع الشفافية
                                          ),
                                        ),
                                        // تحكم في شفافية النص التوضيحي
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(
                                              0.5), // لون النص مع الشفافية
                                        ),
                                        suffixIcon: Icon(Icons.search),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 33,
                                  height: 32,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.87, -0.49),
                                      end: Alignment(-0.87, 0.49),
                                      colors: [
                                        Color(0xFFFF3A44),
                                        Color(0xFFFF7F85)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Container(
                                    width: 13,
                                    height: 16,
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/Group 38.svg")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Latest News',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'New York Small',
                                    fontWeight: FontWeight.w700,
                                    height: 1.16,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 67,
                                  height: 16,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'See All',
                                        style: TextStyle(
                                          color: Color(0xFF0080FF),
                                          fontSize: 12,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                          "assets/images/Combined Shape.svg"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            //*API*
                            //
                            ElevatedButton(
                                onPressed: () async {
                                  context.read<GetNewsCubit>().getNews();
                                },
                                child: Text('Refresh')),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(children: [
                                      Container(
                                        width: 321,
                                        height: 240,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/Frame 34.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 321,
                                        height: 240,
                                        padding: const EdgeInsets.only(
                                            top: 80,
                                            left: 10,
                                            right: 10,
                                            bottom: 8),
                                        decoration: ShapeDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment(0.01, -1.00),
                                            end: Alignment(-0.01, 1),
                                            colors: [
                                              Color(0x59626262),
                                              Colors.black
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 289,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8),
                                                child: Text(
                                                  'by Ryan Browne',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontFamily: 'Nunito',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 289,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    8, 0, 8, 8),
                                                child: Text(
                                                  'Crypto investors should be prepared to lose all their money, BOE governor says',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'New York Small',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 289,
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontFamily: 'Nunito',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Stack(children: [
                                    Container(
                                      width: 321,
                                      height: 224,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Frame 35.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 321,
                                      height: 224,
                                      padding: const EdgeInsets.only(
                                          top: 80,
                                          left: 10,
                                          right: 10,
                                          bottom: 8),
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(0.01, -1.00),
                                          end: Alignment(-0.01, 1),
                                          colors: [
                                            Color(0x59626262),
                                            Colors.black
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 289,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8),
                                              child: Text(
                                                'by Ryan Browne',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 289,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  8, 0, 8, 8),
                                              child: Text(
                                                'Crypto investors should be prepared to lose all their money, BOE governor says',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: 'New York Small',
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.30,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 289,
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                                  // يمكنك إضافة المزيد من العناصر هنا
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 85,
                                      height: 32,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.87, -0.49),
                                          end: Alignment(-0.87, 0.49),
                                          colors: [
                                            Color(0xFFFF3A44),
                                            Color(0xFFFF7F85)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 0.50,
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                            color: Color(0xFFFFB2B6),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                      child: Text(
                                        'Healthy',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )),
                                  SizedBox(width: 8),
                                  Container(
                                      width: 105,
                                      height: 35,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
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
                                          borderRadius:
                                              BorderRadius.circular(16),
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
                                          borderRadius:
                                              BorderRadius.circular(16),
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
                                          borderRadius:
                                              BorderRadius.circular(16),
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
                            SizedBox(
                              height: 50,
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            //
                            //
                            //
                            //
                            //
                            //
                            Expanded(
                                child: ListView.builder(
                              itemCount: state.response.articles.length,
                              itemBuilder: (context, index) {
                                return Stack(children: [
                                  Container(
                                    width: 321,
                                    height: 240,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image:  DecorationImage(
                                        image: NetworkImage(state.response.articles[index].urlToImage?? "nb"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 321,
                                    height: 240,
                                    padding: const EdgeInsets.only(
                                        top: 80,
                                        left: 10,
                                        right: 10,
                                        bottom: 8),
                                    decoration: ShapeDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment(0.01, -1.00),
                                        end: Alignment(-0.01, 1),
                                        colors: [
                                          Color(0x59626262),
                                          Colors.black
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 289,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Text(
                                              'by Ryan Browne',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 289,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(8, 0, 8, 8),
                                            child: Text(
                                              'Crypto investors should be prepared to lose all their money, BOE governor says',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'New York Small',
                                                fontWeight: FontWeight.w700,
                                                height: 1.30,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 289,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Nunito',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]);
                              },
                            )),
                            //
                            Stack(children: [
                              Container(
                                width: 321,
                                height: 240,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                    image: AssetImage(""),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                width: 321,
                                height: 240,
                                padding: const EdgeInsets.only(
                                    top: 80, left: 10, right: 10, bottom: 8),
                                decoration: ShapeDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(0.01, -1.00),
                                    end: Alignment(-0.01, 1),
                                    colors: [Color(0x59626262), Colors.black],
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 289,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
                                          'by Ryan Browne',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 289,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 8, 8),
                                        child: Text(
                                          'Crypto investors should be prepared to lose all their money, BOE governor says',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'New York Small',
                                            fontWeight: FontWeight.w700,
                                            height: 1.30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 289,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 289,
                            height: 66,
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 40,
                              right: 40,
                              bottom: 8,
                            ),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x268C8C8C),
                                  blurRadius: 4,
                                  offset: Offset(-2, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          SvgPicture.asset(
                                              "assets/images/home.svg")
                                        ]),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                          color: Color(0xFF2D0505),
                                          fontSize: 10,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          SvgPicture.asset(
                                              "assets/images/Favorite.svg")
                                        ]),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Favorite',
                                        style: TextStyle(
                                          color: Color(0xFFA5A5A5),
                                          fontSize: 10,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          SvgPicture.asset(
                                              "assets/images/Profile.svg"),
                                        ]),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        'Profile',
                                        style: TextStyle(
                                          color: Color(0xFFA5A5A5),
                                          fontSize: 10,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const Center(
                  child: Text("Something want wrong"),
                );
              }
            },
          ),
        ],
      ),

      // bottomNavigationBar: SafeArea(
      //   child: Container(
      //     padding: EdgeInsets.all(24),
      //     margin: EdgeInsets.symmetric(horizontal: 24),
      //     decoration: BoxDecoration(
      //       color: Colors.white10,
      //       borderRadius: BorderRadius.all(Radius.circular(24)),
      //     ),
      //     child: Row(
      //       children: [
      //         SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: SvgPicture.asset("assets/images/home.svg"))
      //       ],
      //     ),
      //   ),
    );
  }
}
