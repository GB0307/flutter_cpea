import 'package:cpea/src/core/utils/l18n.dart';
import 'package:cpea/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:cpea/src/features/foyer/domain/entities/permit.dart';
import 'package:cpea/src/features/foyer/presentation/bloc/permit_list/permit_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbx_core/core/index.dart';

class PermitListPage extends StatelessWidget {
  const PermitListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.elevated(
        title: Text(L18n.tr.permitListPage_title),
      ),
      body: BlocBuilder<PermitListCubit, PermitListState>(
        bloc: PermitListCubit(),
        builder: (context, state) => state.when<Widget>(
          loaded: _loaded,
          loading: _loading,
          failed: _failed,
          noData: _noData,
          reloading: (data) => _loaded(data, true),
        ),
      ),
    );
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _loaded(List<Permit> data, [bool reloading = false]) {
    if (data.isEmpty) throw Exception("EMPTY DATA");
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(data[index].authorized),
        subtitle: Text(
          data[index].endDate.toString(),
        ),
      ),
      itemCount: data.length,
    );
  }

  Widget _failed(IFailure failure) {
    return Center(
      child: Text("ERROR ${failure.runtimeType}"),
    );
  }

  Widget _noData() {
    return const Center(
      child: Text("NO DATA"),
    );
  }
}
