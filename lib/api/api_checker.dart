// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class ApiChecker {
//   static void checkApi(BuildContext context, ApiResponse response) {
//     if (response.statusCode == 401) {
//       Provider.of<AuthProvider>(context, listen: false).clearSharedData();
//       Navigator.of(
//         context,
//       ).pushNamedAndRemoveUntil(AppRoutes.signIn, (route) => false);
//     } else {
//       showCustomSnackBar(response.statusText ?? 'Unknown error', context);
//     }
//   }
// }
