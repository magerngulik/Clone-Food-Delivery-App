import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_ui_food_dellivery/riverpod_util.dart';
import '../view/search_view.dart';

class SearchController extends ChangeNotifier implements HyperController {
  SearchView? view;
  var menusearch = [
    {
      "title": "Mayo Ressole",
      "image":
          "https://images.unsplash.com/photo-1587314168485-3236d6710814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1078&q=80",
      "jarak": "1.4 km",
      "rating": 3.2,
      "price": 2.0,
      "submenu": [
        {
          "title-sub": "Butter Cream Lemon",
          "image-sub":
              "https://cdn.idntimes.com/content-images/post/20200626/gluten-free-lemon-cupcakes-7-720x720-6a3c8fac7ddff1ed894e0d2e70a2320c.jpg",
          "price-sub": 5.5,
        },
        {
          "title-sub": "Buttercream Vanila",
          "image-sub":
              "https://cdn.idntimes.com/content-images/post/20200626/capture-190dfa00d7d5f376ab6cde9335794dc9.PNG",
          "price-sub": 5.5,
        }
      ]
    },
    {
      "title": "Bakso Taichan",
      "image":
          "https://asset.kompas.com/crops/ndTJxmqDsFtJgFirarh4XTzgriw=/2x0:484x321/750x500/data/photo/2021/07/26/60fe1617e2ced.png",
      "jarak": "1 km",
      "rating": 5.0,
      "price": 1.5,
      "submenu": [
        {
          "title-sub": "Bakso Malang",
          "image-sub":
              "https://asset.kompas.com/crops/NWLD3RCHdItdaGnd71jO5vZkYJc=/0x129:1000x796/750x500/data/photo/2020/03/03/5e5e292daa840.jpg",
          "price-sub": 2.0,
        },
        {
          "title-sub": "Bakso Bakar",
          "image-sub":
              "https://asset.kompas.com/crops/IyEuPV87_mbj2ErUXD2MsjvkrYc=/60x0:902x561/750x500/data/photo/2020/09/29/5f72e7cb25098.jpg",
          "price-sub": 2.0,
        }
      ]
    }
  ];
}

final searchController = ChangeNotifierProvider<SearchController>((ref) {
  return SearchController();
});
