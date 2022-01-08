import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    Key? key,

    required this.image,
    required this.name,
    required this.username
  }) : super(key: key);

  final String image, name, username;
  // final Function() edit;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.25,
            height: size.width * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('$image'),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          '$name',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            overflow: TextOverflow.ellipsis
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.edit,
                        color: Colors.red[600],
                        size: 20,
                      )
                    ],
                  ),
                  Text(
                    '@$username',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
