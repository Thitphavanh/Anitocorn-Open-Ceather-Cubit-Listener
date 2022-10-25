import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/temp_settings/temp_settings_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text('SETTING'),
      ),
      body: ListTile(
        title: const Text('ຫົວໜ່ວຍ ອຸນຫະພູມ'),
        subtitle: const Text('ອຸນຫະພູມ/ຟາເຣນໄຮ (ຄ່າເລີ່ມຕົ້ນ: ອຸນຫະພູມ )'),
        trailing: Switch(
          value: context.watch<TempSettingsCubit>().state.tempUnit ==
              TempUnit.celsius,
          onChanged: (_) {
            context.read<TempSettingsCubit>().toggleTempUnit();
          },
        ),
      ),
    );
  }
}
