import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String titel;
  final String subTitel;

  OnBoardingModel(
      {required this.imagePath, required this.titel, required this.subTitel});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding1,
    titel: 'Explore The history withDalel in a smart way',
    subTitel: 'Using our app’s history libraries you can find many historical periods',
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding2,
    titel: 'From every placeon earth',
    subTitel: 'A big variety of ancient placesfrom all over the world',
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnBoarding3,
    titel: 'Using modern AI technologyfor better user experience',
    subTitel: 'AI provide recommendations and helpsyou to continue the search journey',
  )
];
