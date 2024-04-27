import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_task/core/utils/hex_color/hex_color.dart';
import 'package:mind_task/core/utils/shared_widgets/failed_widget.dart';
import 'package:mind_task/core/utils/shared_widgets/loading_home.dart';
import 'package:mind_task/view/widgets/headline.dart';
import 'package:mind_task/view/widgets/input_field.dart';
import 'package:mind_task/view/widgets/product_item.dart';
import 'package:mind_task/viewmodel/navigation_bar_viewmodel/navigation_bar_viewmodel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarViewmodel, NavigationBarViewmodelState>(
      builder: (context, state) {
        if (state.isHomeDataLoading) {
          return const LoadingHomeData();
        }
        if (state.isHomeDataFailed) {
          return FailedWidget(
            message: state.errorMessage!,
            onRetry: () {
              context.read<NavigationBarViewmodel>().getHomeData();
            },
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            context.read<NavigationBarViewmodel>().getHomeData();
          },
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SafeArea(
                  child: InputField(
                    controller: searchController,
                    hintText: 'home.search'.tr(),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              // slider
              SliverToBoxAdapter(
                child: CarouselSlider.builder(
                  itemCount: state.homeData!.sliders.length,
                  itemBuilder: (context, index, realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: state.homeData!.sliders[index].image,
                        fit: BoxFit.fill,
                        placeholder: (context, url) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: .8,
                    enlargeCenterPage: true,
                    reverse: true,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 25)),
              // categories
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .1,
                  child: ListView.separated(
                    itemCount: state.homeData!.categories.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: CachedNetworkImage(
                                imageUrl:
                                    state.homeData!.categories[index].icon,
                                placeholder: (context, url) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                              ),
                            ),
                          ),
                          Text(state.homeData!.categories[index].catName),
                        ],
                      );
                    },
                  ),
                ),
              ),

              /// products
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Divider(),
                    Headline(
                      title: 'home.products'.tr(),
                      onMore: () {},
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .5,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.homeData!.products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 25,
                      childAspectRatio: .75,
                    ),
                    itemBuilder: (context, index) {
                      return ProductItem(
                        product: state.homeData!.products[index],
                        currencyColor: HexColor('#CE9D22'),
                        isDiscount: true,
                      );
                    },
                  ),
                ),
              ),

              /// selected products
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Divider(),
                    Headline(
                      title: 'home.selected_products'.tr(),
                      onMore: () {},
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.homeData!.selectedProducts.length,
                    itemBuilder: (context, index) {
                      return ProductItem(
                        product: state.homeData!.selectedProducts[index],
                        currencyColor: HexColor('#FF0000'),
                        isDiscount: true,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                  ),
                ),
              ),

              /// new products
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Divider(),
                    Headline(
                      title: 'home.new_products'.tr(),
                      onMore: () {},
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.homeData!.newProducts.length,
                    itemBuilder: (context, index) {
                      return ProductItem(
                        product: state.homeData!.newProducts[index],
                        currencyColor: HexColor('#FF0000'),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 25),
              ),
            ],
          ),
        );
      },
    );
  }
}
