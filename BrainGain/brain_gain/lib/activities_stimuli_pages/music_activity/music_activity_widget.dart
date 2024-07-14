import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music_activity_model.dart';
export 'music_activity_model.dart';

class MusicActivityWidget extends StatefulWidget {
  const MusicActivityWidget({super.key});

  @override
  State<MusicActivityWidget> createState() => _MusicActivityWidgetState();
}

class _MusicActivityWidgetState extends State<MusicActivityWidget> {
  late MusicActivityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicActivityModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF63AEBF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Music',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/Clair_De_Lune_-_Aurbanni.mp3',
                        metas: Metas(
                          id: 'Clair_De_Lune_-_Aurbanni.mp3-7205e005',
                          title: 'Classical song 1',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/Summer_Cat_-_Bubble_(2).mp3',
                        metas: Metas(
                          id: 'Summer_Cat_-_Bubble_(2).mp3-70a4dfcd',
                          title: 'Classical song 2',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/Shaunas_Theme_-_Jorgen_Kruse.mp3',
                        metas: Metas(
                          id: 'Shaunas_Theme_-_Jorgen_Kruse.mp3-dccad499',
                          title: 'Classical song 3',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/lockdown_blues_-_lonely_piano.mp3',
                        metas: Metas(
                          id: 'lockdown_blues_-_lonely_piano.mp3-785fed21',
                          title: 'Jazz song',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/RED_LIGHT_-_EGOR_BUDENNYY.mp3',
                        metas: Metas(
                          id: 'RED_LIGHT_-_EGOR_BUDENNYY.mp3-c3c7b4c6',
                          title: 'Pop song',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
                    child: FlutterFlowAudioPlayer(
                      audio: Audio(
                        'assets/audios/LEEONA_-_LEEONA_-_Do_I.mp3',
                        metas: Metas(
                          id: 'LEEONA_-_LEEONA_-_Do_I.mp3-13fd6380',
                          title: 'House song',
                        ),
                      ),
                      titleTextStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                      playbackDurationTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      playbackButtonColor: Color(0xFF63AEBF),
                      activeTrackColor: Color(0xFF63AEBF),
                      elevation: 4.0,
                      playInBackground: PlayInBackground.disabledPause,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
