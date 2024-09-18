import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../controller/auth/forgetpassword/verficationcodePasswordcontrollaer.dart';
import '../../../../core/constant/colors.dart';
import 'HeadVerficationSection.dart';

class VerifycodePasswordviewBody
    extends GetView<VerficationcodePasswordcontrollaerImp> {
  const VerifycodePasswordviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 32),
      child: Column(
        children: [
          const HeadVerficationSection(),
          Spacer(),
          OtpTextField(
            showCursor: false, borderRadius: BorderRadius.circular(16),
            numberOfFields: 5, fieldWidth: 50,
            borderColor: AppColor.primaryColor,
            focusedBorderColor: AppColor.primaryColor,
            showFieldAsBox: true,

            onSubmit: (String verificationCode) {
              controller.onComplete(verificationCode);
            }, // end onSubmit
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {},
              child: const Text(
                "Resend OTP Code",
                textAlign: TextAlign.end,
                style: TextStyle(color: AppColor.grey),
              )),
        ],
      ),
    );
  }
}
