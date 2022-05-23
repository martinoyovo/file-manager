import 'dart:math';

import 'package:file_manager/core/app_export.dart';
import 'package:file_manager/presentation/stats_screen/stats_screen.dart';
import 'package:file_manager/presentation/stats_screen/widgets/stats_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import '../stats_screen/widgets/header_clipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipPath(
                  clipper: HeaderClipper(82),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: ColorConstant.black900,
                      height: size.height * 0.825,
                      width: size.width,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  left: 0,
                  child: SvgPicture.asset(
                    ImageConstant.imgSeparator,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: -15,
                  top: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -pi / 2,
                        child: Text(
                          'Internal storage',
                          textAlign: TextAlign.left,
                          //textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: ColorConstant.yellow600,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.48,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -8,
                  bottom: MediaQuery.of(context).size.height / 4.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -pi / 2,
                        child: Text(
                          'External storage',
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.whiteA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.42,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(28),
                      top: getVerticalSize(14),
                      right: getHorizontalSize(28),
                      bottom: getVerticalSize(14),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SvgPicture.asset(
                                ImageConstant.imgDrawer,
                                fit: BoxFit.fill,
                              ),
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        2,
                                      ),
                                      right: getHorizontalSize(
                                        2,
                                      ),
                                    ),
                                    child: Image.asset(
                                      ImageConstant.imgAvatar,
                                      height: getSize(
                                        36,
                                      ),
                                      width: getSize(
                                        36,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10,
                                        ),
                                        bottom: getVerticalSize(
                                          10,
                                        ),
                                      ),
                                      child: SizedBox(
                                        height: getSize(
                                          12,
                                        ),
                                        width: getSize(
                                          12,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgNotification,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              42,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: getHorizontalSize(
                                  142,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: 'File',
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            32,
                                          ),
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 1.28,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '\nManager',
                                        style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(
                                            32,
                                          ),
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.28,
                                        ),
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: getHorizontalSize(
                                    2,
                                  ),
                                  bottom: getVerticalSize(
                                    71,
                                  ),
                                ),
                                child: SizedBox(
                                  height: getVerticalSize(
                                    6,
                                  ),
                                  width: getHorizontalSize(
                                    17,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgMore,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              10,
                            ),
                            right: getHorizontalSize(
                              10,
                            ),
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Let’s clean and',
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.26,
                                  ),
                                ),
                                TextSpan(
                                  text: ' manage your',
                                  style: TextStyle(
                                    color: ColorConstant.yellow600,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.26,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.26,
                                  ),
                                ),
                                TextSpan(
                                  text: 'file’s.',
                                  style: TextStyle(
                                    color: ColorConstant.yellow600,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.26,
                                  ),
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              30,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const StatsScreen())),
                                child: Container(
                                  width: getHorizontalSize(
                                    252,
                                  ),
                                  margin: EdgeInsets.only(
                                    right: getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: getVerticalSize(
                                            368,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.redA700B2,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(26),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            right: getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.redA700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                26,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  195,
                                                ),
                                                margin: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20,
                                                  ),
                                                  top: getVerticalSize(
                                                    40,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Your Storage',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          21,
                                                        ),
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: 0.42,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: getVerticalSize(
                                                          1,
                                                        ),
                                                      ),
                                                      child: SizedBox(
                                                        height: getSize(
                                                          24,
                                                        ),
                                                        width: getSize(
                                                          24,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgFilter,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Gap(14),
                                              SizedBox(
                                                width: getHorizontalSize(
                                                  230,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Gap(60),
                                                    SizedBox(
                                                      height: 100,
                                                      width: 100,
                                                      child: CustomPaint(
                                                        painter: StatsPainter(
                                                            width: 25,
                                                            offset: 50,
                                                            radius: 75),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            RichText(
                                                                text: TextSpan(
                                                                  children: <
                                                                      InlineSpan>[
                                                                    TextSpan(
                                                                      text:
                                                                          '128',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          24,
                                                                        ),
                                                                        fontFamily:
                                                                            'Gilroy',
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        letterSpacing:
                                                                            0.40,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'GB',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          11,
                                                                        ),
                                                                        fontFamily:
                                                                            'Gilroy',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        letterSpacing:
                                                                            0.40,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                            Text(
                                                              '70% USED',
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                fontSize:
                                                                    getFontSize(
                                                                  11,
                                                                ),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const Gap(60),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height:
                                                                  getSize(12),
                                                              width:
                                                                  getSize(12),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                        3),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        3),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                      6),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  7,
                                                                ),
                                                              ),
                                                              child: Text(
                                                                'Used',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    15,
                                                                  ),
                                                                  fontFamily:
                                                                      'Gilroy',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Gap(16),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              height: getSize(
                                                                12,
                                                              ),
                                                              width: getSize(
                                                                12,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  3,
                                                                ),
                                                                bottom:
                                                                    getVerticalSize(
                                                                  3,
                                                                ),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: ColorConstant
                                                                    .yellow600,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    6,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  7,
                                                                ),
                                                              ),
                                                              child: Text(
                                                                'Free',
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style:
                                                                    TextStyle(
                                                                  color: ColorConstant
                                                                      .yellow600,
                                                                  fontSize:
                                                                      getFontSize(
                                                                    15,
                                                                  ),
                                                                  fontFamily:
                                                                      'Gilroy',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          20,
                                                        ),
                                                        top: getVerticalSize(
                                                          30,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          20,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          30,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA70075,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            34,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            5,
                                                          ),
                                                          top: getVerticalSize(
                                                            5,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            5,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            5,
                                                          ),
                                                        ),
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height:
                                                              getVerticalSize(
                                                            40,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            106,
                                                          ),
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              30,
                                                            ),
                                                            top:
                                                                getVerticalSize(
                                                              13,
                                                            ),
                                                            right:
                                                                getHorizontalSize(
                                                              30,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              13,
                                                            ),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .black900,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                50,
                                                              ),
                                                            ),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: ColorConstant
                                                                    .black9004d,
                                                                spreadRadius:
                                                                    getHorizontalSize(
                                                                  2,
                                                                ),
                                                                blurRadius:
                                                                    getHorizontalSize(
                                                                  2,
                                                                ),
                                                                offset: const Offset(
                                                                  0,
                                                                  2,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          child: Text(
                                                            'Analyze',
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily:
                                                                  'Gilroy',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  62,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgCompassfilled,
                        fit: BoxFit.fill,
                      ),
                      const Gap(20),
                      Container(
                        height: getVerticalSize(
                          6,
                        ),
                        width: getHorizontalSize(
                          24,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.black900,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                10,
                              ),
                            ),
                            topRight: Radius.circular(
                              getHorizontalSize(
                                10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    ImageConstant.imgDocumentfille,
                    fit: BoxFit.fill,
                  ),
                  SvgPicture.asset(
                    ImageConstant.imgSettings,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
