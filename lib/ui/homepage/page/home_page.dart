import 'package:flutter/material.dart';
import 'package:uifinanceiro/ui/homepage/widgets/badge_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/card_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/navbar_custom.dart';
import 'package:uifinanceiro/ui/homepage/widgets/send_again_homepage_widget.dart';
import 'package:uifinanceiro/ui/homepage/widgets/transactions_homepage_widget.dart';
import 'package:uifinanceiro/utils/styles/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
            child: Image.asset('assets/images/fundohomepage.png'),
          ),
          const CardHomepageWidget(),
          const BadgeHomepageWidget(),
          const TransactionsHomepageWidget(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                   top: 608, left: 20, right: 20, bottom: 10),
              child: Column(
               children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Send Again', 
                                  style: context.textStyles.textPrimaryFontSemiBold.copyWith(
                                     fontSize: 20
                                 )),
                      ),
                      Text('See all', 
                        style: context.textStyles.textPrimaryFontRegular.copyWith(
                         fontSize: 18
                      )), 
                    ],
                  ),
                  const SendAgainHomepageWidget()
              ]
            ),
          ),
          ),
        ]),
      ),
      bottomNavigationBar: const NavBarCustom(),
    );
  }
}
