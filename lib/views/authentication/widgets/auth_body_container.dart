import 'package:chit_chat_app/helper/sized_box.dart';
import 'package:chit_chat_app/views/authentication/widgets/login_body.dart';
import 'package:chit_chat_app/views/authentication/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthBodyContainer extends StatelessWidget {
  const AuthBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: Column(
                            children: [
                              Text(
                                'Login',
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.labelLarge
                                    : Theme.of(context).textTheme.labelMedium,
                              ),
                              8.height,
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                width: isLogin.value ? 100 : 0,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: Column(
                            children: [
                              Text(
                                'Register',
                                style: isLogin.value
                                    ? Theme.of(context).textTheme.labelMedium
                                    : Theme.of(context).textTheme.labelLarge,
                              ),
                              8.height,
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                width: isLogin.value ? 0 : 100,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () =>
                      isLogin.value ? const LoginBody() : const RegisterBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
