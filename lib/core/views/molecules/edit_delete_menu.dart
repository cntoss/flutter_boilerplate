import 'package:flutter_boilerplate/core/constants/ui_colors.dart';
import 'package:flutter_boilerplate/core/views/molecules/info_dialog.dart';
import 'package:flutter_boilerplate/core/views/widgets/cpopup_menu.dart';
import 'package:flutter/material.dart';

class EditDeleteMenu extends StatelessWidget {
  const EditDeleteMenu({
    required this.deleteType,
    super.key,
    this.onDelete,
    this.onEdit,
  });

  final void Function()? onDelete;
  final void Function()? onEdit;
  final String deleteType;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        iconTheme: const IconThemeData(color: UIColors.menuIconCOlor),
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert), // add this line
        padding: EdgeInsets.zero,
        onSelected: (value) {
          if (value == 'edit') {
            onEdit?.call();
          } else if (value == 'delete') {
            showInfoDialog<void>(
              context,
              cancelText: 'No, Cancel!',
              confirmText: 'Yes, Delete It',
              showInfoText: false,
              isError: true,
              message: 'Are you sure to delete this $deleteType?',
              onConfirm: onDelete,
            );
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const CPopupMenuItemWithValue<String>(
              label: 'Delete',
              value: 'delete',
            ),
            const CPopupMenuItemWithValue<String>(
              label: 'Edit',
              divider: false,
              value: 'edit',
            ),
          ];
        },
      ),
    );
  }
}
