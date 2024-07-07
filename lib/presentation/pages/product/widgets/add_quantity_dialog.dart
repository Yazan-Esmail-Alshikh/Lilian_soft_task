import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/app/extension.dart';
import 'package:lilian_soft_task/presentation/resources/app_string.dart';
import 'package:lilian_soft_task/presentation/resources/color_manger.dart';

class AddQuantityDialog extends StatelessWidget {
  const AddQuantityDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorManger.white,
      insetPadding: EdgeInsets.zero,
      surfaceTintColor: ColorManger.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 0.7.w(context),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.pleaseAddQuantity,
              style: context.textTheme.labelLarge,
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    AppString.ok,
                    style: context.textTheme.displayLarge,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
