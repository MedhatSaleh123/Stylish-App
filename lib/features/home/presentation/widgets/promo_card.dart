import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 169,
            color: Color(0xffF8F8F9),
          ),
          Container(
            width: 11,
            height: 171,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerLeft,
                colors: [Color(0xffEFAD18), Color(0xffF8D7B4)],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset("assets/home/flat1.png"),
          ),
          Positioned(
            top: 20,
            bottom: 0,
            right: 10,
            child: Column(
              children: [
                const Text(
                  "Flat and Heels",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Stand a chance to get rewarded",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 145,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFF4F79),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Visit now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
