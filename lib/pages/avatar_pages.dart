import 'package:flutter/material.dart';

class AvatarPages extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/V3YUL2OH4RF4VHJ25NLBW7KGZY.jpg'),
              radius: 26.0,
            ),
            padding: EdgeInsets.all(5.0),
          ),
          
          Container(
            child: CircleAvatar(child: Text('G'), backgroundColor: Colors.white,),
            padding:EdgeInsets.all(5.0),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: Center(child: FadeInImage(
        fadeInDuration: Duration(milliseconds: 200),
        placeholder: AssetImage('assets/jar-loading.gif'), 
        image: NetworkImage('https://3.bp.blogspot.com/-dL7cP9aj6FU/WSOI0GHwPJI/AAAAAAAHqD0/I_yJ4kSqkzw_OIBTxiiQf5-cyRsw4cpMACLcB/s1600/groot-baby1.jpg')))

    ) ;
  }
}