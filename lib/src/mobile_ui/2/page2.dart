import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_kit_obkm/src/navigation/navigation_service.dart';
import 'package:flutter_ui_kit_obkm/src/res/colors.dart';
import 'package:flutter_ui_kit_obkm/src/res/styles.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  static List<MessageModel> messages = [
    MessageModel(
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus ",
        isRight: false,
        time: "08:30"),
    MessageModel(
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
        isRight: false,
        time: "08:30"),
    MessageModel(
        text: "Lorem ipsum dolor amet, consectetur.",
        isRight: true,
        time: "08:30"),
    MessageModel(text: "Consectetur", isRight: false, time: "08:30"),
    MessageModel(text: "ipsum .", isRight: true, time: "08:30")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24.w, 20.h, 24.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 24.r,
                      height: 24.r,
                      child: IconButton(
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          GetIt.I.get<NavigationService>().back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  TextFormField(
                    readOnly: true,
                    //false
                    autofocus: false,
                    // style: ,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(
                          left: 9.w,
                        ),
                        child: const Icon(Icons.search, color: Colors.black),
                      ),
                      prefixIconConstraints: BoxConstraints(
                          minHeight: 24.r,
                          maxHeight: 24.r,
                          minWidth: 41.w,
                          maxWidth: 41.r),
                      hintText: "Search conversations",
                      // hintStyle: textFieldPlaceholderTextStyle(context),
                      isDense: true,
                      filled: true,
                      fillColor: AppColors.greyC4,
                      focusedBorder: AppStyles.focusedTransparentBorder,
                      disabledBorder: AppStyles.focusedTransparentBorder,
                      enabledBorder: AppStyles.focusedTransparentBorder,
                      errorBorder: AppStyles.focusedTransparentBorder,
                      focusedErrorBorder: AppStyles.focusedTransparentBorder,
                      errorStyle: errorTextStyle(context),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onSaved: (val) {},
                    onEditingComplete: () {},
                    onChanged: (val) {},
                    // validator: (val) {},
                    onTap: () {},
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Justin Wan",
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 28.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: 45.r,
                        height: 45.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.r),
                          color: AppColors.greyC4,
                        ),
                        child: SizedBox(
                          width: 24.r,
                          height: 24.r,
                          child: IconButton(
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.h),
                      Container(
                        width: 45.r,
                        height: 45.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45.r),
                          color: AppColors.greyC4,
                        ),
                        child: SizedBox(
                          width: 24.r,
                          height: 24.r,
                          child: IconButton(
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.videocam,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // SizedBox(height: 30.h),
                ],
              ),
            ),
            SizedBox(height: 52.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(24.w, 44.h, 26.w, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffC4C4C4).withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: const Offset(0, -4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        itemCount: messages.length,
                        itemBuilder: (c, i) {
                          var showProfileBox = true;
                          if (i != 0) {
                            var currentChat = messages[i];
                            var previousChat = messages[i - 1];
                            showProfileBox =
                                currentChat.isRight != previousChat.isRight;
                          }
                          return _buildChat(
                            chat: messages[i],
                            showProfileBox: showProfileBox,
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 9.h, bottom: 9.h),
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.greyC4,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 25.r),
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              //false
                              autofocus: false,
                              // style: ,
                              decoration: InputDecoration(
                                hintText: "Aa",
                                // hintStyle: textFieldPlaceholderTextStyle(context),
                                isDense: true,
                                filled: true,
                                fillColor: AppColors.greyC4,
                                focusedBorder:
                                    AppStyles.focusedTransparentBorder,
                                disabledBorder:
                                    AppStyles.focusedTransparentBorder,
                                enabledBorder:
                                    AppStyles.focusedTransparentBorder,
                                errorBorder: AppStyles.focusedTransparentBorder,
                                focusedErrorBorder:
                                    AppStyles.focusedTransparentBorder,
                                errorStyle: errorTextStyle(context),
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              onSaved: (val) {},
                              onEditingComplete: () {},
                              onChanged: (val) {},
                              // validator: (val) {},
                              onTap: () {},
                            ),
                          ),
                          Container(
                            width: 45.r,
                            height: 45.r,
                            margin: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.r),
                              color: const Color(0xffF4F4F4),
                            ),
                            child: SizedBox(
                              width: 24.r,
                              height: 24.r,
                              child: IconButton(
                                visualDensity:
                                    VisualDensity.adaptivePlatformDensity,
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.send,
                                  color: Colors.black,
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
    );
  }

  _buildChat({required MessageModel chat, required bool showProfileBox}) {
    return chat.isRight
        ? Container(
            margin: EdgeInsets.only(bottom: 42.h),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Text(chat.time),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(18.w, 13.h, 18.w, 12.h),
                          decoration: BoxDecoration(
                            color: const Color(0xffD0D0D0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                              bottomLeft: Radius.circular(20.r),
                            ),
                          ),
                          child: Text(
                            chat.text,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(bottom: 42.h),
            child: IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Visibility(
                    visible: showProfileBox,
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Container(
                        width: 40.r,
                        height: 40.r,
                        color: const Color(0xffD0D0D0),
                      ),
                    ),
                  ),
                  SizedBox(width: 21.w),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                            padding:
                                EdgeInsets.fromLTRB(18.w, 13.h, 18.w, 12.h),
                            decoration: BoxDecoration(
                              color: const Color(0xffD0D0D0),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.r),
                                topRight: Radius.circular(20.r),
                                bottomRight: Radius.circular(20.r),
                              ),
                            ),
                            child: Text(
                              chat.text,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: showProfileBox,
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: Text(chat.time),
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

class ChatModel {
  final int chatId;
  final UserModel sender;
  final UserModel receiver;
  final MessageModel message;
  final String sentAt;

  ChatModel(this.chatId, this.sender, this.receiver, this.message, this.sentAt);
}

class UserModel {
  final int userId;

  UserModel(this.userId);
}

class MessageModel {
  final String text;

  /// Time and is right is supposed to be calculated from chat model,
  /// these wew used here to increase speed, it ca be improved at a later
  /// time
  final String time;
  final bool isRight;

  MessageModel({required this.text, required this.time, required this.isRight});
}
