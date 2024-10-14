//import 'package:bon_appetit/pages/login_page.dart';
import 'package:bon_appetit/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bon_appetit/widgets/btn_widgets.dart';
import 'package:bon_appetit/widgets/reuse_page.dart';
//import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              ReusePage(
                image: 'assets/images/orang1.png',
                title: 'Welcome to Bonapetit!',
                description: 'At Bon Appetit, we believe\n that cooking should be enjoyable\nand accessible to everyone.',
                backgroundColor: Color.fromARGB(255, 252, 250, 245), 
                titleFontWeight: FontWeight.w800,
                titleColor:Color.fromARGB(255, 80, 31, 86),
                descriptionColor: Color.fromARGB(255, 253, 224, 99),
                descriptionFontWeight: FontWeight.w500,
                imageHeight: 300,
                imageWidth: 300,
              ),
              ReusePage(
                image: 'assets/images/orang2.png',
                title: 'Explore Recipe Collection',
                description: 'Browse through hundreds of curated recipes,\n complete with images, ingredients, and \nstep-by-step instructions.',
                backgroundColor: Color.fromARGB(255, 252, 250, 245), 
                titleFontWeight: FontWeight.w800,
                titleColor:Color.fromARGB(255, 80, 31, 86),
                descriptionColor: Color.fromARGB(255, 253, 224, 99),
                descriptionFontWeight: FontWeight.w500,
                imageHeight: 230,
                imageWidth: 166,
                imagePadding:  EdgeInsets.only(bottom:50), 
              ),
              ReusePage(
                image: 'assets/images/orang3.png',
                title: 'Sign Up for an Account!',
                description: 'Join our community to unlock all\nfeatures and personalize your experience.',
                backgroundColor: Color.fromARGB(255, 252, 250, 245), 
                titleFontWeight: FontWeight.w800,
                titleColor:Color.fromARGB(255, 80, 31, 86),
                descriptionColor: Color.fromARGB(255, 253, 224, 99),
                descriptionFontWeight: FontWeight.w500,
                imageHeight: 230,
                imageWidth: 176,
                imagePadding:  EdgeInsets.only(bottom:50), 
              ),
            ],
          ),
          
          Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: _currentPage == 2
                ? BtnWidgets(
                    label: 'Get Started',
                    onPressed: () {
                     Get.offNamed('/signuppage');
                      },
                  )
                : const SizedBox.shrink(), 
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => _buildIndicator(index)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: _currentPage == index ? 30 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentPage == index ? const Color.fromARGB(255, 246, 230, 88) : const Color.fromARGB(255, 75, 19, 80),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
