import 'package:cpea/src/core/theme/consts.dart';
import 'package:cpea/src/core/widgets/buttons/card_button.dart';
import 'package:cpea/src/core/widgets/layout/horizontal_limited_list.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/presentation/bloc/today_permits/today_permits_cubit.dart';
import 'package:cpea/src/features/foyer/presentation/widget/permit_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/core/interfaces/failure.dart';

class TodayPermits extends StatelessWidget {
  const TodayPermits({Key? key, this.margin, this.onTap}) : super(key: key);

  final double tileHeight = defaultCardTileHeight;
  static const cardSpacing = halfPadding;

  final EdgeInsets? margin;

  final void Function(Permit permit)? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodayPermitsCubit, TodayPermitsState>(
      bloc: TodayPermitsCubit(),
      builder: (context, state) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: state.maybeWhen<Widget>(
          loaded: _hasData,
          loading: _loading,
          failed: _failed,
          orElse: () => Container(),
        ),
      ),
    );
  }

  Widget _hasData(List<Permit> permits) {
    return HorizontalLimitedList.builder(
      itemCount: permits.length + 1,
      accountCardMargins: true,
      builder: (context, index) => index != permits.length
          ? PermitTile(
              onTap: () => onTap?.call(permits[index]),
              permit: permits[index],
              margin: const EdgeInsets.symmetric(
                horizontal: cardSpacing,
                vertical: quarterPadding,
              ),
              width: 250,
            )
          : CardButton.icon(
              icon: Icon(Icons.add),
              size: 76,
              label: "Add",
            ),
    );
  }

  Widget _failed(IFailure failure) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.warning),
        Text("ERROR"),
      ],
    );
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
