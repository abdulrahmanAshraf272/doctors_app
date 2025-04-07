import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/routing/app_router.dart';
import 'package:doctors_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  //to fix text being hidden bug when i run flutter release
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
