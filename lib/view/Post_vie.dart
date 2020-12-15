import 'package:counterwithprovider/controller/Post_services.dart';
import 'package:counterwithprovider/model/Oist_model.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {

  PostServices postServices = PostServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder(
      future: postServices.getPostData(),
      builder: (context, snapshot) {
        List<UserPosts> date=snapshot.data;

        if(snapshot.hasData){
          return ListView.builder(

          itemCount: date.length
          ,itemBuilder: (context, index){
            return Container(child: Text(date[index].id.toString()));
          },);
        }return Center(
          child: CircularProgressIndicator(),
        );

      },),);
  }
}
