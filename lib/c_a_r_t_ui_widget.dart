import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'c_a_r_t_ui_model.dart';
export 'c_a_r_t_ui_model.dart';

class CARTUiWidget extends StatefulWidget {
  const CARTUiWidget({super.key});

  @override
  State<CARTUiWidget> createState() => _CARTUiWidgetState();
}

class _CARTUiWidgetState extends State<CARTUiWidget> {
  late CARTUiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CARTUiModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF1F7387),
            size: 25,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 60, 0),
            child: GradientText(
              'SUMMARY',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF1F7387),
                    fontSize: 26,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
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
      body: Align(
        alignment: AlignmentDirectional(0, -1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 340,
                      constraints: BoxConstraints(
                        maxWidth: 750,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(
                              0,
                              2,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(17),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Cart',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                              child: Text(
                                'Below is the list of items in your cart.',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 12),
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: Offset(
                                            0,
                                            1,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 1, 1, 1),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1617622141675-d3005b9067c5?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxoYWtrYSUyMG5vb2RsZXN8ZW58MHx8fHwxNzEwMjQ1ODM5fDA&ixlib=rb-4.0.3&q=85',
                                                    width: 70,
                                                    height: 70,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 4, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Veg Hakka Noodles',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 18,
                                                              letterSpacing: 0,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Quantity: ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: '1',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 0, 0),
                                                child: Text(
                                                  '₹90.00',
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.delete_outline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 24,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Text(
                                                  'Remove',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        letterSpacing: 0,
                                                      ),
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
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 12),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 1, 1, 1),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1534260164206-2a3a4a72891d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxjb2tlfGVufDB8fHx8MTcxMDI0NTc1Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                                  width: 70,
                                                  height: 70,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 0, 4, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Coke (350ml)',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            fontSize: 18,
                                                            letterSpacing: 0,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Quantity: ',
                                                              style:
                                                                  TextStyle(),
                                                            ),
                                                            TextSpan(
                                                              text: '1',
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 0, 0, 0),
                                              child: Text(
                                                '₹15.00',
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.delete_outline,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Text(
                                              'Remove',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    letterSpacing: 0,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 430,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(
                              0,
                              2,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order Summary',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                              child: Text(
                                'Below is a list of your items.',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            Divider(
                              height: 32,
                              thickness: 2,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 12),
                                    child: Text(
                                      'Price Breakdown',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Base Price',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '₹105.00',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Taxes + Tip',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '₹0.00',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Canteen Name',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          'META',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Grand Total',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 20,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '₹105.00',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Proceed To Payment',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50,
                                padding: EdgeInsets.all(0),
                                iconPadding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: Color(0xFF1F7387),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0,
                                    ),
                                elevation: 2,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(50),
                                hoverColor: Color(0xFF1F7387),
                                hoverBorderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
