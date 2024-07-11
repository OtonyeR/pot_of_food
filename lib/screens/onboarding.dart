import 'package:flutter/material.dart';
import 'package:pot_of_food/components/styles/colors.dart';
import 'package:pot_of_food/screens/home.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  itemCount: demoData.length,
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      image: demoData[index]["Illustration"],
                      title: demoData[index]["title"],
                      text: demoData[index]["text"],
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        demoData.length,
                        (index) =>
                            AnimatedDot(isActive: index == _selectedIndex),
                      ),
                    ),
                    const Spacer(),
                    FilledButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.red, width: 1),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 8),
                        ),
                      ),
                      onPressed: () {
                        if (_selectedIndex < demoData.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                      child: Text(_selectedIndex < demoData.length - 1
                          ? 'Next'
                          : 'Get Started'),
                    )
                  ],
                ),
              ),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image, title, text;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              foregroundColor: Colors.red,
              side: const BorderSide(color: Colors.red, width: 1),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            child: const Text('Skip'),
          ),
          const Spacer(flex: 2),
          Center(
            child: Image.asset(
              image,
              // height: 250,
              scale: 1.35,
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class AnimatedDot extends StatelessWidget {
  final bool isActive;

  const AnimatedDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 10,
      width: isActive ? 20 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "Illustration": "assets/undraw_diet_ghvw 1.png",
    "title": "Create your own bespoke menu whenever you want",
    "text": "With just a click, you can create how your meal plan",
  },
  {
    "Illustration": "assets/undraw_empty_cart_co35 1.png",
    "title": "Personalize your meal plans, recipes and shopping lists",
    "text": "Select what ingredients goes into your meal while you cook",
  },
  {
    "Illustration": "assets/Chef-cuate 1.png",
    "title": "Choose your preferred chef to join you in making your meal",
    "text": "Your favourite chef is just a click away",
  },
];
