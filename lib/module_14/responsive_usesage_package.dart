import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResUsePackage extends StatelessWidget {
  const ResUsePackage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final bool isTablet = size.width > 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Responsive Usage Package'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'This is a placeholder for responsive usage package example.',
              style: TextStyle(fontSize: 15.sp),
            ),
            Container(
              color: Colors.blue,
              width: 100.w,
              height: 120.h,
              child: Text('Responsive Box', style: TextStyle(fontSize: 12.sp)),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Text('Fixed Size Box'),
            ),
            SizedBox(height: 10),

            isTablet
                ? Container(
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.tablet, size: 24.sp),
                        title: Text(
                          'Responsive ListTile Tablet',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        subtitle: Text(
                          'This ListTile adapts to screen size.',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    ),
                  )
                : Container(
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.mobile_friendly_outlined,
                          size: 24.sp,
                        ),
                        title: Text(
                          'Responsive ListTile Mobile',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        subtitle: Text(
                          'This ListTile adapts to screen size.',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    ),
                  ),

            SizedBox(height: 20),
            Text(
              'Screen Width: ${size.width}, Height: ${size.height} isTablet: $isTablet',
            ),
          ],
        ),
      ),
    );
  }
}
