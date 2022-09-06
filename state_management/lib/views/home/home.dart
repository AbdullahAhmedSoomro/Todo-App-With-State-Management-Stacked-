import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:state_management/viewmodelx/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => ,
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${viewModel.counter}"),
            ElevatedButton(
                onPressed: () {
                  viewModel.increment();
                },
                child: Text("Add"))
          ],
        )),
      ),
    );
  }
}
