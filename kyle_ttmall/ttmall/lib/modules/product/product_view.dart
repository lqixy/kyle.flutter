import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ttmall/modules/product/bloc/product_bloc.dart';

import 'package:ttmall/shared/custom_slider_widget.dart';
import 'package:ttmall/utils/app_config.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.primaryWhite,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppConfig.primaryBackgroundColorGrey,
              automaticallyImplyLeading: false,
              leadingWidth: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<ProductBloc>(context)
                            .add(ProductNavtoEvent(context));
                      },
                      child: Icon(
                        Ionicons.close,
                        color: AppConfig.primaryTextColorBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Ionicons.ellipsis_horizontal,
                        color: AppConfig.primaryTextColorBlack,
                      ),
                    )
                  ],
                ),
              ),
              pinned: true,
              snap: false,
              floating: true,
              expandedHeight: MediaQuery.of(context).size.height,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width,
                      child: CustomSliderWidget(
                          MediaQuery.of(context).size.height * 0.33,
                          MediaQuery.of(context).size.width, const [
                        'https://timgs-v1.tongtongmall.com/70058451ed704adcac827e1baf4d00a2?imageView2/4/quality/30',
                        'https://timgs-v1.tongtongmall.com/870f5fcb1bfc4a0d95ae7301979b1d17?imageView2/4/quality/30',
                      ]),
                    ),
                    Positioned(
                        top: 50.h,
                        right: 15.w,
                        child: GestureDetector(
                          onTap: () {
                            print('关注');
                          },
                          child: Icon(
                            Ionicons.heart_outline,
                            color: AppConfig.primaryBackgroundColorRed,
                          ),
                        )),
                    Positioned(
                      bottom: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.63,
                          width: MediaQuery.of(context).size.width,
                          color: AppConfig.primaryWhite,
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '美国加州宝宝金盏花 镇静保湿面霜57g',
                                  style: AppTextStyle.appTextStyle(
                                      AppConfig.primaryTextColorBlack, 24.sp,
                                      fw: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '加州宝宝 CALIFORNIA BABY',
                                      style: AppTextStyle.appTextStyle(
                                          AppConfig.secondTextColorGery, 12.sp),
                                    ),
                                    RatingBar.builder(
                                        initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 18,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 1),
                                        itemBuilder: (context, _) => Icon(
                                              Ionicons.star,
                                              // size: 14,
                                              color: AppConfig
                                                  .primaryBackgroundColorRed,
                                            ),
                                        onRatingUpdate: (rating) {})
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  '¥149.00',
                                  style: AppTextStyle.appTextStyle(
                                      AppConfig.primaryTextColorBlack, 20.sp,
                                      fw: FontWeight.w600),
                                ),
                                Divider(
                                  color: AppConfig.primaryTextColorBlack,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  '轻薄 、透气、 吸水、用的安全放心的纸尿裤，聪明妈妈的选择！花王纸尿裤，点状设计使其透气性更出色，无论怎么动都柔软贴身；棉柔弹性环抱腰围设计，让宝宝坐着也感觉轻松自如。变色尿显、柔软的裆下部位设计更是给宝宝带来无与伦比的超值体验。',
                                  style: AppTextStyle.appTextStyle(
                                      AppConfig.secondColorGrey, 16.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12.h),
                                    child: GestureDetector(
                                      onTap: () {
                                        print('加入购物车');
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: AppConfig
                                                  .primaryBackgroundColorRed,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(16))),
                                          height: 50.h,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: Center(
                                            child: Text(
                                              '加入购物车',
                                              style: AppTextStyle.appTextStyle(
                                                  AppConfig.primaryWhite, 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
