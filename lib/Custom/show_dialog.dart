import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testcase/view_model/user_view_model.dart';

class DialogBox extends StatelessWidget {
  final String title;
  final String cancelText;
  final String okText;
  final Color dialogColor;
  final Color cancelButtonColor;
  final Color logoutButtonColor;
  final double borderRadius;
  final double? padding;
  final double? fontSize;
  final VoidCallback? navigator;

  const DialogBox({
    super.key,
    required this.title,
    required this.cancelText,
    required this.okText,
    required this.dialogColor,
    required this.cancelButtonColor,
    required this.logoutButtonColor,
    required this.borderRadius,
    this.padding,
    this.fontSize,
    this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    final userPreferences = Provider.of<UserViewModel>(context);

    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: dialogColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        padding: EdgeInsets.all(padding!),
        child: Padding(
          padding: EdgeInsets.all(padding!),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDialogButton(
                    context,
                    cancelText,
                    cancelButtonColor,
                    const Color(0xFF272256),
                    () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                  _buildDialogButton(
                    context,
                    okText,
                    logoutButtonColor,
                    Colors.white,
                    () {
                      userPreferences.remove();
                      Navigator.of(context).pop(true);
                      navigator!();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDialogButton(BuildContext context, String text, Color bgColor,
      Color textColor, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: GestureDetector(
          onTap: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
