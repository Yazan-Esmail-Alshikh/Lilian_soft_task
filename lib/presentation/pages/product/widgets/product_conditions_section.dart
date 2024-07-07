import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class ProductConditionsSection extends StatelessWidget {
  const ProductConditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: ColorManger.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.conditions,
            style: context.textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  'But I must explain to you how all this mistaken idea',
                  style: context.textTheme.headlineSmall!,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'painful : ',
                style: context.textTheme.headlineSmall!.copyWith(
                  color: ColorManger.black,
                ),
              ),
              Text(
                'Test',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'painful : ',
                style: context.textTheme.headlineSmall!.copyWith(
                  color: ColorManger.black,
                ),
              ),
              Text(
                'Test',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: ColorManger.grey,
                size: 10,
              ),
              const SizedBox(width: 5),
              Text(
                'painful : ',
                style: context.textTheme.headlineSmall!.copyWith(
                  color: ColorManger.black,
                ),
              ),
              Text(
                'Test',
                style: context.textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorManger.grey,
                    size: 10,
                  ),
                ),
                TextSpan(
                  text: ' ${AppString.pleaseNote} : ',
                  style: context.textTheme.headlineSmall!.copyWith(
                    color: ColorManger.black,
                  ),
                ),
                TextSpan(
                  text:
                      'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful',
                  style: context.textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
