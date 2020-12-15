import 'package:counterwithprovider/model/Oist_model.dart';
import 'package:dio/dio.dart';

class PostServices{
Dio dio =Dio();

getPostData()async{
  Response response =await dio.get("https://jsonplaceholder.typicode.com/posts");

  List<UserPosts> date=[];
  if(response.statusCode==200){
    print(response.data);
    for(var item in response.data){
      date.add(UserPosts.fromJson(item));
    }
    return date;
//    return response.data;

  }

}
}