import 'package:flutter/material.dart';
import 'package:top_coin/res/dimens.dart';

import '../models/coin_entity.dart';
import '../repository/coin_repository.dart';
import 'coin_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';
  var coinRespository = CoinRepository();
  List<CoinEntity> listSearchCoin = List.empty();
  List<CoinEntity> listCoinAll = List.empty();

  @override
  void initState() {
    super.initState();
    getAPI();
  }
  void getAPI() async{
    await coinRespository.getListCoin();
    listCoinAll = [...CoinRepository.listCoinModel];
    listSearchCoin = [...listCoinAll];
    setState(() {});
  }
  void _setText() {
    if(_searchText.length > 0){
      listSearchCoin.clear();
      listSearchCoin = listCoinAll.where((coinEntiy) => coinEntiy.name?.toLowerCase().contains(_searchText) == true).toList();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          //height: 60.w,
          child: TextField(
            key: Key("Search"),
            controller: _searchController,
            onChanged: (text) => {
              setState(() {
                   _searchText = text;
                   _setText();
              })
            },
            style: TextStyle(fontSize: 16.w, height: 2.0,),
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search_outlined),
              hintText: 'Search Coin',
            ),
          ),
        ),
        (listSearchCoin.length > 0) ? Expanded(
          child: ListView.builder(
                itemCount: listSearchCoin.length,
                itemBuilder: (BuildContext context, index){
                return CoinItem(coinItem: listSearchCoin[index]);
            },
          ),
        ) : Container( margin: EdgeInsets.all(10.w),
            child: Text('Không tìm thấy', style: TextStyle(fontSize: 20.w),))
      ],
    );
  }
}
