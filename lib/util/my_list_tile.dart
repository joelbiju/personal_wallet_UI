// ignore_for_file: use_super_parameters
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {

  final String iconImagePath;
  final String titleTitle;
  final String titleSubTitle;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.titleTitle,
    required this.titleSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //icon
                      Row(
                        children: [
                          Container(
                        padding: EdgeInsets.all(12),
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(iconImagePath),
                      ),
              
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(titleTitle,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(titleSubTitle,style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                          ),
                        ],
                      ),
                        ],
                      ),
      
      
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
    );
  }
}