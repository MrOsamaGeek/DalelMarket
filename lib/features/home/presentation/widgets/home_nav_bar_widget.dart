import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: const Radius.circular(10))),
    );
  }
}

List<Widget> _buildScreen() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesHomeActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesHome)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesShoppingCartActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesShoppingCart)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesSearchActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesSearch)),
    PersistentBottomNavBarItem(
        icon: SvgPicture.asset(Assets.assetsImagesPersonActive),
        inactiveIcon: SvgPicture.asset(Assets.assetsImagesPerson)),
  ];
}
