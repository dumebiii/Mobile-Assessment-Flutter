import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    // final height = ScreenUtil().screenHeight;
    final panelController = PanelController();
    return Stack(children: <Widget>[
      Image.asset(
        "assets/images/Rectangle.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 17.w, top: 63.h),
              child: Row(
                children: [
                  Container(
                    child: Center(
                        child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {},
                    )),
                    width: 46.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17.r)),
                  ),
                  HorizontalSpaceCustom(21.w),
                  Container(
                    child: Center(
                        child: Text('HH-INT-D9FD00-JBW-ORI',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            )))),
                    width: 288.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r)),
                  )
                ],
              ),
            ),
            SlidingUpPanel(
              renderPanelSheet: false,
              panel: Container(
                  decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
              )),
            ),
          ],
        ),
      )
    ]);
  }
}
