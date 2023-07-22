import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widget/custom_bottom_navigation_bar.dart';
import 'custom_widget/custom_reusable_small_card.dart';
import 'custom_widget/custom_reusable_large_card.dart';
import 'custom_widget/custom_large_card_Information.dart';
import 'constant.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableSmallCard(
                      containerHeight: 50.0,
                      containerWidth: 50.0,
                      onChick: null,
                      customBoxColor: Color(0xFFECEFF2),
                      cardChild: Icon(
                        kIconMedal,
                        color: Colors.red,
                      ),
                      titleText: '',
                    ),
                    ReusableSmallCard(
                      containerHeight: 50.0,
                      containerWidth: 50.0,
                      onChick: null,
                      customBoxColor: Colors.transparent,
                      cardChild: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/dummy.png'),
                      ),
                      titleText: '',
                    ),
                  ],
                ),

                // top text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text('Hallo Adrian', style: kGreetingLabel),
                    SizedBox(height: 10),
                    Text("Welcome Insurance, let's find the best policy",
                        style: kSecondaryColorTextLabel),
                    SizedBox(height: 20),
                    Text('Plan for your future!', style: kSizeAndBoldTextLabel),
                  ],
                ),

                //container for DropDown
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 35.0,
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    underline: Container(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Plan 1',
                        child: Text('Plan 1'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Plan 2',
                        child: Text('Plan 2'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Plan 3',
                        child: Text('Plan 3'),
                      ),
                    ],
                    hint: const Text('My Plan'),
                    dropdownColor: Colors.white,
                    iconEnabledColor: Colors.black,
                  ),
                ),

                //container for small card (ReusableSmallCard)
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: const [
                      Expanded(
                        child: ReusableSmallCard(
                          containerHeight: 50.0,
                          containerWidth: 50.0,
                          onChick: null,
                          customBoxColor: kSmallBoxColorInvest,
                          cardChild: Icon(
                            kSmallBoxIconInvest,
                            color: Colors.red,
                          ),
                          titleText: 'Investment',
                        ),
                      ),
                      Expanded(
                        child: ReusableSmallCard(
                          containerHeight: 50.0,
                          containerWidth: 50.0,
                          onChick: null,
                          customBoxColor: kSmallBoxColorFuture,
                          cardChild: Icon(
                            kSmallBoxIconFuture,
                            color: Colors.blue,
                          ),
                          titleText: 'Future',
                        ),
                      ),
                      Expanded(
                        child: ReusableSmallCard(
                          containerHeight: 50.0,
                          containerWidth: 50.0,
                          onChick: null,
                          customBoxColor: kSmallBoxColorFinance,
                          cardChild: Icon(
                            kSmallBoxIconFinance,
                            color: Colors.purple,
                          ),
                          titleText: 'Finance',
                        ),
                      ),
                      Expanded(
                        child: ReusableSmallCard(
                          containerHeight: 50.0,
                          containerWidth: 50.0,
                          onChick: null,
                          customBoxColor: kSmallBoxColorService,
                          cardChild: Icon(
                            kSmallBoxIconService,
                            color: Colors.green,
                          ),
                          titleText: 'Future',
                        ),
                      ),
                    ],
                  ),
                ),

                //container of what we offer
                Container(
                  height: 75,
                  margin: const EdgeInsets.only(top: 15, right: 25),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFF0F0F2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('This is what we offer',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text('Become thriving',
                              style: kSecondaryColorTextLabel),
                        ],
                      ),
                      const Icon(FontAwesomeIcons.ellipsisVertical),
                    ],
                  ),
                ),

                // container for additional features
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                              child: Text(
                            'Additional features',
                            style: kSizeAndBoldTextLabel,
                          )),
                          GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'See More',
                                style: kSecondaryColorTextLabel,
                              )),
                          const SizedBox(
                            width: 25,
                          )
                        ],
                      ),

                      const SizedBox(height: 10),
                      // Row for ReusableLargeCard
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            ReusableLargeCard(
                              containerHeight: 250,
                              containerWidth: 300,
                              containerImage: 'images/family.jpg',
                              largeCardChild: CardInformation(
                                infoTextPrimary: 'I want to protect my Family',
                                infoTextSecondary: 'View More',
                                onPresViewMore: null,
                                onCheckHeart: null,
                              ),
                            ),
                            ReusableLargeCard(
                              containerHeight: 250,
                              containerWidth: 300,
                              containerImage: 'images/graduation.jpg',
                              largeCardChild: CardInformation(
                                infoTextPrimary: 'I want to protect my Future',
                                infoTextSecondary: 'View More',
                                onPresViewMore: null,
                                onCheckHeart: null,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
