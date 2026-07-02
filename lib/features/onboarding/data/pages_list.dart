import 'package:test_agent_mobile/core/utils/app_assets.dart';
import 'package:test_agent_mobile/features/onboarding/data/onboarding_page_model.dart';

const List<OnboardingPageModel> pages =  [
    OnboardingPageModel(
      image: Assets.assetsImagesOnboarding1,
      title: 'No Configuration\nfiles or brittle\nselectors',
      subtitle: 'Just give it the URL — Nomad\nexplores the rest.',
    ),
    OnboardingPageModel(
      image: Assets.assetsImagesOnboarding2,
      title: 'AI navigates your\nproduct like a real\nuser',
      subtitle:
          'Interprets interface context and validates\njourneys with the patience of a careful\nhuman tester.',
    ),
    OnboardingPageModel(
      image: Assets.assetsImagesOnboarding3,
      title: 'Watch it happen\nin real time',
      subtitle:
          'Insightful observation, not noisy reporting\n— see pass/fail status instantly.',
    ),
    OnboardingPageModel(
      image: Assets.assetsImagesOnboarding4,
      title: 'Detailed logs,\nscreenshots, and\nclear verdicts',
      subtitle:
          'Everything your team needs to\ntriage faster, without drowning in logs.',
    ),
  ];