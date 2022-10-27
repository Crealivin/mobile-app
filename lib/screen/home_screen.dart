
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isInfluence = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            floating: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/background/bg_landingPage.png',
                fit: BoxFit.fill,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Image.asset(
                "assets/icon/brand_icon.png",
                //fit: BoxFit.contain,
                height: 72,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(350),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 103, left: 103),
                    child: Text(
                      'Intoduction Headline',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/choose-signin');
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: const Text(
                        'Sudah punya akun',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 83,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                      left: 36,
                      right: 36,
                      bottom: 56,
                    ),
                    child: Text(
                      'What to expect from Crealivin?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    'Value 1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet, consecr adipiscing elit. Mauris volutpat amet pulvinar.')
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Image(
                              image: AssetImage('assets/icon/value.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Image(
                              image: AssetImage('assets/icon/value.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    'Value 2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consecr adipiscing elit. Mauris volutpat amet pulvinar.',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    'Value 3',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet, consecr adipiscing elit. Mauris volutpat amet pulvinar.')
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Image(
                              image: AssetImage('assets/icon/value.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Image(
                              image: AssetImage('assets/icon/value.png'),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    'Value 4',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet, consecr adipiscing elit. Mauris volutpat amet pulvinar.')
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 36,
                      right: 36,
                    ),
                    child: Text(
                      'Ready to get started?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 49,
                      right: 49,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vulputate volutpat platea eu eu eget sollicitudin nulla quisque sed. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 131, right: 131),
                  child: SizedBox(
                    //width: 126.0,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
