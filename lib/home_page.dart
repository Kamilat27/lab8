import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lab8/constants/app_colors.dart';
import 'package:lab8/constants/app_text_styles.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lab8/generated/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      appBar: AppBar(
        title: Text(
          LocaleKeys.app_title,
          style: AppTextStyles.px20W900White,
        ).tr(),
        backgroundColor: AppColors.backgroundAppBar,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Text(
                LocaleKeys.hello,
                style: AppTextStyles.px30W500Grey20,
              ).tr(),
              SizedBox(height: 20),
              Text("what_way", style: AppTextStyles.px30W500Grey20).tr(),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text(LocaleKeys.pay_by_bank_card, style: AppTextStyles.px20W500Green)
                    .tr(),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "pay_clicked".tr(),
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: AppColors.white,
                      fontSize: 16.0
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: Text("EN",style: AppTextStyles.px14200DeepBlue,),
                    onPressed: () async {
                      await context.setLocale(Locale('en'));
                    },
                  ),
                  ElevatedButton(
                    child: Text("RU", style: AppTextStyles.px14200DeepBlue),
                    onPressed: () async {
                      await context.setLocale(Locale('ru'));
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "need_help".tr(),
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: AppColors.white,
                          fontSize: 16.0
                      );
                    },
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("need_help", style: AppTextStyles.px14200DeepBlue).tr()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
