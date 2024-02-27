import 'package:flutter/material.dart';
import 'package:islami_app/pages/hadeth_page/models/hadeth_model.dart';
import 'package:islami_app/pages/quran_page/models/sura_model.dart';
import 'package:islami_app/pages/quran_page/pages/sura_details.dart';

import '../page/hadeth_details_page.dart';

class HadethNameWidget extends StatelessWidget {
  final HadethModel hadethModel;
  const HadethNameWidget({
    super.key,
    required this.hadethModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          HadethDetailsPage.routeName,
          arguments: HadethModel(
            hadethName: hadethModel.hadethName,
            hadethContent: hadethModel.hadethContent,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadethModel.hadethName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}