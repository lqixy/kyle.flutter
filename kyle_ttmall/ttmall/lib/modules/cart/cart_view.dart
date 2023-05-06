import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ttmall/shared/custom_cached_network_image_widget.dart';
import 'package:ttmall/utils/app_config.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.primaryBackgroundColorGrey,
      // appBar: AppBar(
      //   title: const Text('购物车'),
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: AppConfig.primaryTextColorBlack),
      //   backgroundColor: AppConfig.primaryWhite,
      //   foregroundColor: AppConfig.primaryTextColorBlack,
      // ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Ionicons.close,
                    color: AppConfig.primaryTextColorBlack,
                  ),
                ),
                Text(
                  '购物车',
                  style: AppTextStyle.appTextStyle(
                      AppConfig.primaryTextColorBlack, 36.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: ListView.builder(
                    itemCount: 3,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Slidable(
                            key: const ValueKey(0),
                            endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    flex: 1,
                                    onPressed: (context) {},
                                    backgroundColor:
                                        AppConfig.primaryBackgroundColorRed,
                                    foregroundColor: AppConfig.primaryWhite,
                                    icon: Icons.delete,
                                    label: '删除',
                                  )
                                ]),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.11,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: AppConfig.primaryWhite,
                                // boxShadow: [
                                //   BoxShadow(
                                //       color: Colors.grey.shade500,
                                //       spreadRadius: 5,
                                //       blurRadius: 0.3,
                                //       offset: Offset(0, 1))
                                // ]
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(12),
                                        child: CustomCachedNetworkImageWidget(
                                            height: 70.h,
                                            width: 70.w,
                                            fit: BoxFit.fill,
                                            imageUrl:
                                                'https://timgs-v1.tongtongmall.com/70058451ed704adcac827e1baf4d00a2?imageView2/4/quality/30'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 12.h, left: 10.w),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 170.w,
                                              child: Text(
                                                '美国加州宝宝金盏花 镇静保湿面霜57g',
                                                style:
                                                    AppTextStyle.appTextStyle(
                                                  AppConfig
                                                      .primaryTextColorBlack,
                                                  14.sp,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              '¥149.00',
                                              style: AppTextStyle.appTextStyle(
                                                  AppConfig
                                                      .primaryTextColorBlack,
                                                  14.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          height: 80.h,
                                          width: 20.w,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  print('remove');
                                                },
                                                child: Icon(
                                                  Ionicons.remove,
                                                  size: 20.sp,
                                                  color: AppConfig
                                                      .primaryTextColorBlack,
                                                ),
                                              ),
                                              Text(
                                                '99',
                                                style: AppTextStyle.appTextStyle(
                                                    AppConfig
                                                        .primaryTextColorBlack,
                                                    12.sp),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  print('add');
                                                },
                                                child: Icon(
                                                  Ionicons.add,
                                                  size: 20.sp,
                                                  color: AppConfig
                                                      .primaryTextColorBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
