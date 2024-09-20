import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            SearchTextFieldAndNotficationButtonSection(),
            CustomOfferContainer()
          ],
        ),
      ),
    ));
  }
}

class CustomOfferContainer extends StatelessWidget {
  const CustomOfferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              title: Text("A summer surprise",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              subtitle: Text("Cashback 20%",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.secondryColor,
                  borderRadius: BorderRadius.circular(160)),
              height: 130,
              width: 130,
            ),
          )
        ],
      ),
    );
  }
}

class SearchTextFieldAndNotficationButtonSection extends StatelessWidget {
  const SearchTextFieldAndNotficationButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomSearchTextField()),
        SizedBox(
          width: 10,
        ),
        CustomNotficationButton()
      ],
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          hintText: "Find Product",
          hintStyle: const TextStyle(
            fontSize: 18,
          )),
    );
  }
}

class CustomNotficationButton extends StatelessWidget {
  const CustomNotficationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active_outlined,
            size: 30,
            color: Colors.grey[600],
          )),
    );
  }
}
