import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';

class ServiceWidget extends StatelessWidget {
  final bool isSquare;
  const ServiceWidget({this.isSquare = false, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.productRoute),
      child: Container(
        width: isSquare ? 0.4.w(context) : 0.7.w(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: isSquare
            ? Column(
                children: [
                  Container(
                    width: 1.w(context),
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(10),
                        topStart: Radius.circular(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 1.w(context),
                    height: 80,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: ColorManger.amber,
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Dubai Crocodile Park Ticket',
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyLarge!
                              .copyWith(fontSize: 14),
                        ),
                        const Spacer(),
                        Text(
                          '${AppString.aed} 35',
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyLarge!
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Container(
                    width: 0.3.w(context),
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.expo2020dubai.com/-/media/expo2020/dining/talabat/update/talabat-kitchen-hero-1920x1080.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(10),
                        topStart: Radius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: const BoxDecoration(
                        color: ColorManger.indigo,
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                          topEnd: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Dubai Crocodile Park Ticket',
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontSize: 14),
                          ),
                          const Spacer(),
                          Text(
                            '${AppString.aed} 35',
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyLarge!
                                .copyWith(fontSize: 14),
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
}
