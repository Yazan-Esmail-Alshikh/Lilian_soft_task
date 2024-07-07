import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/widgets/deals_widget.dart';
import 'package:lilian_soft_task/presentation/widgets/product_deals_widget.dart';
import 'package:lilian_soft_task/presentation/widgets/product_widget.dart';
import 'package:lilian_soft_task/presentation/widgets/service_widget.dart';

class CustomHomeSection extends StatelessWidget {
  final String sectionName;
  final bool withService;
  final bool withProductDeals;
  final bool isServiceSquare;
  final bool withDealsWidgets;

  const CustomHomeSection(
      {required this.sectionName,
      this.withService = true,
      this.withProductDeals = false,
      this.isServiceSquare = false,
      this.withDealsWidgets = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (withService) ...[
          Text(
            sectionName,
            style: context.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: isServiceSquare ? 160 : 100,
            child: ListView.separated(
              itemBuilder: (context, index) => ServiceWidget(
                isSquare: isServiceSquare,
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        Row(
          children: [
            Text(
              'Featured deals on $sectionName',
              style: context.textTheme.labelLarge!.copyWith(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              AppString.viewAll,
              style: context.textTheme.displayMedium,
            ),
            const RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.arrow_drop_down,
                color: ColorManger.indigo,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: List.generate(
              5,
              (index) => withProductDeals
                  ? const ProductDealsWidget()
                  : const ProductWidget(),
            ),
          ),
        ),
        if (withDealsWidgets) ...[
          const SizedBox(
            height: 10,
          ),
          Text(
            'Need more deals on $sectionName',
            style: context.textTheme.labelLarge!.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: GridView.count(
              clipBehavior: Clip.none,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.3,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                16,
                (index) => const DealsWidget(),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
