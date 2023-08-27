import 'package:flutter/material.dart';

typedef ConfirmationCallback = void Function(bool confirmed);

class ConfirmationDialog extends StatelessWidget {
  final ConfirmationCallback onConfirm;
  final ConfirmationCallback onCancel;

  const ConfirmationDialog(
      {super.key, required this.onConfirm, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Déconnexion'),
      content: const Text('Voulez-vous vous déconnecter ?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
            onCancel(false);
          },
          child: const Text('Annuler'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            onConfirm(true);
          },
          child: const Text('Confirmer'),
        ),
      ],
    );
  }
}
