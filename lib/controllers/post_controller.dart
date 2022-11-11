import 'package:apicall/services/api_services.dart';
import 'package:get/get.dart';
import 'package:apicall/models/post_models.dart';

class PostController extends GetxController{
  var isLoading = true.obs;
  var postlist = <PostModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getAllPost();
    super.onInit();
  }
  void getAllPost() async{
    var data = await ApiService().fetchPost();
    if(data.length>0)
    {
      postlist.clear();
      isLoading(false);
      postlist.addAll(data);
    }
  }
}