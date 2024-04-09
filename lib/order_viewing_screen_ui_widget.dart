import 'package:flutter/material.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'order_viewing_screen_ui_model.dart';
export 'c_a_r_t_ui_widget.dart';

class OrderViewingScreenUiWidget extends StatefulWidget {
  const OrderViewingScreenUiWidget({Key? key}) : super(key: key);

  @override
  State<OrderViewingScreenUiWidget> createState() =>
      _OrderViewingScreenUiWidgetState();
}

class _OrderViewingScreenUiWidgetState
    extends State<OrderViewingScreenUiWidget> {
  late OrderViewingScreenUiModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderViewingScreenUiModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Your build method implementation
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    appBar: AppBar(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      automaticallyImplyLeading: false,
      leading: Icon(
        Icons.arrow_back_ios_new,
        color: Color(0xFF1F7387),
        size: 24,
      ),
      title: Align(
        alignment: AlignmentDirectional(-1, 0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
          child: GradientText(
            '    CURRENT ORDER',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: Color(0xFF1F7387),
                  fontSize: 26,
                ),
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
        ),
      ),
      actions: [],
      centerTitle: false,
      elevation: 0,
    ),
    body: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'USER ID: 611872',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'ORDER ID: 3488',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x320E151B),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Hero(
                                  tag: 'ControllerImage',
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1617622141675-d3005b9067c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxoYWtrYSUyMG5vb2RsZXN8ZW58MHx8fHwxNzEwMjQ1ODM5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: Text(
                                            'Veg Hakka Noodles',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '₹90.00',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 0),
                                          child: Text(
                                            'Quantity: 1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.flag_circle,
                                    color: Color(0xFF2DF505),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x320E151B),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Hero(
                                  tag: 'ControllerImage',
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1541796512681-800c76e2657e?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMXx8YnJlYWQlMjBidW58ZW58MHx8fHwxNzEwMjUxMjk5fDA&ixlib=rb-4.0.3&q=85',
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: Text(
                                            'Vada Pav',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '₹20.00',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 0),
                                          child: Text(
                                            'Quantity: 1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.flag_circle,
                                    color: Color(0xFFF50505),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x320E151B),
                                offset: Offset(0, 1),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 8, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Hero(
                                  tag: 'ControllerImage',
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1527960392543-80cd0fa46382?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxjb2tlfGVufDB8fHx8MTcxMDI0NTc1Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: Text(
                                            'Coke (350 ml)',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '₹15.00',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 8, 0, 0),
                                          child: Text(
                                            'Quantity: 1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.flag_circle,
                                    color: Color(0xFFF50505),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Price Breakdown',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Base Price',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Text(
                              '₹125.00',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taxes',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Text(
                              '₹0.00',
                              style: FlutterFlowTheme.of(context).bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Total Amount Received',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 36,
                                  icon: Icon(
                                    Icons.info_outlined,
                                    color: Color(0xFF57636C),
                                    size: 18,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                            Text(
                              '₹125.00',
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 61,
          decoration: BoxDecoration(
            color: Color(0xFF1F7387),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x320E151B),
                offset: Offset(0, -2),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'BACK TO HOMEPAGE',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    ),
  );
}
