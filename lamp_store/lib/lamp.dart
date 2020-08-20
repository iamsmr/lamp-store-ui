import 'package:flutter/material.dart';
import 'package:lamp_store/constants.dart';

class LampItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            height: 115,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 42,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffB6C2DD).withOpacity(.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(Icons.bento, color: primaryColor),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'LAMP',
                      style: TextStyle(
                        fontSize: 27,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Deft accessories',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  height: 42,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffB6C2DD).withOpacity(.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(Icons.favorite, color: primaryColor),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top: 50),
              height: 310,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    'https://media.4rgos.it/i/Argos/8793209_R_Z001A?w=750&h=440&qlt=70',
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  _buildDot(false),
                  _buildDot(true),
                  _buildDot(false),
                  _buildDot(false),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TABLE LAMP',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.indigo, size: 20),
                        Icon(Icons.star, color: Colors.indigo, size: 20),
                        Icon(Icons.star, color: Colors.indigo, size: 20),
                        Icon(Icons.star, color: Colors.indigo, size: 20),
                        Icon(Icons.star, size: 20),
                        Icon(Icons.star, size: 20),
                        SizedBox(width: 10),
                        Text('360 Review')
                      ],
                    )
                  ],
                ),
                Spacer(),
                Text(
                  '\$ 90',style:
                  TextStyle(
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            
          )
        ],
      ),
    );
  }

  _buildDot(bool selected) {
    return Container(
      margin: EdgeInsets.only(left: 4, top: 12),
      height: 9,
      width: selected ? 12 : 9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: selected ? Colors.indigo : Color(0xffB6C2DD)),
    );
  }
}
