import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? getObrasSociales() {
  const raw = r'''
No tengo
OSPIB
                  
OSPES
OSPS MERCEDES
                  
OSPPRA
OSPM
OSPE
OSTECF
OSITAC
OSPIM
OSPG
OSPIC SANTA FE
OSPM
OSPICA
OSPERYH
OSAPM
OSTIG
OSPEDICI
                  
OSPIM
                  
FAA
OS.PE.PRI
OSOSS
OSPTA
OSTEE
OSAPMER
OSPIQYP
OSPCRA
OSOC
OSUCI
                  
OSPACA
                  
OSTRAC
OSPIC
OSUTHGRA
OSAPMCBA
OSJOMN
OSPCSPMYA
OSTES
OSPIC
OSJONR
OSPERCIN
OSPENA
OSIPA
OSPIN
OSPPEA
OSDEM
OPZC
OSPICAL
OSPDESBA
OSPAIL
OSPEDYB
OSSPYFER
OSRGA
                  
OSPSESBA
OSPA-VIAL
OSPIT
OSPIV
OSVARA
OSPEVIC
OSPUAYE
OSBARA
                  
OSUTI
                  
OSMEDICA
O.S.S.U.R.R.B.A.C
OSPRERA
OSUOMRA
OSPIDA
OSTPCHPYARA
OSCAMGLYP
OSSIMRA
OSPIP
OSVVRA
OSPPCYQ
OSPERYHRA
OSEAM
                  
OSPEP
OSTC
OSPAT
O.S.T.A.C.C,
O.S.A.P.S.E
OSPEP
OSPEP
                  
OSEADI
OSPIA
                  
OSPA
OSTPBA
OSFATLYF
OSCOEMA
OSLYF
OSDEL
OSPETELCO
OSPL
OSFFENTOS
OSPF
OSFATUN
OSCAPBAQFLU
OSPEDYC
OSBA
OSPIL
OSMMEDT
OSPAGA
OSEMM
OSPREN
OSIAD
OSPECA
OSPSA
OSPAV
OSTAD
OSPEA
OSPAP
OSPEGAP
OSEPC
OSCRAIA
OSPIP
OSPIN
OSPCYD
OSTP
OSPA
OSECAC
                  
OSTEP
OSSOELSAC
OSPADEP
OSPESGYPE
OSPECON
OSA
                  
O.S.PE.TAX.R
OSPSIP
OSPM
OSPIF
OSPIV
OSRJA
OSPIF
OSPIT
OSPEJ
OSPIFSE
OSPILM
OSMA
                  
                  
OSPAF
OSPETAX
OSPEMER
OSLYF PATAGONIA
OSPICHA
OSA
OSJPVYF
OSCE
OSFOT
OSPIS
OSPA
OSCONARA
OSFYB
OSMATA
OSPIT
OSPACA
OSPATCA
OSCOMM
OSEIV
O.S.A.M.
OSEDA
OSOETSYLARA
                  
OSPLA
OSCHOCA
OSPRO
OSPIP
OSETRA
OSPTV
OSCEP
OSPIF
OSPP
OSPA
OSFYHC
OSPESA
OSPACP
OSPE
OSPESGA
OSPESCHA
O.S.PE.COR
OSEN
OSPEMOM
OSPEPBA
OSDOP
                  
                  
OSPRENTUC
OSETYA
OSADEF
UPFPARA
                  
OSADRA
OSPIHMP
                  
OSPIA
OSPHGBAYSI
OSPCN
                  
OSTEL
''';

  final set = <String>{};
  for (final line in raw.split('\n')) {
    final s = line.trim();
    if (s.isEmpty) continue;
    // normaliza espacios internos y elimina duplicados
    final norm = s.replaceAll(RegExp(r'\s+'), ' ').trim();
    set.add(norm);
  }
  final list = set.toList()..sort((a, b) => a.compareTo(b));
  return list;
}
