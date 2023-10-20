import 'package:flutter/material.dart';
import 'package:my_ecommerce/components/appbar.dart';
import 'package:my_ecommerce/database/database.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteStateScreen();
}

class _FavoriteStateScreen extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(shape: BeveledRectangleBorder()),
      appBar: AppBar(
        title: const AppbarTitle(),
        actions: const [AppbarActionWidget()],
      ),
      body: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        crossAxisCount: 4,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: MyColors.primarywhite,
          child: Stack(
            children: <Widget>[
              GridTile(
                  child: Column(
                children: [
                  Image.asset(favroiteImages[index].image),
                  Text(favroiteImages[index].productDescription),
                  Text(favroiteImages[index].price),
                  // Icon(favroiteImages[index].icon)
                ],
              ))
            ],
          ),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.54 : 3.05),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
