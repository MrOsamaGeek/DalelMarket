import 'package:dalel/core/function/custom_toast.dart';
import 'package:dalel/core/function/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast('Check Your Email To Reset Your Password');
          customReplacementNavigate(context, '/signIn');
        } else if (state is ResetPasswordFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
              key: authCubit.forgoPasswordFormKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: AppStrings.emailAddress,
                    onChanged: (emailAddress) {
                      authCubit.emailAddress = emailAddress;
                    },
                  ),
                  const SizedBox(height: 129),
                  state is SignInLoadingState
                      ? CircularProgressIndicator(color: AppColors.primaryColor)
                      : CustomBtn(
                          onPressed: () {
                            if (authCubit.forgoPasswordFormKey.currentState!
                                .validate()) {
                              authCubit.resetPasswordWithLink();
                            }
                          },
                          text: AppStrings.sendResetPasswordLink),
                ],
              )),
        );
      },
    );
  }
}
