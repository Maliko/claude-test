unit PADneXt.Xml;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, Xml.XMLDoc, Xml.XMLIntf;

const
  TargetNamespace = 'http://padinfo.de/ns/pad';

type
  IXMLDokumenttypTyp = interface;
  IXMLNachrichtentypTyp = interface;
  IXMLRechnungTyp = interface;
  IXMLRechnungTypZahlung = interface;
  IXMLRechnungTypRechnungsvorgaben = interface;
  IXMLRechnungTypZuzahlungsbetrag = interface;
  IXMLRechnungTypAbrechnungsfall = interface;
  IXMLRechnungListe = interface;
  IXMLAnhangidTyp = interface;
  IXMLAnschriftTyp = interface;
  IXMLAnschriftTypGrossempfaenger = interface;
  IXMLAnschrift2Typ = interface;
  IXMLAnschrift3Typ = interface;
  IXMLAuslandadresseTyp = interface;
  IXMLHausadresseTyp = interface;
  IXMLPostfachTyp = interface;
  IXMLPackstationTyp = interface;
  IXMLBehandelterTyp = interface;
  IXMLEmpfaengerPersonTyp = interface;
  IXMLKontaktTyp = interface;
  IXMLLeistungserbringerTyp = interface;
  IXMLLEPersonTyp = interface;
  IXMLOrganisationTyp = interface;
  IXMLPersonTyp = interface;
  IXMLRechnungserstellerTyp = interface;
  IXMLRechnungsempfaengerTyp = interface;
  IXMLRechnungsempfaengerTypPerson = interface;
  IXMLUeberweiserTyp = interface;
  IXMLVersicherterTyp = interface;
  IXMLBemaTyp = interface;
  IXMLBemaTypUeberweiser = interface;
  IXMLBemaTypBehandelter = interface;
  IXMLBemaTypVersicherter = interface;
  IXMLBemaTypPositionen = interface;
  IXMLBmgNormPrivatTyp = interface;
  IXMLBmgNormPrivatTypUeberweiser = interface;
  IXMLBmgNormPrivatTypBehandelter = interface;
  IXMLBmgNormPrivatTypVersicherter = interface;
  IXMLBmgNormPrivatTypPositionen = interface;
  IXMLBmgNormPrivatTypSonstigeshonorar = interface;
  IXMLBmgNormPrivatTypBeleg = interface;
  IXMLBmgNormKFOPrivatTyp = interface;
  IXMLBmgNormKFOPrivatTypUeberweiser = interface;
  IXMLBmgNormKFOPrivatTypBehandelter = interface;
  IXMLBmgNormKFOPrivatTypVersicherter = interface;
  IXMLBmgNormKFOPrivatTypPositionen = interface;
  IXMLBmgNormKFOPrivatTypBeleg = interface;
  IXMLEigenanteilsrechnungTyp = interface;
  IXMLEigenanteilsrechnungTypUeberweiser = interface;
  IXMLEigenanteilsrechnungTypBehandelter = interface;
  IXMLEigenanteilsrechnungTypVersicherter = interface;
  IXMLEigenanteilsrechnungTypPositionen = interface;
  IXMLEigenanteilsrechnungTypBeleg = interface;
  IXMLEigenanteilsrechnungKFOTyp = interface;
  IXMLEigenanteilsrechnungKFOTypUeberweiser = interface;
  IXMLEigenanteilsrechnungKFOTypBehandelter = interface;
  IXMLEigenanteilsrechnungKFOTypVersicherter = interface;
  IXMLEigenanteilsrechnungKFOTypPositionen = interface;
  IXMLEigenanteilsrechnungKFOTypBeleg = interface;
  IXMLHumanmedizinTyp = interface;
  IXMLHumanmedizinTypUeberweiser = interface;
  IXMLHumanmedizinTypBehandelter = interface;
  IXMLHumanmedizinTypVersicherter = interface;
  IXMLHumanmedizinTypPositionen = interface;
  IXMLEigenlaborTyp = interface;
  IXMLEigenlaborTypPositionen = interface;
  IXMLFremdlaborTyp = interface;
  IXMLFremdlaborTypPositionen = interface;
  IXMLMaterialTyp = interface;
  IXMLMaterialTypPositionen = interface;
  IXMLMaterialpassTyp = interface;
  IXMLMaterialpassTypPositionen = interface;
  IXMLSummenblockBelegTyp = interface;
  IXMLSummenblockBelegTypBelegsumme = interface;
  IXMLBegruendungTyp = interface;
  IXMLBehandlungsortTyp = interface;
  IXMLBeteiligungTyp = interface;
  IXMLDiagnoseTyp = interface;
  IXMLDiagnosecodeTyp = interface;
  IXMLFachangabeTyp = interface;
  IXMLFachbereichTyp = interface;
  IXMLFachbereichTypFachgebiet = interface;
  IXMLFachbereichTypFacharzt = interface;
  IXMLKontoTyp = interface;
  IXMLKVKartendatenTyp = interface;
  IXMLKfoplandatenTyp = interface;
  IXMLNachlassTyp = interface;
  IXMLOPSTyp = interface;
  IXMLRatenzahlungTyp = interface;
  IXMLSummenblockBemaTyp = interface;
  IXMLSummenblockBmgTyp = interface;
  IXMLSummenblockEigenanteilTyp = interface;
  IXMLSummenblockEigenanteilTypSummeabzug = interface;
  IXMLSummenblockEigenanteilTypSummeauslagen = interface;
  IXMLSummenblockEigenanteilKFOTyp = interface;
  IXMLUnfallarbeitgeberTyp = interface;
  IXMLUnfalldatenTyp = interface;
  IXMLUnfalldatenTypRefarztbericht = interface;
  IXMLVersicherungTyp = interface;
  IXMLLeistungspositionTyp = interface;
  IXMLLeistungsposition2Typ = interface;
  IXMLZifferTyp = interface;
  IXMLBemaZifferTyp = interface;
  IXMLBemaZifferTypAnteil = interface;
  IXMLBemaKFOZifferTyp = interface;
  IXMLBemaKFOZifferTypAnteil = interface;
  IXMLBemaKFOZwSummeTyp = interface;
  IXMLGOZifferTyp = interface;
  IXMLGOZifferTypAnteil = interface;
  IXMLGOZZifferTyp = interface;
  IXMLGOZZifferTypAnteil = interface;
  IXMLLaborZifferTyp = interface;
  IXMLEigenlaborKFOZifferTyp = interface;
  IXMLMaterialZifferTyp = interface;
  IXMLMaterialpassZifferTyp = interface;
  IXMLAmboTyp = interface;
  IXMLAmboTypEinzelverguetung = interface;
  IXMLAuslagenTyp = interface;
  IXMLAuslagenpositionTyp = interface;
  IXMLEntschaedigungTyp = interface;
  IXMLEntschaedigungTypAnteil = interface;
  IXMLHonorarTyp = interface;
  IXMLReisekostenTyp = interface;
  IXMLWegegeldTyp = interface;
  IXMLTextzeileTyp = interface;
  IXMLBetragSatzTyp = interface;
  IXMLBetragBezeichnungTyp = interface;
  IXMLBetragBezeichnungSatzTyp = interface;
  IXMLDateilaengeTyp = interface;
  IXMLFehlerTyp = interface;
  IXMLTeilnehmerTyp = interface;
  IXMLTeilnehmerTypLogisch = interface;
  IXMLTeilnehmerTypPhysikalisch = interface;
  IXMLZeitraumTyp = interface;
  IXMLDokumenttypTypList = interface;
  IXMLNachrichtentypTypList = interface;
  IXMLRechnungTypList = interface;
  IXMLRechnungTypZahlungList = interface;
  IXMLRechnungTypRechnungsvorgabenList = interface;
  IXMLRechnungTypZuzahlungsbetragList = interface;
  IXMLRechnungTypAbrechnungsfallList = interface;
  IXMLRechnungListeList = interface;
  IXMLAnhangidTypList = interface;
  IXMLAnschriftTypList = interface;
  IXMLAnschriftTypGrossempfaengerList = interface;
  IXMLAnschrift2TypList = interface;
  IXMLAnschrift3TypList = interface;
  IXMLAuslandadresseTypList = interface;
  IXMLHausadresseTypList = interface;
  IXMLPostfachTypList = interface;
  IXMLPackstationTypList = interface;
  IXMLBehandelterTypList = interface;
  IXMLEmpfaengerPersonTypList = interface;
  IXMLKontaktTypList = interface;
  IXMLLeistungserbringerTypList = interface;
  IXMLLEPersonTypList = interface;
  IXMLOrganisationTypList = interface;
  IXMLPersonTypList = interface;
  IXMLRechnungserstellerTypList = interface;
  IXMLRechnungsempfaengerTypList = interface;
  IXMLRechnungsempfaengerTypPersonList = interface;
  IXMLUeberweiserTypList = interface;
  IXMLVersicherterTypList = interface;
  IXMLBemaTypList = interface;
  IXMLBemaTypUeberweiserList = interface;
  IXMLBemaTypBehandelterList = interface;
  IXMLBemaTypVersicherterList = interface;
  IXMLBemaTypPositionenList = interface;
  IXMLBmgNormPrivatTypList = interface;
  IXMLBmgNormPrivatTypUeberweiserList = interface;
  IXMLBmgNormPrivatTypBehandelterList = interface;
  IXMLBmgNormPrivatTypVersicherterList = interface;
  IXMLBmgNormPrivatTypPositionenList = interface;
  IXMLBmgNormPrivatTypSonstigeshonorarList = interface;
  IXMLBmgNormPrivatTypBelegList = interface;
  IXMLBmgNormKFOPrivatTypList = interface;
  IXMLBmgNormKFOPrivatTypUeberweiserList = interface;
  IXMLBmgNormKFOPrivatTypBehandelterList = interface;
  IXMLBmgNormKFOPrivatTypVersicherterList = interface;
  IXMLBmgNormKFOPrivatTypPositionenList = interface;
  IXMLBmgNormKFOPrivatTypBelegList = interface;
  IXMLEigenanteilsrechnungTypList = interface;
  IXMLEigenanteilsrechnungTypUeberweiserList = interface;
  IXMLEigenanteilsrechnungTypBehandelterList = interface;
  IXMLEigenanteilsrechnungTypVersicherterList = interface;
  IXMLEigenanteilsrechnungTypPositionenList = interface;
  IXMLEigenanteilsrechnungTypBelegList = interface;
  IXMLEigenanteilsrechnungKFOTypList = interface;
  IXMLEigenanteilsrechnungKFOTypUeberweiserList = interface;
  IXMLEigenanteilsrechnungKFOTypBehandelterList = interface;
  IXMLEigenanteilsrechnungKFOTypVersicherterList = interface;
  IXMLEigenanteilsrechnungKFOTypPositionenList = interface;
  IXMLEigenanteilsrechnungKFOTypBelegList = interface;
  IXMLHumanmedizinTypList = interface;
  IXMLHumanmedizinTypUeberweiserList = interface;
  IXMLHumanmedizinTypBehandelterList = interface;
  IXMLHumanmedizinTypVersicherterList = interface;
  IXMLHumanmedizinTypPositionenList = interface;
  IXMLEigenlaborTypList = interface;
  IXMLEigenlaborTypPositionenList = interface;
  IXMLFremdlaborTypList = interface;
  IXMLFremdlaborTypPositionenList = interface;
  IXMLMaterialTypList = interface;
  IXMLMaterialTypPositionenList = interface;
  IXMLMaterialpassTypList = interface;
  IXMLMaterialpassTypPositionenList = interface;
  IXMLSummenblockBelegTypList = interface;
  IXMLSummenblockBelegTypBelegsummeList = interface;
  IXMLBegruendungTypList = interface;
  IXMLBehandlungsortTypList = interface;
  IXMLBeteiligungTypList = interface;
  IXMLDiagnoseTypList = interface;
  IXMLDiagnosecodeTypList = interface;
  IXMLFachangabeTypList = interface;
  IXMLFachbereichTypList = interface;
  IXMLFachbereichTypFachgebietList = interface;
  IXMLFachbereichTypFacharztList = interface;
  IXMLKontoTypList = interface;
  IXMLKVKartendatenTypList = interface;
  IXMLKfoplandatenTypList = interface;
  IXMLNachlassTypList = interface;
  IXMLOPSTypList = interface;
  IXMLRatenzahlungTypList = interface;
  IXMLSummenblockBemaTypList = interface;
  IXMLSummenblockBmgTypList = interface;
  IXMLSummenblockEigenanteilTypList = interface;
  IXMLSummenblockEigenanteilTypSummeabzugList = interface;
  IXMLSummenblockEigenanteilTypSummeauslagenList = interface;
  IXMLSummenblockEigenanteilKFOTypList = interface;
  IXMLUnfallarbeitgeberTypList = interface;
  IXMLUnfalldatenTypList = interface;
  IXMLUnfalldatenTypRefarztberichtList = interface;
  IXMLVersicherungTypList = interface;
  IXMLLeistungspositionTypList = interface;
  IXMLLeistungsposition2TypList = interface;
  IXMLZifferTypList = interface;
  IXMLBemaZifferTypList = interface;
  IXMLBemaZifferTypAnteilList = interface;
  IXMLBemaKFOZifferTypList = interface;
  IXMLBemaKFOZifferTypAnteilList = interface;
  IXMLBemaKFOZwSummeTypList = interface;
  IXMLGOZifferTypList = interface;
  IXMLGOZifferTypAnteilList = interface;
  IXMLGOZZifferTypList = interface;
  IXMLGOZZifferTypAnteilList = interface;
  IXMLLaborZifferTypList = interface;
  IXMLEigenlaborKFOZifferTypList = interface;
  IXMLMaterialZifferTypList = interface;
  IXMLMaterialpassZifferTypList = interface;
  IXMLAmboTypList = interface;
  IXMLAmboTypEinzelverguetungList = interface;
  IXMLAuslagenTypList = interface;
  IXMLAuslagenpositionTypList = interface;
  IXMLEntschaedigungTypList = interface;
  IXMLEntschaedigungTypAnteilList = interface;
  IXMLHonorarTypList = interface;
  IXMLReisekostenTypList = interface;
  IXMLWegegeldTypList = interface;
  IXMLTextzeileTypList = interface;
  IXMLBetragSatzTypList = interface;
  IXMLBetragBezeichnungTypList = interface;
  IXMLBetragBezeichnungSatzTypList = interface;
  IXMLDateilaengeTypList = interface;
  IXMLFehlerTypList = interface;
  IXMLTeilnehmerTypList = interface;
  IXMLTeilnehmerTypLogischList = interface;
  IXMLTeilnehmerTypPhysikalischList = interface;
  IXMLZeitraumTypList = interface;
  TXSDOrtTyp = type string;
  TXSDPlzTyp = type string;
  TXSDStrasseTyp = type string;
  TXSDIKnrTyp = type Integer;
  TXSDLanrTyp = type Integer;
  TXSDPVSkundennrTyp = type Integer;
  TXSDUstidnrTyp = type string;
  TXSDVertragsartTyp = type Integer;
  TXSDZahnangabeTyp = type string;
  TXSDBetragTyp = type Double;
  TXSDIdTyp = type string;
  TXSDProzentTyp = type Double;
  TXSDStringNichtLeerTyp = type string;
  TXSDString18Typ = type string;
  TXSDString111Typ = type string;
  TXSDString115Typ = type string;
  TXSDString140Typ = type string;
  TXSDString180Typ = type string;
  TXSDTextTyp = type string;
  TXSDAnredeEnum = type string; // Ohne Anrede, Frau, Herr, Herr / Frau
  TXSDAnredeempfEnum = type string; // Ohne Anrede, Frau, Herr, Herr / Frau, Familie, An die Angehörigen von
  TXSDAnredeleEnum = type string; // Ohne Anrede, Frau, Herr, Herr / Frau, Praxis, Labor
  TXSDBehandlungsartEnum = type string; // 0, 1, 2, 3, 4, 5
  TXSDBelegartEnum = type string; // Materialpass, Mehrkostenaufstellung, Fremdlabor, Eigenlabor, Material, HKP, sonstiges
  TXSDBerechnungskennzeichenEnum = type string; // K, H, B
  TXSDBesondererpersonenkreisEnum = type string; // 4, 6, 7, 8, 9
  TXSDDiagnoseartEnum = type string; // H, N, P, S
  TXSDDiagnosesicherheitEnum = type string; // G, V, Z, A
  TXSDDiagnosesystemEnum = type string; // ICD-10, ICPC-2
  TXSDDiagnosetypEnum = type string; // 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
  TXSDDMPkennzeichenEnum = type string; // 1, 2, 3, 4, 5, 6, 9
  TXSDDokumentformatEnum = type string; // pdf, jpeg, tiff
  TXSDDokumenttypEnum = type string; // PADneXt, PAD, Anhang, PADdent
  TXSDGebuehrenordnungEnum = type string; // GOAE, UVGOAE, EBM, GOZ, BEMA, GEBUEH, BEL, BEB
  TXSDGeschlechtEnum = type string; // m, w, u
  TXSDKontaktartEnum = type string; // telefonnr, mobilnr, faxnr, email
  TXSDKontakttypEnum = type string; // privat, beruflich
  TXSDLandEnum = type string; // AFG, ET, AL, GBA, DZ, AND, ANG, RA, AM, AZ, ETH, AUS, BS, BRN, BD, BDS, BY, B, BH, BJ, BOL, BIH, RB, BR, BRU, BG, BF, RU, RCH, RC, CR, CI, DK, CD, LAO, D, WD, DOM, DJI, EC, ES, ER, EST, FO, FJI, FIN, F, G, WAG, GE, GH, GBZ, WG, GR, GCA, GBG, RG, GUY, RH, HN, IND, RI, Man, IRQ, IR, IRL, IS, IL, I, JA, J, YAR, GBJ, JOR, K, CAM, CDN, KZ, Q, EAK, KS, CO, RCB, KSA, ROK, KOS, HR, C, KWT, LS, LV, RL, LB, FL, LT, L, LAR, RM, MW, MAL, RMM, M, MA, RIM, MS, MK, MEX, MD, MC, MGL, MNE, MOC, MYA, NAM, NAU, NEP, NZ, NIC, NA, NL, RN, WAN, N, OM, A, PK, PA, PNG, PY, PE, RP, PL, P, RWA, RO, RUS, Z, WS, RSM, EAZ, WL, S, CH, SN, SRB, SY, WAL, ZW, SGP, SK, SLO, SO, E, CL, WV, ZA, SUD, SME, SD, SYR, TJ, EAT, THA, RT, TT, TD, CZ, TN, TR, TM, EAU, UA, H, ROU, UZ, V, YV, UAE, USA, GB, VN, RCA, CY, unb
  TXSDLeistungsartkfoEnum = type string; // Sachleistung Kons/Chir, Sachleistung IP, Kostenerstattungsleistung
  TXSDLokalisationEnum = type string; // L, R, B
  TXSDMahnkennzeichenEnum = type string; // nicht mahnen, mahnen, kein gmv
  TXSDMinderungssatzEnum = type string; // 0, 15, 25
  TXSDNachrichtentypEnum = type string; // ADL, QADL
  TXSDPositionskennzeichenEnum = type string; // M, L, P
  TXSDPvsIdsEnum = type Integer;
  TXSDRatenvereinbarungEnum = type string; // P, A
  TXSDRechnungssondertypEnum = type string; // I, P
  TXSDRechtskreiszugehoerigkeitEnum = type string; // 1, 9
  TXSDUnterkunftstationaerEnum = type string; // 1, 2, 3
  TXSDVerwandtschaftskennungEnum = type string; // 0, 1, 2, 3, 4, 5
  TXSDVerwendungszweckanhangEnum = type string; // 1, 2
  TXSDVersichertenartEnum = type string; // 1, 3, 5, 9
  TXSDZahlungsartEnum = type string; // Lastschrift
  IXMLDokumenttypTyp = interface(IXMLNode)
    ['{201C5ABA-EDFC-4F5C-99DE-019CA19D4251}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Format: TXSDDokumentformatEnum;
    procedure Set_Format(const Value: TXSDDokumentformatEnum);
    property Value: string read Get_Value write Set_Value;
    property Format: TXSDDokumentformatEnum read Get_Format write Set_Format;
  end;
  IXMLDokumenttypTypList = interface(IXMLNodeCollection)
    ['{C841DBAB-17D8-4D4D-8A19-DF0F237F11C2}']
    function Add: IXMLDokumenttypTyp;
    function Insert(const Index: Integer): IXMLDokumenttypTyp;
    function Get_Item(Index: Integer): IXMLDokumenttypTyp;
    property Items[Index: Integer]: IXMLDokumenttypTyp read Get_Item; default;
  end;
  IXMLNachrichtentypTyp = interface(IXMLNode)
    ['{0FAAB3DE-6C0E-48BC-8369-8452C1833945}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Version: string;
    procedure Set_Version(const Value: string);
    property Value: string read Get_Value write Set_Value;
    property Version: string read Get_Version write Set_Version;
  end;
  IXMLNachrichtentypTypList = interface(IXMLNodeCollection)
    ['{4285082D-5A99-4CDA-8232-756C8F2B459D}']
    function Add: IXMLNachrichtentypTyp;
    function Insert(const Index: Integer): IXMLNachrichtentypTyp;
    function Get_Item(Index: Integer): IXMLNachrichtentypTyp;
    property Items[Index: Integer]: IXMLNachrichtentypTyp read Get_Item; default;
  end;
  IXMLRechnungTyp = interface(IXMLNode)
    ['{CA7341AC-C848-4813-9215-89D277F94C59}']
    function Get_Rechnungsempfaenger: IXMLRechnungsempfaengerTyp;
    function Get_Zahlung: IXMLRechnungTypZahlung;
    function Get_Rechnungsvorgaben: IXMLRechnungTypRechnungsvorgaben;
    function Get_Abrechnungsfall: IXMLRechnungTypAbrechnungsfallList;
    function Get_Abrechnungsanweisung: TXSDTextTyp;
    procedure Set_Abrechnungsanweisung(const Value: TXSDTextTyp);
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Abrechnungsform: Integer;
    procedure Set_Abrechnungsform(const Value: Integer);
    function Get_Druckkennzeichen: Boolean;
    procedure Set_Druckkennzeichen(const Value: Boolean);
    function Get_Eabgabe: Boolean;
    procedure Set_Eabgabe(const Value: Boolean);
    function Get_Mahnkennzeichen: TXSDMahnkennzeichenEnum;
    procedure Set_Mahnkennzeichen(const Value: TXSDMahnkennzeichenEnum);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisaktenzeichen: string;
    procedure Set_Aisaktenzeichen(const Value: string);
    function Get_Aisendbetrag: TXSDBetragTyp;
    procedure Set_Aisendbetrag(const Value: TXSDBetragTyp);
    property Rechnungsempfaenger: IXMLRechnungsempfaengerTyp read Get_Rechnungsempfaenger;
    property Zahlung: IXMLRechnungTypZahlung read Get_Zahlung;
    property Rechnungsvorgaben: IXMLRechnungTypRechnungsvorgaben read Get_Rechnungsvorgaben;
    property Abrechnungsfall: IXMLRechnungTypAbrechnungsfallList read Get_Abrechnungsfall;
    property Abrechnungsanweisung: TXSDTextTyp read Get_Abrechnungsanweisung write Set_Abrechnungsanweisung;
    property Anfangstext: TXSDTextTyp read Get_Anfangstext write Set_Anfangstext;
    property Endetext: TXSDTextTyp read Get_Endetext write Set_Endetext;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Abrechnungsform: Integer read Get_Abrechnungsform write Set_Abrechnungsform;
    property Druckkennzeichen: Boolean read Get_Druckkennzeichen write Set_Druckkennzeichen;
    property Eabgabe: Boolean read Get_Eabgabe write Set_Eabgabe;
    property Mahnkennzeichen: TXSDMahnkennzeichenEnum read Get_Mahnkennzeichen write Set_Mahnkennzeichen;
    property Aisrechnungsnr: string read Get_Aisrechnungsnr write Set_Aisrechnungsnr;
    property Aisaktenzeichen: string read Get_Aisaktenzeichen write Set_Aisaktenzeichen;
    property Aisendbetrag: TXSDBetragTyp read Get_Aisendbetrag write Set_Aisendbetrag;
  end;
  IXMLRechnungTypList = interface(IXMLNodeCollection)
    ['{C2DFF5B3-CD3C-4AA7-8D0A-44841720630F}']
    function Add: IXMLRechnungTyp;
    function Insert(const Index: Integer): IXMLRechnungTyp;
    function Get_Item(Index: Integer): IXMLRechnungTyp;
    property Items[Index: Integer]: IXMLRechnungTyp read Get_Item; default;
  end;
  IXMLRechnungTypZahlung = interface(IXMLNode)
    ['{F610EFCC-7B87-43D0-9166-B116155A2A6C}']
    function Get_Ratenzahlung: IXMLRatenzahlungTyp;
    function Get_Kontoverbindung: IXMLKontoTyp;
    function Get_Art: TXSDZahlungsartEnum;
    procedure Set_Art(const Value: TXSDZahlungsartEnum);
    property Ratenzahlung: IXMLRatenzahlungTyp read Get_Ratenzahlung;
    property Kontoverbindung: IXMLKontoTyp read Get_Kontoverbindung;
    property Art: TXSDZahlungsartEnum read Get_Art write Set_Art;
  end;
  IXMLRechnungTypZahlungList = interface(IXMLNodeCollection)
    ['{3013F929-6A07-4D07-AC17-4AC523435515}']
    function Add: IXMLRechnungTypZahlung;
    function Insert(const Index: Integer): IXMLRechnungTypZahlung;
    function Get_Item(Index: Integer): IXMLRechnungTypZahlung;
    property Items[Index: Integer]: IXMLRechnungTypZahlung read Get_Item; default;
  end;
  IXMLRechnungTypRechnungsvorgaben = interface(IXMLNode)
    ['{665F036C-20F8-4F06-8E05-A1AC97ECB31F}']
    function Get_Direktzahlungsbetrag: TXSDBetragTyp;
    procedure Set_Direktzahlungsbetrag(const Value: TXSDBetragTyp);
    function Get_Nachlass: IXMLNachlassTyp;
    function Get_Zuzahlungsbetrag: IXMLRechnungTypZuzahlungsbetrag;
    function Get_Beteiligung: IXMLBeteiligungTypList;
    property Direktzahlungsbetrag: TXSDBetragTyp read Get_Direktzahlungsbetrag write Set_Direktzahlungsbetrag;
    property Nachlass: IXMLNachlassTyp read Get_Nachlass;
    property Zuzahlungsbetrag: IXMLRechnungTypZuzahlungsbetrag read Get_Zuzahlungsbetrag;
    property Beteiligung: IXMLBeteiligungTypList read Get_Beteiligung;
  end;
  IXMLRechnungTypRechnungsvorgabenList = interface(IXMLNodeCollection)
    ['{05565265-E292-4E2F-BA37-52A47C62E8EB}']
    function Add: IXMLRechnungTypRechnungsvorgaben;
    function Insert(const Index: Integer): IXMLRechnungTypRechnungsvorgaben;
    function Get_Item(Index: Integer): IXMLRechnungTypRechnungsvorgaben;
    property Items[Index: Integer]: IXMLRechnungTypRechnungsvorgaben read Get_Item; default;
  end;
  IXMLRechnungTypZuzahlungsbetrag = interface(IXMLNode)
    ['{5F8E9898-0FE9-4317-860B-56A79565871E}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kennzeichen: string;
    procedure Set_Kennzeichen(const Value: string);
    property Value: string read Get_Value write Set_Value;
    property Kennzeichen: string read Get_Kennzeichen write Set_Kennzeichen;
  end;
  IXMLRechnungTypZuzahlungsbetragList = interface(IXMLNodeCollection)
    ['{E6F0C26E-211C-48D2-B96A-49F6C9B2C5EF}']
    function Add: IXMLRechnungTypZuzahlungsbetrag;
    function Insert(const Index: Integer): IXMLRechnungTypZuzahlungsbetrag;
    function Get_Item(Index: Integer): IXMLRechnungTypZuzahlungsbetrag;
    property Items[Index: Integer]: IXMLRechnungTypZuzahlungsbetrag read Get_Item; default;
  end;
  IXMLRechnungTypAbrechnungsfall = interface(IXMLNode)
    ['{DC61A669-DEAB-415A-8E6B-797418AA4452}']
    function Get_Bema: IXMLBemaTyp;
    function Get_Bmgnormprivat: IXMLBmgNormPrivatTyp;
    function Get_Bmgnormkfoprivat: IXMLBmgNormKFOPrivatTyp;
    function Get_Eigenanteilsrechnung: IXMLEigenanteilsrechnungTyp;
    function Get_Eigenanteilsrechnungkfo: IXMLEigenanteilsrechnungKFOTyp;
    function Get_Humanmedizin: IXMLHumanmedizinTyp;
    property Bema: IXMLBemaTyp read Get_Bema;
    property Bmgnormprivat: IXMLBmgNormPrivatTyp read Get_Bmgnormprivat;
    property Bmgnormkfoprivat: IXMLBmgNormKFOPrivatTyp read Get_Bmgnormkfoprivat;
    property Eigenanteilsrechnung: IXMLEigenanteilsrechnungTyp read Get_Eigenanteilsrechnung;
    property Eigenanteilsrechnungkfo: IXMLEigenanteilsrechnungKFOTyp read Get_Eigenanteilsrechnungkfo;
    property Humanmedizin: IXMLHumanmedizinTyp read Get_Humanmedizin;
  end;
  IXMLRechnungTypAbrechnungsfallList = interface(IXMLNodeCollection)
    ['{C76E7326-EDD2-4FC2-B206-FC38726A8015}']
    function Add: IXMLRechnungTypAbrechnungsfall;
    function Insert(const Index: Integer): IXMLRechnungTypAbrechnungsfall;
    function Get_Item(Index: Integer): IXMLRechnungTypAbrechnungsfall;
    property Items[Index: Integer]: IXMLRechnungTypAbrechnungsfall read Get_Item; default;
  end;
  IXMLRechnungListe = interface(IXMLNode)
    ['{EB0BEEED-9BE7-4A29-A9C9-F4B0B98B5818}']
    function Get_Hinweistext: TXSDTextTyp;
    procedure Set_Hinweistext(const Value: TXSDTextTyp);
    function Get_Nachrichtentyp: IXMLNachrichtentypTyp;
    function Get_Rechnungsersteller: IXMLRechnungserstellerTyp;
    function Get_Leistungserbringer: IXMLLeistungserbringerTypList;
    function Get_Rechnung: IXMLRechnungTypList;
    function Get_Anzahl: Integer;
    procedure Set_Anzahl(const Value: Integer);
    property Hinweistext: TXSDTextTyp read Get_Hinweistext write Set_Hinweistext;
    property Nachrichtentyp: IXMLNachrichtentypTyp read Get_Nachrichtentyp;
    property Rechnungsersteller: IXMLRechnungserstellerTyp read Get_Rechnungsersteller;
    property Leistungserbringer: IXMLLeistungserbringerTypList read Get_Leistungserbringer;
    property Rechnung: IXMLRechnungTypList read Get_Rechnung;
    property Anzahl: Integer read Get_Anzahl write Set_Anzahl;
  end;
  IXMLRechnungListeList = interface(IXMLNodeCollection)
    ['{2D34C708-AE93-465C-8236-56B4374526C7}']
    function Add: IXMLRechnungListe;
    function Insert(const Index: Integer): IXMLRechnungListe;
    function Get_Item(Index: Integer): IXMLRechnungListe;
    property Items[Index: Integer]: IXMLRechnungListe read Get_Item; default;
  end;
  IXMLAnhangidTyp = interface(IXMLNode)
    ['{85B45294-7F55-4606-97E7-AD461DA4817D}']
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Verwendungszweck: TXSDVerwendungszweckanhangEnum;
    procedure Set_Verwendungszweck(const Value: TXSDVerwendungszweckanhangEnum);
    function Get_Belegart: TXSDBelegartEnum;
    procedure Set_Belegart(const Value: TXSDBelegartEnum);
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Verwendungszweck: TXSDVerwendungszweckanhangEnum read Get_Verwendungszweck write Set_Verwendungszweck;
    property Belegart: TXSDBelegartEnum read Get_Belegart write Set_Belegart;
  end;
  IXMLAnhangidTypList = interface(IXMLNodeCollection)
    ['{3DC3C430-F48C-47D7-AC62-17039D1BF68E}']
    function Add: IXMLAnhangidTyp;
    function Insert(const Index: Integer): IXMLAnhangidTyp;
    function Get_Item(Index: Integer): IXMLAnhangidTyp;
    property Items[Index: Integer]: IXMLAnhangidTyp read Get_Item; default;
  end;
  IXMLAnschriftTyp = interface(IXMLNode)
    ['{4B6F3A98-18DA-4923-BCFD-9A81494320AD}']
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Packstation: IXMLPackstationTyp;
    function Get_Grossempfaenger: IXMLAnschriftTypGrossempfaenger;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
    property Hausadresse: IXMLHausadresseTyp read Get_Hausadresse;
    property Postfach: IXMLPostfachTyp read Get_Postfach;
    property Packstation: IXMLPackstationTyp read Get_Packstation;
    property Grossempfaenger: IXMLAnschriftTypGrossempfaenger read Get_Grossempfaenger;
    property Auslandsadresse: IXMLAuslandadresseTyp read Get_Auslandsadresse;
  end;
  IXMLAnschriftTypList = interface(IXMLNodeCollection)
    ['{033A0751-D341-425C-84AC-1D9B0CD40B84}']
    function Add: IXMLAnschriftTyp;
    function Insert(const Index: Integer): IXMLAnschriftTyp;
    function Get_Item(Index: Integer): IXMLAnschriftTyp;
    property Items[Index: Integer]: IXMLAnschriftTyp read Get_Item; default;
  end;
  IXMLAnschriftTypGrossempfaenger = interface(IXMLNode)
    ['{AF221893-E1B5-44BF-8EBD-D9E72FC52054}']
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    property Plz: TXSDPlzTyp read Get_Plz write Set_Plz;
    property Ort: TXSDOrtTyp read Get_Ort write Set_Ort;
  end;
  IXMLAnschriftTypGrossempfaengerList = interface(IXMLNodeCollection)
    ['{B3BF38D0-883E-4542-AD13-D4D47CEA650F}']
    function Add: IXMLAnschriftTypGrossempfaenger;
    function Insert(const Index: Integer): IXMLAnschriftTypGrossempfaenger;
    function Get_Item(Index: Integer): IXMLAnschriftTypGrossempfaenger;
    property Items[Index: Integer]: IXMLAnschriftTypGrossempfaenger read Get_Item; default;
  end;
  IXMLAnschrift2Typ = interface(IXMLAnschriftTyp)
    ['{57E44B76-C9F4-4DCC-B8F0-3FB15DE853FA}']
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
    property Hausadresse: IXMLHausadresseTyp read Get_Hausadresse;
    property Postfach: IXMLPostfachTyp read Get_Postfach;
    property Auslandsadresse: IXMLAuslandadresseTyp read Get_Auslandsadresse;
  end;
  IXMLAnschrift2TypList = interface(IXMLNodeCollection)
    ['{DBC02607-6A4F-45E1-850C-41CAF5F48369}']
    function Add: IXMLAnschrift2Typ;
    function Insert(const Index: Integer): IXMLAnschrift2Typ;
    function Get_Item(Index: Integer): IXMLAnschrift2Typ;
    property Items[Index: Integer]: IXMLAnschrift2Typ read Get_Item; default;
  end;
  IXMLAnschrift3Typ = interface(IXMLNode)
    ['{91CD90F8-39DC-4092-8329-B2E9EC22B215}']
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
    property Hausadresse: IXMLHausadresseTyp read Get_Hausadresse;
    property Postfach: IXMLPostfachTyp read Get_Postfach;
    property Auslandsadresse: IXMLAuslandadresseTyp read Get_Auslandsadresse;
  end;
  IXMLAnschrift3TypList = interface(IXMLNodeCollection)
    ['{3AD2A6B0-03ED-4D7D-A315-31BD16A78909}']
    function Add: IXMLAnschrift3Typ;
    function Insert(const Index: Integer): IXMLAnschrift3Typ;
    function Get_Item(Index: Integer): IXMLAnschrift3Typ;
    property Items[Index: Integer]: IXMLAnschrift3Typ read Get_Item; default;
  end;
  IXMLAuslandadresseTyp = interface(IXMLNode)
    ['{4608EBF9-7E60-415E-9DC7-984492E34B08}']
    function Get_Land: TXSDLandEnum;
    procedure Set_Land(const Value: TXSDLandEnum);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    function Get_Strasse: TXSDStrasseTyp;
    procedure Set_Strasse(const Value: TXSDStrasseTyp);
    property Land: TXSDLandEnum read Get_Land write Set_Land;
    property Plz: TXSDPlzTyp read Get_Plz write Set_Plz;
    property Ort: TXSDOrtTyp read Get_Ort write Set_Ort;
    property Strasse: TXSDStrasseTyp read Get_Strasse write Set_Strasse;
  end;
  IXMLAuslandadresseTypList = interface(IXMLNodeCollection)
    ['{034D52FA-924F-4CB6-BD0A-CAD8B761FFD5}']
    function Add: IXMLAuslandadresseTyp;
    function Insert(const Index: Integer): IXMLAuslandadresseTyp;
    function Get_Item(Index: Integer): IXMLAuslandadresseTyp;
    property Items[Index: Integer]: IXMLAuslandadresseTyp read Get_Item; default;
  end;
  IXMLHausadresseTyp = interface(IXMLNode)
    ['{C728B3B7-0D62-4585-AC7D-642F33281373}']
    function Get_Land: TXSDLandEnum;
    procedure Set_Land(const Value: TXSDLandEnum);
    function Get_Zusatz: string;
    procedure Set_Zusatz(const Value: string);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    function Get_Strasse: TXSDStrasseTyp;
    procedure Set_Strasse(const Value: TXSDStrasseTyp);
    function Get_Hausnr: string;
    procedure Set_Hausnr(const Value: string);
    property Land: TXSDLandEnum read Get_Land write Set_Land;
    property Zusatz: string read Get_Zusatz write Set_Zusatz;
    property Plz: TXSDPlzTyp read Get_Plz write Set_Plz;
    property Ort: TXSDOrtTyp read Get_Ort write Set_Ort;
    property Strasse: TXSDStrasseTyp read Get_Strasse write Set_Strasse;
    property Hausnr: string read Get_Hausnr write Set_Hausnr;
  end;
  IXMLHausadresseTypList = interface(IXMLNodeCollection)
    ['{74C23112-BD6F-47FB-AD07-AF2927282B3F}']
    function Add: IXMLHausadresseTyp;
    function Insert(const Index: Integer): IXMLHausadresseTyp;
    function Get_Item(Index: Integer): IXMLHausadresseTyp;
    property Items[Index: Integer]: IXMLHausadresseTyp read Get_Item; default;
  end;
  IXMLPostfachTyp = interface(IXMLNode)
    ['{9FAFE9FD-22F2-490A-A21E-E6A97D243495}']
    function Get_Postfachnr: TXSDPlzTyp;
    procedure Set_Postfachnr(const Value: TXSDPlzTyp);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    property Postfachnr: TXSDPlzTyp read Get_Postfachnr write Set_Postfachnr;
    property Plz: TXSDPlzTyp read Get_Plz write Set_Plz;
    property Ort: TXSDOrtTyp read Get_Ort write Set_Ort;
  end;
  IXMLPostfachTypList = interface(IXMLNodeCollection)
    ['{EE7F3AFB-9EC7-4016-AE4C-A229EF1795D7}']
    function Add: IXMLPostfachTyp;
    function Insert(const Index: Integer): IXMLPostfachTyp;
    function Get_Item(Index: Integer): IXMLPostfachTyp;
    property Items[Index: Integer]: IXMLPostfachTyp read Get_Item; default;
  end;
  IXMLPackstationTyp = interface(IXMLNode)
    ['{FF7E7F53-D407-413A-A0E4-5EF576DC4FB2}']
    function Get_Postnr: TXSDPlzTyp;
    procedure Set_Postnr(const Value: TXSDPlzTyp);
    function Get_Packstationnr: TXSDPlzTyp;
    procedure Set_Packstationnr(const Value: TXSDPlzTyp);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    property Postnr: TXSDPlzTyp read Get_Postnr write Set_Postnr;
    property Packstationnr: TXSDPlzTyp read Get_Packstationnr write Set_Packstationnr;
    property Plz: TXSDPlzTyp read Get_Plz write Set_Plz;
    property Ort: TXSDOrtTyp read Get_Ort write Set_Ort;
  end;
  IXMLPackstationTypList = interface(IXMLNodeCollection)
    ['{17B0143C-6376-4620-9625-D4A863B4F938}']
    function Add: IXMLPackstationTyp;
    function Insert(const Index: Integer): IXMLPackstationTyp;
    function Get_Item(Index: Integer): IXMLPackstationTyp;
    property Items[Index: Integer]: IXMLPackstationTyp read Get_Item; default;
  end;
  IXMLBehandelterTyp = interface(IXMLPersonTyp)
    ['{45CFD9F1-8A9E-4F58-95B5-7391C5FE158A}']
    function Get_Anrede: TXSDString140Typ;
    procedure Set_Anrede(const Value: TXSDString140Typ);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
    property Anrede: TXSDString140Typ read Get_Anrede write Set_Anrede;
    property Titel: TXSDString140Typ read Get_Titel write Set_Titel;
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
    property Namezusatz: TXSDString140Typ read Get_Namezusatz write Set_Namezusatz;
    property Gebname: TXSDString140Typ read Get_Gebname write Set_Gebname;
    property Gebdatum: string read Get_Gebdatum write Set_Gebdatum;
    property Geschlecht: TXSDGeschlechtEnum read Get_Geschlecht write Set_Geschlecht;
    property Staat: TXSDLandEnum read Get_Staat write Set_Staat;
  end;
  IXMLBehandelterTypList = interface(IXMLNodeCollection)
    ['{70E23801-8E89-40DD-AF37-D766C56BCBEB}']
    function Add: IXMLBehandelterTyp;
    function Insert(const Index: Integer): IXMLBehandelterTyp;
    function Get_Item(Index: Integer): IXMLBehandelterTyp;
    property Items[Index: Integer]: IXMLBehandelterTyp read Get_Item; default;
  end;
  IXMLEmpfaengerPersonTyp = interface(IXMLPersonTyp)
    ['{2C578B0C-21B1-47CF-8D81-14839FA02193}']
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    property Anrede: string read Get_Anrede write Set_Anrede;
    property Titel: TXSDString140Typ read Get_Titel write Set_Titel;
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
    property Namezusatz: TXSDString140Typ read Get_Namezusatz write Set_Namezusatz;
    property Gebdatum: string read Get_Gebdatum write Set_Gebdatum;
  end;
  IXMLEmpfaengerPersonTypList = interface(IXMLNodeCollection)
    ['{0568989B-9349-4713-AF5D-EEB92606FF02}']
    function Add: IXMLEmpfaengerPersonTyp;
    function Insert(const Index: Integer): IXMLEmpfaengerPersonTyp;
    function Get_Item(Index: Integer): IXMLEmpfaengerPersonTyp;
    property Items[Index: Integer]: IXMLEmpfaengerPersonTyp read Get_Item; default;
  end;
  IXMLKontaktTyp = interface(IXMLNode)
    ['{6E042D36-72D6-40CF-B3C6-EA3F0E510FEF}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Typ: TXSDKontakttypEnum;
    procedure Set_Typ(const Value: TXSDKontakttypEnum);
    function Get_Art: TXSDKontaktartEnum;
    procedure Set_Art(const Value: TXSDKontaktartEnum);
    property Value: string read Get_Value write Set_Value;
    property Typ: TXSDKontakttypEnum read Get_Typ write Set_Typ;
    property Art: TXSDKontaktartEnum read Get_Art write Set_Art;
  end;
  IXMLKontaktTypList = interface(IXMLNodeCollection)
    ['{0BA962C8-8A6C-4C66-8C0B-6E4F8BC7F970}']
    function Add: IXMLKontaktTyp;
    function Insert(const Index: Integer): IXMLKontaktTyp;
    function Get_Item(Index: Integer): IXMLKontaktTyp;
    property Items[Index: Integer]: IXMLKontaktTyp read Get_Item; default;
  end;
  IXMLLeistungserbringerTyp = interface(IXMLLEPersonTyp)
    ['{8B63D6F8-E03B-461C-9010-5A30E9C2D1BD}']
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Fachbereich: IXMLFachbereichTypList;
    function Get_Lanr: IXMLNodeCollection;
    function Get_Betriebsstaette: IXMLBehandlungsortTyp;
    function Get_Kzvnr: string;
    procedure Set_Kzvnr(const Value: string);
    function Get_Ustidnr: TXSDUstidnrTyp;
    procedure Set_Ustidnr(const Value: TXSDUstidnrTyp);
    function Get_Hba: string;
    procedure Set_Hba(const Value: string);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Kundennr: TXSDPVSkundennrTyp read Get_Kundennr write Set_Kundennr;
    property Fachbereich: IXMLFachbereichTypList read Get_Fachbereich;
    property Lanr: IXMLNodeCollection read Get_Lanr;
    property Betriebsstaette: IXMLBehandlungsortTyp read Get_Betriebsstaette;
    property Kzvnr: string read Get_Kzvnr write Set_Kzvnr;
    property Ustidnr: TXSDUstidnrTyp read Get_Ustidnr write Set_Ustidnr;
    property Hba: string read Get_Hba write Set_Hba;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
  end;
  IXMLLeistungserbringerTypList = interface(IXMLNodeCollection)
    ['{1D92BF34-2436-4086-AC50-EEA51B893A7D}']
    function Add: IXMLLeistungserbringerTyp;
    function Insert(const Index: Integer): IXMLLeistungserbringerTyp;
    function Get_Item(Index: Integer): IXMLLeistungserbringerTyp;
    property Items[Index: Integer]: IXMLLeistungserbringerTyp read Get_Item; default;
  end;
  IXMLLEPersonTyp = interface(IXMLPersonTyp)
    ['{684B1C93-3A3F-452C-B2A7-FE8B1A6DFE51}']
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    property Anrede: string read Get_Anrede write Set_Anrede;
    property Titel: TXSDString140Typ read Get_Titel write Set_Titel;
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
    property Namezusatz: TXSDString140Typ read Get_Namezusatz write Set_Namezusatz;
  end;
  IXMLLEPersonTypList = interface(IXMLNodeCollection)
    ['{4925014A-A714-4EFC-8462-B40813A94064}']
    function Add: IXMLLEPersonTyp;
    function Insert(const Index: Integer): IXMLLEPersonTyp;
    function Get_Item(Index: Integer): IXMLLEPersonTyp;
    property Items[Index: Integer]: IXMLLEPersonTyp read Get_Item; default;
  end;
  IXMLOrganisationTyp = interface(IXMLNode)
    ['{F1EB6F0A-93B4-4752-8896-3E246F3EE8A0}']
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Namezusatz: string;
    procedure Set_Namezusatz(const Value: string);
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    property Name: string read Get_Name write Set_Name;
    property Namezusatz: string read Get_Namezusatz write Set_Namezusatz;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
  end;
  IXMLOrganisationTypList = interface(IXMLNodeCollection)
    ['{431204B6-1B18-4138-A4E8-62769FE00E1C}']
    function Add: IXMLOrganisationTyp;
    function Insert(const Index: Integer): IXMLOrganisationTyp;
    function Get_Item(Index: Integer): IXMLOrganisationTyp;
    property Items[Index: Integer]: IXMLOrganisationTyp read Get_Item; default;
  end;
  IXMLPersonTyp = interface(IXMLNode)
    ['{473D9BCD-3CBF-40AA-AC4B-67F17BA6FC50}']
    function Get_Anrede: TXSDString140Typ;
    procedure Set_Anrede(const Value: TXSDString140Typ);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
    property Anrede: TXSDString140Typ read Get_Anrede write Set_Anrede;
    property Titel: TXSDString140Typ read Get_Titel write Set_Titel;
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
    property Namezusatz: TXSDString140Typ read Get_Namezusatz write Set_Namezusatz;
    property Gebname: TXSDString140Typ read Get_Gebname write Set_Gebname;
    property Gebdatum: string read Get_Gebdatum write Set_Gebdatum;
    property Geschlecht: TXSDGeschlechtEnum read Get_Geschlecht write Set_Geschlecht;
    property Staat: TXSDLandEnum read Get_Staat write Set_Staat;
  end;
  IXMLPersonTypList = interface(IXMLNodeCollection)
    ['{1C455DAB-C4E7-4934-9EDC-B54E6C273876}']
    function Add: IXMLPersonTyp;
    function Insert(const Index: Integer): IXMLPersonTyp;
    function Get_Item(Index: Integer): IXMLPersonTyp;
    property Items[Index: Integer]: IXMLPersonTyp read Get_Item; default;
  end;
  IXMLRechnungserstellerTyp = interface(IXMLNode)
    ['{10F90848-3C44-4992-BFCF-8245253250C7}']
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Namezusatz: IXMLNodeCollection;
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Ustidnr: TXSDUstidnrTyp;
    procedure Set_Ustidnr(const Value: TXSDUstidnrTyp);
    function Get_Glaeubigerid: TXSDString140Typ;
    procedure Set_Glaeubigerid(const Value: TXSDString140Typ);
    property Name: string read Get_Name write Set_Name;
    property Namezusatz: IXMLNodeCollection read Get_Namezusatz;
    property Kundennr: TXSDPVSkundennrTyp read Get_Kundennr write Set_Kundennr;
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Ustidnr: TXSDUstidnrTyp read Get_Ustidnr write Set_Ustidnr;
    property Glaeubigerid: TXSDString140Typ read Get_Glaeubigerid write Set_Glaeubigerid;
  end;
  IXMLRechnungserstellerTypList = interface(IXMLNodeCollection)
    ['{FC4A6AA2-1669-48CD-9FDA-55FC2A0FE6C3}']
    function Add: IXMLRechnungserstellerTyp;
    function Insert(const Index: Integer): IXMLRechnungserstellerTyp;
    function Get_Item(Index: Integer): IXMLRechnungserstellerTyp;
    property Items[Index: Integer]: IXMLRechnungserstellerTyp read Get_Item; default;
  end;
  IXMLRechnungsempfaengerTyp = interface(IXMLNode)
    ['{16BBE7E4-07D9-4752-A3FE-A3F133AB9877}']
    function Get_Person: IXMLRechnungsempfaengerTypPerson;
    function Get_Organisation: IXMLOrganisationTyp;
    property Person: IXMLRechnungsempfaengerTypPerson read Get_Person;
    property Organisation: IXMLOrganisationTyp read Get_Organisation;
  end;
  IXMLRechnungsempfaengerTypList = interface(IXMLNodeCollection)
    ['{6D206BC7-6253-474E-B840-8AF257357624}']
    function Add: IXMLRechnungsempfaengerTyp;
    function Insert(const Index: Integer): IXMLRechnungsempfaengerTyp;
    function Get_Item(Index: Integer): IXMLRechnungsempfaengerTyp;
    property Items[Index: Integer]: IXMLRechnungsempfaengerTyp read Get_Item; default;
  end;
  IXMLRechnungsempfaengerTypPerson = interface(IXMLEmpfaengerPersonTyp)
    ['{3F36D76F-405F-4E0A-88D3-56147F7A7681}']
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLRechnungsempfaengerTypPersonList = interface(IXMLNodeCollection)
    ['{0B38F5A8-A730-44E5-BBA2-3D9B65069665}']
    function Add: IXMLRechnungsempfaengerTypPerson;
    function Insert(const Index: Integer): IXMLRechnungsempfaengerTypPerson;
    function Get_Item(Index: Integer): IXMLRechnungsempfaengerTypPerson;
    property Items[Index: Integer]: IXMLRechnungsempfaengerTypPerson read Get_Item; default;
  end;
  IXMLUeberweiserTyp = interface(IXMLLEPersonTyp)
    ['{7426638B-564F-42E2-8B39-BEEBBA64AA2F}']
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
  end;
  IXMLUeberweiserTypList = interface(IXMLNodeCollection)
    ['{661C0759-E66D-45F1-8ADB-3876DF5BD6AF}']
    function Add: IXMLUeberweiserTyp;
    function Insert(const Index: Integer): IXMLUeberweiserTyp;
    function Get_Item(Index: Integer): IXMLUeberweiserTyp;
    property Items[Index: Integer]: IXMLUeberweiserTyp read Get_Item; default;
  end;
  IXMLVersicherterTyp = interface(IXMLPersonTyp)
    ['{04B91962-F656-4E7D-A7C0-27AD172265BC}']
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
    property Anrede: string read Get_Anrede write Set_Anrede;
    property Titel: TXSDString140Typ read Get_Titel write Set_Titel;
    property Vorname: TXSDString140Typ read Get_Vorname write Set_Vorname;
    property Name: TXSDString140Typ read Get_Name write Set_Name;
    property Namezusatz: TXSDString140Typ read Get_Namezusatz write Set_Namezusatz;
    property Gebname: TXSDString140Typ read Get_Gebname write Set_Gebname;
    property Gebdatum: string read Get_Gebdatum write Set_Gebdatum;
    property Geschlecht: TXSDGeschlechtEnum read Get_Geschlecht write Set_Geschlecht;
    property Staat: TXSDLandEnum read Get_Staat write Set_Staat;
  end;
  IXMLVersicherterTypList = interface(IXMLNodeCollection)
    ['{454247E1-9372-472F-A32E-7609515D37AB}']
    function Add: IXMLVersicherterTyp;
    function Insert(const Index: Integer): IXMLVersicherterTyp;
    function Get_Item(Index: Integer): IXMLVersicherterTyp;
    property Items[Index: Integer]: IXMLVersicherterTyp read Get_Item; default;
  end;
  IXMLBemaTyp = interface(IXMLNode)
    ['{19F5D5C7-ECD6-4E44-BC0A-02F3AFD1737E}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBemaTypUeberweiser;
    function Get_Behandelter: IXMLBemaTypBehandelter;
    function Get_Versicherter: IXMLBemaTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Kvkartendaten: IXMLKVKartendatenTyp;
    function Get_Positionen: IXMLBemaTypPositionen;
    function Get_Summenblock: IXMLSummenblockBemaTyp;
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLBemaTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLBemaTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLBemaTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Behandlungsart: TXSDBehandlungsartEnum read Get_Behandlungsart write Set_Behandlungsart;
    property Kvkartendaten: IXMLKVKartendatenTyp read Get_Kvkartendaten;
    property Positionen: IXMLBemaTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBemaTyp read Get_Summenblock;
  end;
  IXMLBemaTypList = interface(IXMLNodeCollection)
    ['{E7BDC3E0-E410-4889-BEFE-98EF03FD80EF}']
    function Add: IXMLBemaTyp;
    function Insert(const Index: Integer): IXMLBemaTyp;
    function Get_Item(Index: Integer): IXMLBemaTyp;
    property Items[Index: Integer]: IXMLBemaTyp read Get_Item; default;
  end;
  IXMLBemaTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{6B12B968-B19E-42CB-B336-CB54F242B218}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLBemaTypUeberweiserList = interface(IXMLNodeCollection)
    ['{A929E23B-0E3E-47BB-A5CE-81AE95602ACA}']
    function Add: IXMLBemaTypUeberweiser;
    function Insert(const Index: Integer): IXMLBemaTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBemaTypUeberweiser;
    property Items[Index: Integer]: IXMLBemaTypUeberweiser read Get_Item; default;
  end;
  IXMLBemaTypBehandelter = interface(IXMLBehandelterTyp)
    ['{7259E0C6-E4E2-4CD4-B685-83B85C462820}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLBemaTypBehandelterList = interface(IXMLNodeCollection)
    ['{B50DD8A2-3145-4469-BB78-F529FCE7F490}']
    function Add: IXMLBemaTypBehandelter;
    function Insert(const Index: Integer): IXMLBemaTypBehandelter;
    function Get_Item(Index: Integer): IXMLBemaTypBehandelter;
    property Items[Index: Integer]: IXMLBemaTypBehandelter read Get_Item; default;
  end;
  IXMLBemaTypVersicherter = interface(IXMLVersicherterTyp)
    ['{20726AA8-D78C-4027-AD0B-BEBB1AEF0B3F}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLBemaTypVersicherterList = interface(IXMLNodeCollection)
    ['{7BAD814F-AF77-4529-A535-5B5CEB699B9A}']
    function Add: IXMLBemaTypVersicherter;
    function Insert(const Index: Integer): IXMLBemaTypVersicherter;
    function Get_Item(Index: Integer): IXMLBemaTypVersicherter;
    property Items[Index: Integer]: IXMLBemaTypVersicherter read Get_Item; default;
  end;
  IXMLBemaTypPositionen = interface(IXMLNode)
    ['{F3C2661B-07D9-4EDF-914E-5A3EDF48AE81}']
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Bema: IXMLBemaZifferTyp read Get_Bema;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLBemaTypPositionenList = interface(IXMLNodeCollection)
    ['{BB7A1825-9EC9-4FAD-9BFC-812F47DB3E24}']
    function Add: IXMLBemaTypPositionen;
    function Insert(const Index: Integer): IXMLBemaTypPositionen;
    function Get_Item(Index: Integer): IXMLBemaTypPositionen;
    property Items[Index: Integer]: IXMLBemaTypPositionen read Get_Item; default;
  end;
  IXMLBmgNormPrivatTyp = interface(IXMLNode)
    ['{96D1A51F-0221-4245-A28B-ED30104C1620}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBmgNormPrivatTypUeberweiser;
    function Get_Behandelter: IXMLBmgNormPrivatTypBehandelter;
    function Get_Versicherter: IXMLBmgNormPrivatTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Positionen: IXMLBmgNormPrivatTypPositionen;
    function Get_Summenblock: IXMLSummenblockBmgTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLBmgNormPrivatTypBelegList;
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLBmgNormPrivatTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLBmgNormPrivatTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLBmgNormPrivatTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Minderungssatz: TXSDMinderungssatzEnum read Get_Minderungssatz write Set_Minderungssatz;
    property Behandlungsart: TXSDBehandlungsartEnum read Get_Behandlungsart write Set_Behandlungsart;
    property Diagnose: IXMLDiagnoseTypList read Get_Diagnose;
    property Positionen: IXMLBmgNormPrivatTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBmgTyp read Get_Summenblock;
    property Begruendung: IXMLBegruendungTypList read Get_Begruendung;
    property Anhangid: IXMLAnhangidTypList read Get_Anhangid;
    property Beleg: IXMLBmgNormPrivatTypBelegList read Get_Beleg;
  end;
  IXMLBmgNormPrivatTypList = interface(IXMLNodeCollection)
    ['{CA4CEFBE-7669-470D-92FB-190DCF99B21A}']
    function Add: IXMLBmgNormPrivatTyp;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTyp;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTyp;
    property Items[Index: Integer]: IXMLBmgNormPrivatTyp read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{284D160B-E952-4F9D-A67C-1A1D2041EE06}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLBmgNormPrivatTypUeberweiserList = interface(IXMLNodeCollection)
    ['{53BCED01-8FC7-41A3-A470-BADC9911AE24}']
    function Add: IXMLBmgNormPrivatTypUeberweiser;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypUeberweiser;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypUeberweiser read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypBehandelter = interface(IXMLBehandelterTyp)
    ['{72883DBA-CF28-4BD7-807A-EA29F49D14FD}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLBmgNormPrivatTypBehandelterList = interface(IXMLNodeCollection)
    ['{9F3F7A22-5E38-4A56-A8FD-D0C4BFAB34DF}']
    function Add: IXMLBmgNormPrivatTypBehandelter;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypBehandelter;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypBehandelter;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypBehandelter read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypVersicherter = interface(IXMLVersicherterTyp)
    ['{A7ACA194-B68C-49F9-B5C5-8726F6D2ABEC}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLBmgNormPrivatTypVersicherterList = interface(IXMLNodeCollection)
    ['{2BD4FF39-36A3-45DF-AC40-5182F48B0922}']
    function Add: IXMLBmgNormPrivatTypVersicherter;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypVersicherter;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypVersicherter;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypVersicherter read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypPositionen = interface(IXMLNode)
    ['{F6F98E82-EFA9-4A7F-832E-04393D79EFBE}']
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLBmgNormPrivatTypSonstigeshonorar;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Goziffer: IXMLGOZifferTyp read Get_Goziffer;
    property Entschaedigung: IXMLEntschaedigungTyp read Get_Entschaedigung;
    property Auslagen: IXMLAuslagenTyp read Get_Auslagen;
    property Sonstigeshonorar: IXMLBmgNormPrivatTypSonstigeshonorar read Get_Sonstigeshonorar;
    property Gozziffer: IXMLGOZZifferTyp read Get_Gozziffer;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLBmgNormPrivatTypPositionenList = interface(IXMLNodeCollection)
    ['{4D93C464-564D-4FF8-AB95-CB47B96B3C78}']
    function Add: IXMLBmgNormPrivatTypPositionen;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypPositionen;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypPositionen;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypPositionen read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypSonstigeshonorar = interface(IXMLHonorarTyp)
    ['{17645317-2C0B-4DA7-9F09-5B34337E6A2E}']
    function Get_Leistungskuerzel: string;
    procedure Set_Leistungskuerzel(const Value: string);
    property Leistungskuerzel: string read Get_Leistungskuerzel write Set_Leistungskuerzel;
  end;
  IXMLBmgNormPrivatTypSonstigeshonorarList = interface(IXMLNodeCollection)
    ['{6F21E8CF-BEC4-419A-B595-4B0923015A97}']
    function Add: IXMLBmgNormPrivatTypSonstigeshonorar;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypSonstigeshonorar read Get_Item; default;
  end;
  IXMLBmgNormPrivatTypBeleg = interface(IXMLNode)
    ['{C39E27EB-E72C-44FD-9FE4-779A8F128BB5}']
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
    property Eigenlabor: IXMLEigenlaborTyp read Get_Eigenlabor;
    property Fremdlabor: IXMLFremdlaborTyp read Get_Fremdlabor;
    property Material: IXMLMaterialTyp read Get_Material;
    property Materialpass: IXMLMaterialpassTyp read Get_Materialpass;
  end;
  IXMLBmgNormPrivatTypBelegList = interface(IXMLNodeCollection)
    ['{BA1AC417-1552-4B88-A762-CA2236DD4788}']
    function Add: IXMLBmgNormPrivatTypBeleg;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypBeleg;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypBeleg;
    property Items[Index: Integer]: IXMLBmgNormPrivatTypBeleg read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTyp = interface(IXMLNode)
    ['{CB29FBF7-3DDA-471B-962E-4FA8C12C32FB}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBmgNormKFOPrivatTypUeberweiser;
    function Get_Behandelter: IXMLBmgNormKFOPrivatTypBehandelter;
    function Get_Versicherter: IXMLBmgNormKFOPrivatTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Kfoplandaten: IXMLKfoplandatenTyp;
    function Get_Positionen: IXMLBmgNormKFOPrivatTypPositionen;
    function Get_Summenblock: IXMLSummenblockBmgTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLBmgNormKFOPrivatTypBelegList;
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLBmgNormKFOPrivatTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLBmgNormKFOPrivatTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLBmgNormKFOPrivatTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Diagnose: IXMLDiagnoseTypList read Get_Diagnose;
    property Kfoplandaten: IXMLKfoplandatenTyp read Get_Kfoplandaten;
    property Positionen: IXMLBmgNormKFOPrivatTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBmgTyp read Get_Summenblock;
    property Begruendung: IXMLBegruendungTypList read Get_Begruendung;
    property Anhangid: IXMLAnhangidTypList read Get_Anhangid;
    property Beleg: IXMLBmgNormKFOPrivatTypBelegList read Get_Beleg;
  end;
  IXMLBmgNormKFOPrivatTypList = interface(IXMLNodeCollection)
    ['{53448AE5-7B27-4592-A9C4-02625B3BB9BD}']
    function Add: IXMLBmgNormKFOPrivatTyp;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTyp;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTyp;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTyp read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{AC6E5EFB-6CFF-40F8-8A31-3AA3A190913E}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLBmgNormKFOPrivatTypUeberweiserList = interface(IXMLNodeCollection)
    ['{A5F2B6B5-EAD0-4AE4-BD2C-FE75443E09AF}']
    function Add: IXMLBmgNormKFOPrivatTypUeberweiser;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTypUeberweiser read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTypBehandelter = interface(IXMLBehandelterTyp)
    ['{A8B98405-B6B4-4746-BE3C-B9E089D1AAB7}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLBmgNormKFOPrivatTypBehandelterList = interface(IXMLNodeCollection)
    ['{8AD3F1A6-42DD-463D-91AA-F045B181C997}']
    function Add: IXMLBmgNormKFOPrivatTypBehandelter;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTypBehandelter read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTypVersicherter = interface(IXMLVersicherterTyp)
    ['{95888256-D355-46FA-8684-2E4AB4C42D85}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLBmgNormKFOPrivatTypVersicherterList = interface(IXMLNodeCollection)
    ['{9DAA4F63-52ED-46DF-9F02-A89F927F19E4}']
    function Add: IXMLBmgNormKFOPrivatTypVersicherter;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTypVersicherter read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTypPositionen = interface(IXMLNode)
    ['{45F9E6D8-FC32-4AF3-AF15-A68DEF0B9C3D}']
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Goziffer: IXMLGOZifferTyp read Get_Goziffer;
    property Entschaedigung: IXMLEntschaedigungTyp read Get_Entschaedigung;
    property Auslagen: IXMLAuslagenTyp read Get_Auslagen;
    property Sonstigeshonorar: IXMLHonorarTyp read Get_Sonstigeshonorar;
    property Gozziffer: IXMLGOZZifferTyp read Get_Gozziffer;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLBmgNormKFOPrivatTypPositionenList = interface(IXMLNodeCollection)
    ['{508025EC-E58B-4712-B35B-E3AACE3A4E35}']
    function Add: IXMLBmgNormKFOPrivatTypPositionen;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypPositionen;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypPositionen;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTypPositionen read Get_Item; default;
  end;
  IXMLBmgNormKFOPrivatTypBeleg = interface(IXMLNode)
    ['{A624BED6-23D1-4C53-9A4B-74200932BEAF}']
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
    property Eigenlabor: IXMLEigenlaborTyp read Get_Eigenlabor;
    property Fremdlabor: IXMLFremdlaborTyp read Get_Fremdlabor;
    property Material: IXMLMaterialTyp read Get_Material;
    property Materialpass: IXMLMaterialpassTyp read Get_Materialpass;
  end;
  IXMLBmgNormKFOPrivatTypBelegList = interface(IXMLNodeCollection)
    ['{936E4978-453C-4DF7-A4EA-47DBD1F59C56}']
    function Add: IXMLBmgNormKFOPrivatTypBeleg;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBeleg;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBeleg;
    property Items[Index: Integer]: IXMLBmgNormKFOPrivatTypBeleg read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTyp = interface(IXMLNode)
    ['{0B2C104B-A212-460B-9072-7A82B17DAB8C}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLEigenanteilsrechnungTypUeberweiser;
    function Get_Behandelter: IXMLEigenanteilsrechnungTypBehandelter;
    function Get_Versicherter: IXMLEigenanteilsrechnungTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Positionen: IXMLEigenanteilsrechnungTypPositionen;
    function Get_Summenblock: IXMLSummenblockEigenanteilTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLEigenanteilsrechnungTypBelegList;
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLEigenanteilsrechnungTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLEigenanteilsrechnungTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLEigenanteilsrechnungTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Diagnose: IXMLDiagnoseTypList read Get_Diagnose;
    property Positionen: IXMLEigenanteilsrechnungTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockEigenanteilTyp read Get_Summenblock;
    property Begruendung: IXMLBegruendungTypList read Get_Begruendung;
    property Anhangid: IXMLAnhangidTypList read Get_Anhangid;
    property Beleg: IXMLEigenanteilsrechnungTypBelegList read Get_Beleg;
  end;
  IXMLEigenanteilsrechnungTypList = interface(IXMLNodeCollection)
    ['{30C5A098-B3CC-4147-A6B7-16FF7E94414E}']
    function Add: IXMLEigenanteilsrechnungTyp;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTyp;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTyp;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTyp read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{682745EF-2D0E-4D5C-9277-72AB01E64160}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLEigenanteilsrechnungTypUeberweiserList = interface(IXMLNodeCollection)
    ['{A3286855-4AA5-4C61-B791-291509BD24AD}']
    function Add: IXMLEigenanteilsrechnungTypUeberweiser;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTypUeberweiser read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTypBehandelter = interface(IXMLBehandelterTyp)
    ['{B3B358A7-5FBE-45E0-B927-69308EF0A3B5}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLEigenanteilsrechnungTypBehandelterList = interface(IXMLNodeCollection)
    ['{52515EE0-856F-4BC5-896E-2B05143036E2}']
    function Add: IXMLEigenanteilsrechnungTypBehandelter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBehandelter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBehandelter;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTypBehandelter read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTypVersicherter = interface(IXMLVersicherterTyp)
    ['{EDF54551-1F22-461A-9085-E789070638EA}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLEigenanteilsrechnungTypVersicherterList = interface(IXMLNodeCollection)
    ['{825A53CE-6601-4E6C-A603-74ECF571AFCC}']
    function Add: IXMLEigenanteilsrechnungTypVersicherter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypVersicherter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypVersicherter;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTypVersicherter read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTypPositionen = interface(IXMLNode)
    ['{AE682F84-17E7-4B03-A68D-3B38CF910F44}']
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Goziffer: IXMLGOZifferTyp read Get_Goziffer;
    property Entschaedigung: IXMLEntschaedigungTyp read Get_Entschaedigung;
    property Auslagen: IXMLAuslagenTyp read Get_Auslagen;
    property Sonstigeshonorar: IXMLHonorarTyp read Get_Sonstigeshonorar;
    property Bema: IXMLBemaZifferTyp read Get_Bema;
    property Gozziffer: IXMLGOZZifferTyp read Get_Gozziffer;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLEigenanteilsrechnungTypPositionenList = interface(IXMLNodeCollection)
    ['{6DA68144-BEDD-4DCC-B84C-435CFE27AF40}']
    function Add: IXMLEigenanteilsrechnungTypPositionen;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypPositionen;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTypPositionen read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungTypBeleg = interface(IXMLNode)
    ['{36BA1959-D81D-466F-8EFA-146F8DBF4B17}']
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
    property Eigenlabor: IXMLEigenlaborTyp read Get_Eigenlabor;
    property Fremdlabor: IXMLFremdlaborTyp read Get_Fremdlabor;
    property Material: IXMLMaterialTyp read Get_Material;
    property Materialpass: IXMLMaterialpassTyp read Get_Materialpass;
  end;
  IXMLEigenanteilsrechnungTypBelegList = interface(IXMLNodeCollection)
    ['{94BAD04E-A073-4E8D-873E-0940B77943BF}']
    function Add: IXMLEigenanteilsrechnungTypBeleg;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBeleg;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBeleg;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungTypBeleg read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTyp = interface(IXMLNode)
    ['{FBBD778A-707F-4851-B31D-AC7A1197E41C}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Get_Behandelter: IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Get_Versicherter: IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Kfokopfdaten: IXMLKVKartendatenTyp;
    function Get_Kfoplandaten: IXMLKfoplandatenTyp;
    function Get_Positionen: IXMLEigenanteilsrechnungKFOTypPositionen;
    function Get_Summenblock: IXMLSummenblockEigenanteilKFOTyp;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLEigenanteilsrechnungKFOTypBelegList;
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLEigenanteilsrechnungKFOTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLEigenanteilsrechnungKFOTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLEigenanteilsrechnungKFOTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Diagnose: IXMLDiagnoseTypList read Get_Diagnose;
    property Kfokopfdaten: IXMLKVKartendatenTyp read Get_Kfokopfdaten;
    property Kfoplandaten: IXMLKfoplandatenTyp read Get_Kfoplandaten;
    property Positionen: IXMLEigenanteilsrechnungKFOTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockEigenanteilKFOTyp read Get_Summenblock;
    property Anhangid: IXMLAnhangidTypList read Get_Anhangid;
    property Beleg: IXMLEigenanteilsrechnungKFOTypBelegList read Get_Beleg;
  end;
  IXMLEigenanteilsrechnungKFOTypList = interface(IXMLNodeCollection)
    ['{E5B54463-5D47-457E-A2F0-54A7DEEB256B}']
    function Add: IXMLEigenanteilsrechnungKFOTyp;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTyp;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTyp;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTyp read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{3EEE6579-F4B7-4470-8192-AC4F5C512F85}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLEigenanteilsrechnungKFOTypUeberweiserList = interface(IXMLNodeCollection)
    ['{F3FDB4E6-9118-4A17-8CCA-F9F47C602EFF}']
    function Add: IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTypUeberweiser read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTypBehandelter = interface(IXMLBehandelterTyp)
    ['{152C228E-4BFF-4484-8225-65F2A21E3F10}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLEigenanteilsrechnungKFOTypBehandelterList = interface(IXMLNodeCollection)
    ['{244F3C28-32F7-48A9-9BBD-8236D74CA13A}']
    function Add: IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTypBehandelter read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTypVersicherter = interface(IXMLVersicherterTyp)
    ['{055E7B4F-AEAC-41ED-BB33-2B47A94B82A0}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLEigenanteilsrechnungKFOTypVersicherterList = interface(IXMLNodeCollection)
    ['{F3264AB6-539F-498F-8BFD-58C0817837E1}']
    function Add: IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTypVersicherter read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTypPositionen = interface(IXMLNode)
    ['{D1E1386E-DBBC-4774-9FD0-02F8CE2A964B}']
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Bemakfo: IXMLBemaKFOZifferTyp;
    function Get_Eigenlaborkfo: IXMLEigenlaborKFOZifferTyp;
    function Get_Bemakfozwsumme: IXMLBemaKFOZwSummeTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Bema: IXMLBemaZifferTyp read Get_Bema;
    property Bemakfo: IXMLBemaKFOZifferTyp read Get_Bemakfo;
    property Eigenlaborkfo: IXMLEigenlaborKFOZifferTyp read Get_Eigenlaborkfo;
    property Bemakfozwsumme: IXMLBemaKFOZwSummeTyp read Get_Bemakfozwsumme;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLEigenanteilsrechnungKFOTypPositionenList = interface(IXMLNodeCollection)
    ['{3C947371-1889-4BAC-A87A-76C9F05DCA94}']
    function Add: IXMLEigenanteilsrechnungKFOTypPositionen;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTypPositionen read Get_Item; default;
  end;
  IXMLEigenanteilsrechnungKFOTypBeleg = interface(IXMLNode)
    ['{645D3B2B-1FC3-4230-83A6-3551C64C706A}']
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
    property Eigenlabor: IXMLEigenlaborTyp read Get_Eigenlabor;
    property Fremdlabor: IXMLFremdlaborTyp read Get_Fremdlabor;
    property Material: IXMLMaterialTyp read Get_Material;
    property Materialpass: IXMLMaterialpassTyp read Get_Materialpass;
  end;
  IXMLEigenanteilsrechnungKFOTypBelegList = interface(IXMLNodeCollection)
    ['{6065BC6C-0B68-463E-AA4E-5C6C56D95525}']
    function Add: IXMLEigenanteilsrechnungKFOTypBeleg;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg;
    property Items[Index: Integer]: IXMLEigenanteilsrechnungKFOTypBeleg read Get_Item; default;
  end;
  IXMLHumanmedizinTyp = interface(IXMLNode)
    ['{B4BD55BF-4A55-4B30-BAFA-DA2864B121B0}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLHumanmedizinTypUeberweiser;
    function Get_Behandelter: IXMLHumanmedizinTypBehandelter;
    function Get_Versicherter: IXMLHumanmedizinTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Vertragsart: TXSDVertragsartTyp;
    procedure Set_Vertragsart(const Value: TXSDVertragsartTyp);
    function Get_Beschreibung: string;
    procedure Set_Beschreibung(const Value: string);
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Aktenzeichen: string;
    procedure Set_Aktenzeichen(const Value: string);
    function Get_Unfalldaten: IXMLUnfalldatenTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Klasse: TXSDUnterkunftstationaerEnum;
    procedure Set_Klasse(const Value: TXSDUnterkunftstationaerEnum);
    function Get_Positionen: IXMLHumanmedizinTypPositionen;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Rechnungssondertyp: TXSDRechnungssondertypEnum;
    procedure Set_Rechnungssondertyp(const Value: TXSDRechnungssondertypEnum);
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Ueberweiser: IXMLHumanmedizinTypUeberweiser read Get_Ueberweiser;
    property Behandelter: IXMLHumanmedizinTypBehandelter read Get_Behandelter;
    property Versicherter: IXMLHumanmedizinTypVersicherter read Get_Versicherter;
    property Zeitraum: IXMLZeitraumTyp read Get_Zeitraum;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Minderungssatz: TXSDMinderungssatzEnum read Get_Minderungssatz write Set_Minderungssatz;
    property Behandlungsart: TXSDBehandlungsartEnum read Get_Behandlungsart write Set_Behandlungsart;
    property Vertragsart: TXSDVertragsartTyp read Get_Vertragsart write Set_Vertragsart;
    property Beschreibung: string read Get_Beschreibung write Set_Beschreibung;
    property Beteiligung: IXMLBeteiligungTypList read Get_Beteiligung;
    property Aktenzeichen: string read Get_Aktenzeichen write Set_Aktenzeichen;
    property Unfalldaten: IXMLUnfalldatenTyp read Get_Unfalldaten;
    property Diagnose: IXMLDiagnoseTypList read Get_Diagnose;
    property Klasse: TXSDUnterkunftstationaerEnum read Get_Klasse write Set_Klasse;
    property Positionen: IXMLHumanmedizinTypPositionen read Get_Positionen;
    property Anhangid: IXMLAnhangidTypList read Get_Anhangid;
    property Rechnungssondertyp: TXSDRechnungssondertypEnum read Get_Rechnungssondertyp write Set_Rechnungssondertyp;
  end;
  IXMLHumanmedizinTypList = interface(IXMLNodeCollection)
    ['{2BC30815-929C-427D-8049-8630F5D699AF}']
    function Add: IXMLHumanmedizinTyp;
    function Insert(const Index: Integer): IXMLHumanmedizinTyp;
    function Get_Item(Index: Integer): IXMLHumanmedizinTyp;
    property Items[Index: Integer]: IXMLHumanmedizinTyp read Get_Item; default;
  end;
  IXMLHumanmedizinTypUeberweiser = interface(IXMLUeberweiserTyp)
    ['{2CD899E0-4B2D-431B-A65F-6A555D9754EF}']
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
    property Lanr: TXSDLanrTyp read Get_Lanr write Set_Lanr;
  end;
  IXMLHumanmedizinTypUeberweiserList = interface(IXMLNodeCollection)
    ['{727F4291-B9D5-4AE8-8821-9FF57715729C}']
    function Add: IXMLHumanmedizinTypUeberweiser;
    function Insert(const Index: Integer): IXMLHumanmedizinTypUeberweiser;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypUeberweiser;
    property Items[Index: Integer]: IXMLHumanmedizinTypUeberweiser read Get_Item; default;
  end;
  IXMLHumanmedizinTypBehandelter = interface(IXMLBehandelterTyp)
    ['{200BA76E-C2D1-44D5-8B8B-AF4DB7A55E28}']
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
    property Verwandtschaft: TXSDVerwandtschaftskennungEnum read Get_Verwandtschaft write Set_Verwandtschaft;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
    property Aisid: TXSDIdTyp read Get_Aisid write Set_Aisid;
    property Idbundesweit: TXSDIdTyp read Get_Idbundesweit write Set_Idbundesweit;
  end;
  IXMLHumanmedizinTypBehandelterList = interface(IXMLNodeCollection)
    ['{E2AFE425-BD48-4214-9FCD-522452683010}']
    function Add: IXMLHumanmedizinTypBehandelter;
    function Insert(const Index: Integer): IXMLHumanmedizinTypBehandelter;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypBehandelter;
    property Items[Index: Integer]: IXMLHumanmedizinTypBehandelter read Get_Item; default;
  end;
  IXMLHumanmedizinTypVersicherter = interface(IXMLVersicherterTyp)
    ['{73555D33-0643-421D-9A1F-9F87AC75573A}']
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    property Versicherung: IXMLVersicherungTyp read Get_Versicherung;
    property Anschrift: IXMLAnschriftTyp read Get_Anschrift;
    property Kontakt: IXMLKontaktTypList read Get_Kontakt;
  end;
  IXMLHumanmedizinTypVersicherterList = interface(IXMLNodeCollection)
    ['{6F0F9550-E3F1-47D5-A67F-20DF903E2915}']
    function Add: IXMLHumanmedizinTypVersicherter;
    function Insert(const Index: Integer): IXMLHumanmedizinTypVersicherter;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypVersicherter;
    property Items[Index: Integer]: IXMLHumanmedizinTypVersicherter read Get_Item; default;
  end;
  IXMLHumanmedizinTypPositionen = interface(IXMLNode)
    ['{045AE181-4966-4481-BAA6-85A37A1AFC87}']
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Goziffer: IXMLGOZifferTyp read Get_Goziffer;
    property Entschaedigung: IXMLEntschaedigungTyp read Get_Entschaedigung;
    property Auslagen: IXMLAuslagenTyp read Get_Auslagen;
    property Sonstigeshonorar: IXMLHonorarTyp read Get_Sonstigeshonorar;
    property Gozziffer: IXMLGOZZifferTyp read Get_Gozziffer;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLHumanmedizinTypPositionenList = interface(IXMLNodeCollection)
    ['{40DC9331-7408-4D00-895F-A627BD2AC32E}']
    function Add: IXMLHumanmedizinTypPositionen;
    function Insert(const Index: Integer): IXMLHumanmedizinTypPositionen;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypPositionen;
    property Items[Index: Integer]: IXMLHumanmedizinTypPositionen read Get_Item; default;
  end;
  IXMLEigenlaborTyp = interface(IXMLNode)
    ['{D8C4F833-272A-4D69-B01B-0C5562DEEB75}']
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLEigenlaborTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Belegnr: TXSDString115Typ;
    procedure Set_Belegnr(const Value: TXSDString115Typ);
    function Get_Ustidnr: TXSDString115Typ;
    procedure Set_Ustidnr(const Value: TXSDString115Typ);
    property Anfangstext: TXSDTextTyp read Get_Anfangstext write Set_Anfangstext;
    property Endetext: TXSDTextTyp read Get_Endetext write Set_Endetext;
    property Positionen: IXMLEigenlaborTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBelegTyp read Get_Summenblock;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Belegdatum: string read Get_Belegdatum write Set_Belegdatum;
    property Belegnr: TXSDString115Typ read Get_Belegnr write Set_Belegnr;
    property Ustidnr: TXSDString115Typ read Get_Ustidnr write Set_Ustidnr;
  end;
  IXMLEigenlaborTypList = interface(IXMLNodeCollection)
    ['{4CA4B98A-E641-4DA9-9C01-B5E65FD87F5C}']
    function Add: IXMLEigenlaborTyp;
    function Insert(const Index: Integer): IXMLEigenlaborTyp;
    function Get_Item(Index: Integer): IXMLEigenlaborTyp;
    property Items[Index: Integer]: IXMLEigenlaborTyp read Get_Item; default;
  end;
  IXMLEigenlaborTypPositionen = interface(IXMLNode)
    ['{C532AD23-2231-44D1-ADFD-8E7BBC179ADE}']
    function Get_Eigenlabor: IXMLLaborZifferTyp;
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Eigenlabor: IXMLLaborZifferTyp read Get_Eigenlabor;
    property Material: IXMLMaterialZifferTyp read Get_Material;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLEigenlaborTypPositionenList = interface(IXMLNodeCollection)
    ['{9029A2AF-2D31-438C-9295-04CBFA66CB8F}']
    function Add: IXMLEigenlaborTypPositionen;
    function Insert(const Index: Integer): IXMLEigenlaborTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenlaborTypPositionen;
    property Items[Index: Integer]: IXMLEigenlaborTypPositionen read Get_Item; default;
  end;
  IXMLFremdlaborTyp = interface(IXMLNode)
    ['{4AB5FD56-6195-4BF3-ABBE-64970A336EEC}']
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLFremdlaborTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisauftragsnr: string;
    procedure Set_Aisauftragsnr(const Value: string);
    function Get_Aisendbetrag: TXSDBetragTyp;
    procedure Set_Aisendbetrag(const Value: TXSDBetragTyp);
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Anfangstext: TXSDTextTyp read Get_Anfangstext write Set_Anfangstext;
    property Endetext: TXSDTextTyp read Get_Endetext write Set_Endetext;
    property Positionen: IXMLFremdlaborTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBelegTyp read Get_Summenblock;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Belegdatum: string read Get_Belegdatum write Set_Belegdatum;
    property Aisrechnungsnr: string read Get_Aisrechnungsnr write Set_Aisrechnungsnr;
    property Aisauftragsnr: string read Get_Aisauftragsnr write Set_Aisauftragsnr;
    property Aisendbetrag: TXSDBetragTyp read Get_Aisendbetrag write Set_Aisendbetrag;
  end;
  IXMLFremdlaborTypList = interface(IXMLNodeCollection)
    ['{8A72C503-5278-4B19-BFCA-382AC83CFB89}']
    function Add: IXMLFremdlaborTyp;
    function Insert(const Index: Integer): IXMLFremdlaborTyp;
    function Get_Item(Index: Integer): IXMLFremdlaborTyp;
    property Items[Index: Integer]: IXMLFremdlaborTyp read Get_Item; default;
  end;
  IXMLFremdlaborTypPositionen = interface(IXMLNode)
    ['{8008EBEE-40CD-4BBE-8F07-C5F98D2BF29F}']
    function Get_Fremdlabor: IXMLLaborZifferTyp;
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Fremdlabor: IXMLLaborZifferTyp read Get_Fremdlabor;
    property Material: IXMLMaterialZifferTyp read Get_Material;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLFremdlaborTypPositionenList = interface(IXMLNodeCollection)
    ['{A9B9986C-E8A9-4A12-97FA-A8C1E410B113}']
    function Add: IXMLFremdlaborTypPositionen;
    function Insert(const Index: Integer): IXMLFremdlaborTypPositionen;
    function Get_Item(Index: Integer): IXMLFremdlaborTypPositionen;
    property Items[Index: Integer]: IXMLFremdlaborTypPositionen read Get_Item; default;
  end;
  IXMLMaterialTyp = interface(IXMLNode)
    ['{0F832477-06FA-40D9-8C5C-DF10558C9AD4}']
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLMaterialTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Belegnr: TXSDString115Typ;
    procedure Set_Belegnr(const Value: TXSDString115Typ);
    function Get_Belegaktenzeichen: TXSDString140Typ;
    procedure Set_Belegaktenzeichen(const Value: TXSDString140Typ);
    function Get_Ustidnr: TXSDString115Typ;
    procedure Set_Ustidnr(const Value: TXSDString115Typ);
    property Anfangstext: TXSDTextTyp read Get_Anfangstext write Set_Anfangstext;
    property Endetext: TXSDTextTyp read Get_Endetext write Set_Endetext;
    property Positionen: IXMLMaterialTypPositionen read Get_Positionen;
    property Summenblock: IXMLSummenblockBelegTyp read Get_Summenblock;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Belegdatum: string read Get_Belegdatum write Set_Belegdatum;
    property Belegnr: TXSDString115Typ read Get_Belegnr write Set_Belegnr;
    property Belegaktenzeichen: TXSDString140Typ read Get_Belegaktenzeichen write Set_Belegaktenzeichen;
    property Ustidnr: TXSDString115Typ read Get_Ustidnr write Set_Ustidnr;
  end;
  IXMLMaterialTypList = interface(IXMLNodeCollection)
    ['{7E300154-1448-4164-9693-F363AF93C6E2}']
    function Add: IXMLMaterialTyp;
    function Insert(const Index: Integer): IXMLMaterialTyp;
    function Get_Item(Index: Integer): IXMLMaterialTyp;
    property Items[Index: Integer]: IXMLMaterialTyp read Get_Item; default;
  end;
  IXMLMaterialTypPositionen = interface(IXMLNode)
    ['{275246BE-6C53-486F-AC27-4DB29D21540F}']
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Material: IXMLMaterialZifferTyp read Get_Material;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLMaterialTypPositionenList = interface(IXMLNodeCollection)
    ['{497A7DD6-E4ED-4AAF-A436-CC5F6047360C}']
    function Add: IXMLMaterialTypPositionen;
    function Insert(const Index: Integer): IXMLMaterialTypPositionen;
    function Get_Item(Index: Integer): IXMLMaterialTypPositionen;
    property Items[Index: Integer]: IXMLMaterialTypPositionen read Get_Item; default;
  end;
  IXMLMaterialpassTyp = interface(IXMLNode)
    ['{FAAE1809-AF1F-4228-9264-182B685E7C62}']
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLMaterialpassTypPositionen;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisaktenzeichen: string;
    procedure Set_Aisaktenzeichen(const Value: string);
    property Anfangstext: TXSDTextTyp read Get_Anfangstext write Set_Anfangstext;
    property Endetext: TXSDTextTyp read Get_Endetext write Set_Endetext;
    property Positionen: IXMLMaterialpassTypPositionen read Get_Positionen;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Belegdatum: string read Get_Belegdatum write Set_Belegdatum;
    property Aisrechnungsnr: string read Get_Aisrechnungsnr write Set_Aisrechnungsnr;
    property Aisaktenzeichen: string read Get_Aisaktenzeichen write Set_Aisaktenzeichen;
  end;
  IXMLMaterialpassTypList = interface(IXMLNodeCollection)
    ['{8E2C8541-4293-451E-AE9B-8BBE34C2C8F5}']
    function Add: IXMLMaterialpassTyp;
    function Insert(const Index: Integer): IXMLMaterialpassTyp;
    function Get_Item(Index: Integer): IXMLMaterialpassTyp;
    property Items[Index: Integer]: IXMLMaterialpassTyp read Get_Item; default;
  end;
  IXMLMaterialpassTypPositionen = interface(IXMLNode)
    ['{30F220DC-0896-4AA6-BDD4-54B651AD0103}']
    function Get_Materialpass: IXMLMaterialpassZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
    property Materialpass: IXMLMaterialpassZifferTyp read Get_Materialpass;
    property Text: IXMLTextzeileTyp read Get_Text;
    property Posanzahl: Integer read Get_Posanzahl write Set_Posanzahl;
  end;
  IXMLMaterialpassTypPositionenList = interface(IXMLNodeCollection)
    ['{C9AEEA70-0E2D-43A4-A0BC-5F66C59ADC35}']
    function Add: IXMLMaterialpassTypPositionen;
    function Insert(const Index: Integer): IXMLMaterialpassTypPositionen;
    function Get_Item(Index: Integer): IXMLMaterialpassTypPositionen;
    property Items[Index: Integer]: IXMLMaterialpassTypPositionen read Get_Item; default;
  end;
  IXMLSummenblockBelegTyp = interface(IXMLNode)
    ['{F1E240A6-4EFA-4D60-A596-C69176A705F0}']
    function Get_Belegrechnungsbetrag: TXSDBetragTyp;
    procedure Set_Belegrechnungsbetrag(const Value: TXSDBetragTyp);
    property Belegrechnungsbetrag: TXSDBetragTyp read Get_Belegrechnungsbetrag write Set_Belegrechnungsbetrag;
  end;
  IXMLSummenblockBelegTypList = interface(IXMLNodeCollection)
    ['{1341A18F-A570-47C9-AC93-ECAE89CC138C}']
    function Add: IXMLSummenblockBelegTyp;
    function Insert(const Index: Integer): IXMLSummenblockBelegTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBelegTyp;
    property Items[Index: Integer]: IXMLSummenblockBelegTyp read Get_Item; default;
  end;
  IXMLSummenblockBelegTypBelegsumme = interface(IXMLNode)
    ['{E1963100-9E58-44C9-B484-537BD1510FD7}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Text: TXSDString140Typ;
    procedure Set_Text(const Value: TXSDString140Typ);
    property Value: string read Get_Value write Set_Value;
    property Text: TXSDString140Typ read Get_Text write Set_Text;
  end;
  IXMLSummenblockBelegTypBelegsummeList = interface(IXMLNodeCollection)
    ['{ED90B8CC-A38D-4747-ACF0-A55B9A3262D0}']
    function Add: IXMLSummenblockBelegTypBelegsumme;
    function Insert(const Index: Integer): IXMLSummenblockBelegTypBelegsumme;
    function Get_Item(Index: Integer): IXMLSummenblockBelegTypBelegsumme;
    property Items[Index: Integer]: IXMLSummenblockBelegTypBelegsumme read Get_Item; default;
  end;
  IXMLBegruendungTyp = interface(IXMLNode)
    ['{3245FD0B-EBB3-4A27-9B0E-C0AE4EF581C1}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    property Value: string read Get_Value write Set_Value;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
  end;
  IXMLBegruendungTypList = interface(IXMLNodeCollection)
    ['{44B7FFE7-6EDF-4652-9880-DFBECCF3712E}']
    function Add: IXMLBegruendungTyp;
    function Insert(const Index: Integer): IXMLBegruendungTyp;
    function Get_Item(Index: Integer): IXMLBegruendungTyp;
    property Items[Index: Integer]: IXMLBegruendungTyp read Get_Item; default;
  end;
  IXMLBehandlungsortTyp = interface(IXMLNode)
    ['{904E6474-A503-4340-A1D1-7A854855C629}']
    function Get_Bsnr: string;
    procedure Set_Bsnr(const Value: string);
    function Get_Nbsnr: string;
    procedure Set_Nbsnr(const Value: string);
    property Bsnr: string read Get_Bsnr write Set_Bsnr;
    property Nbsnr: string read Get_Nbsnr write Set_Nbsnr;
  end;
  IXMLBehandlungsortTypList = interface(IXMLNodeCollection)
    ['{0BE3407D-0F8E-43D4-B679-28D63EFD27E6}']
    function Add: IXMLBehandlungsortTyp;
    function Insert(const Index: Integer): IXMLBehandlungsortTyp;
    function Get_Item(Index: Integer): IXMLBehandlungsortTyp;
    property Items[Index: Integer]: IXMLBehandlungsortTyp read Get_Item; default;
  end;
  IXMLBeteiligungTyp = interface(IXMLNode)
    ['{63F0CFC0-F273-4F9E-845D-DD21B3FD4FC1}']
    function Get_Beteiligter: string;
    procedure Set_Beteiligter(const Value: string);
    property Beteiligter: string read Get_Beteiligter write Set_Beteiligter;
  end;
  IXMLBeteiligungTypList = interface(IXMLNodeCollection)
    ['{3C4F04AE-8A0E-4D48-A2A1-BDBE3414C3C6}']
    function Add: IXMLBeteiligungTyp;
    function Insert(const Index: Integer): IXMLBeteiligungTyp;
    function Get_Item(Index: Integer): IXMLBeteiligungTyp;
    property Items[Index: Integer]: IXMLBeteiligungTyp read Get_Item; default;
  end;
  IXMLDiagnoseTyp = interface(IXMLNode)
    ['{D9C92FB5-CC5B-4D0A-BB55-94D321DC282B}']
    function Get_Text: string;
    procedure Set_Text(const Value: string);
    function Get_Code: IXMLDiagnosecodeTyp;
    function Get_Typ: TXSDDiagnosetypEnum;
    procedure Set_Typ(const Value: TXSDDiagnosetypEnum);
    function Get_Art: TXSDDiagnoseartEnum;
    procedure Set_Art(const Value: TXSDDiagnoseartEnum);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Sicherheit: TXSDDiagnosesicherheitEnum;
    procedure Set_Sicherheit(const Value: TXSDDiagnosesicherheitEnum);
    function Get_Lokalisation: TXSDLokalisationEnum;
    procedure Set_Lokalisation(const Value: TXSDLokalisationEnum);
    property Text: string read Get_Text write Set_Text;
    property Code: IXMLDiagnosecodeTyp read Get_Code;
    property Typ: TXSDDiagnosetypEnum read Get_Typ write Set_Typ;
    property Art: TXSDDiagnoseartEnum read Get_Art write Set_Art;
    property Datum: string read Get_Datum write Set_Datum;
    property Sicherheit: TXSDDiagnosesicherheitEnum read Get_Sicherheit write Set_Sicherheit;
    property Lokalisation: TXSDLokalisationEnum read Get_Lokalisation write Set_Lokalisation;
  end;
  IXMLDiagnoseTypList = interface(IXMLNodeCollection)
    ['{57F02B2E-88BA-4C0B-924A-E66F96554D3D}']
    function Add: IXMLDiagnoseTyp;
    function Insert(const Index: Integer): IXMLDiagnoseTyp;
    function Get_Item(Index: Integer): IXMLDiagnoseTyp;
    property Items[Index: Integer]: IXMLDiagnoseTyp read Get_Item; default;
  end;
  IXMLDiagnosecodeTyp = interface(IXMLNode)
    ['{E363BCEA-FB3E-43C0-A1DA-B7EB88760B5D}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_System: TXSDDiagnosesystemEnum;
    procedure Set_System(const Value: TXSDDiagnosesystemEnum);
    property Value: string read Get_Value write Set_Value;
    property System: TXSDDiagnosesystemEnum read Get_System write Set_System;
  end;
  IXMLDiagnosecodeTypList = interface(IXMLNodeCollection)
    ['{A3BA28E0-2FE9-4912-ABC7-14B0822F2D34}']
    function Add: IXMLDiagnosecodeTyp;
    function Insert(const Index: Integer): IXMLDiagnosecodeTyp;
    function Get_Item(Index: Integer): IXMLDiagnosecodeTyp;
    property Items[Index: Integer]: IXMLDiagnosecodeTyp read Get_Item; default;
  end;
  IXMLFachangabeTyp = interface(IXMLNode)
    ['{5CA5BA89-A0F9-47D2-A109-257478E0A76D}']
    function Get_Value: Integer;
    procedure Set_Value(const Value: Integer);
    function Get_Textname: string;
    procedure Set_Textname(const Value: string);
    property Value: Integer read Get_Value write Set_Value;
    property Textname: string read Get_Textname write Set_Textname;
  end;
  IXMLFachangabeTypList = interface(IXMLNodeCollection)
    ['{A8633F15-C19C-4616-8C07-49ED01749576}']
    function Add: IXMLFachangabeTyp;
    function Insert(const Index: Integer): IXMLFachangabeTyp;
    function Get_Item(Index: Integer): IXMLFachangabeTyp;
    property Items[Index: Integer]: IXMLFachangabeTyp read Get_Item; default;
  end;
  IXMLFachbereichTyp = interface(IXMLNode)
    ['{E0BF14A7-C506-4E02-BE6A-44B7038549B3}']
    function Get_Fachgebiet: IXMLFachbereichTypFachgebiet;
    function Get_Facharzt: IXMLFachbereichTypFacharztList;
    property Fachgebiet: IXMLFachbereichTypFachgebiet read Get_Fachgebiet;
    property Facharzt: IXMLFachbereichTypFacharztList read Get_Facharzt;
  end;
  IXMLFachbereichTypList = interface(IXMLNodeCollection)
    ['{98AFAA67-E395-4AFE-BF09-6D0C2E1BB542}']
    function Add: IXMLFachbereichTyp;
    function Insert(const Index: Integer): IXMLFachbereichTyp;
    function Get_Item(Index: Integer): IXMLFachbereichTyp;
    property Items[Index: Integer]: IXMLFachbereichTyp read Get_Item; default;
  end;
  IXMLFachbereichTypFachgebiet = interface(IXMLFachangabeTyp)
    ['{52C6C3FE-A898-4D1C-9347-3B3FD828D39F}']
  end;
  IXMLFachbereichTypFachgebietList = interface(IXMLNodeCollection)
    ['{4701065D-1CE5-4D1D-A7C4-9952DAD7E6FD}']
    function Add: IXMLFachbereichTypFachgebiet;
    function Insert(const Index: Integer): IXMLFachbereichTypFachgebiet;
    function Get_Item(Index: Integer): IXMLFachbereichTypFachgebiet;
    property Items[Index: Integer]: IXMLFachbereichTypFachgebiet read Get_Item; default;
  end;
  IXMLFachbereichTypFacharzt = interface(IXMLFachangabeTyp)
    ['{A22004A0-4D73-47F4-8FD4-467D8BF67EEE}']
  end;
  IXMLFachbereichTypFacharztList = interface(IXMLNodeCollection)
    ['{8E5835F6-FF9A-4B02-B057-5DC63A2286B1}']
    function Add: IXMLFachbereichTypFacharzt;
    function Insert(const Index: Integer): IXMLFachbereichTypFacharzt;
    function Get_Item(Index: Integer): IXMLFachbereichTypFacharzt;
    property Items[Index: Integer]: IXMLFachbereichTypFacharzt read Get_Item; default;
  end;
  IXMLKontoTyp = interface(IXMLNode)
    ['{F204B80F-EA60-4FEB-B731-55D6DF1C5A71}']
    function Get_Inhaber: string;
    procedure Set_Inhaber(const Value: string);
    function Get_Bank: string;
    procedure Set_Bank(const Value: string);
    function Get_Blz: string;
    procedure Set_Blz(const Value: string);
    function Get_Kontonr: string;
    procedure Set_Kontonr(const Value: string);
    function Get_Bic: string;
    procedure Set_Bic(const Value: string);
    function Get_Iban: string;
    procedure Set_Iban(const Value: string);
    function Get_Mandatsreferenz: TXSDString140Typ;
    procedure Set_Mandatsreferenz(const Value: TXSDString140Typ);
    property Inhaber: string read Get_Inhaber write Set_Inhaber;
    property Bank: string read Get_Bank write Set_Bank;
    property Blz: string read Get_Blz write Set_Blz;
    property Kontonr: string read Get_Kontonr write Set_Kontonr;
    property Bic: string read Get_Bic write Set_Bic;
    property Iban: string read Get_Iban write Set_Iban;
    property Mandatsreferenz: TXSDString140Typ read Get_Mandatsreferenz write Set_Mandatsreferenz;
  end;
  IXMLKontoTypList = interface(IXMLNodeCollection)
    ['{0C12C0EA-FBC9-4B32-A4FE-B19DDCDBDDE0}']
    function Add: IXMLKontoTyp;
    function Insert(const Index: Integer): IXMLKontoTyp;
    function Get_Item(Index: Integer): IXMLKontoTyp;
    property Items[Index: Integer]: IXMLKontoTyp read Get_Item; default;
  end;
  IXMLKVKartendatenTyp = interface(IXMLNode)
    ['{3827A3ED-6130-43C1-AC6C-F50F24D5FC2F}']
    function Get_Kassenname: string;
    procedure Set_Kassenname(const Value: string);
    function Get_Kassennr: string;
    procedure Set_Kassennr(const Value: string);
    function Get_Versichertennr: string;
    procedure Set_Versichertennr(const Value: string);
    function Get_Versichertenart: TXSDVersichertenartEnum;
    procedure Set_Versichertenart(const Value: TXSDVersichertenartEnum);
    function Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum;
    procedure Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum);
    function Get_Dmpteilnahme: TXSDDMPkennzeichenEnum;
    procedure Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum);
    function Get_Kzvnr: string;
    procedure Set_Kzvnr(const Value: string);
    function Get_Gueltigbis: string;
    procedure Set_Gueltigbis(const Value: string);
    function Get_Einlesedatum: string;
    procedure Set_Einlesedatum(const Value: string);
    property Kassenname: string read Get_Kassenname write Set_Kassenname;
    property Kassennr: string read Get_Kassennr write Set_Kassennr;
    property Versichertennr: string read Get_Versichertennr write Set_Versichertennr;
    property Versichertenart: TXSDVersichertenartEnum read Get_Versichertenart write Set_Versichertenart;
    property Bpersonenkreis: TXSDBesondererpersonenkreisEnum read Get_Bpersonenkreis write Set_Bpersonenkreis;
    property Dmpteilnahme: TXSDDMPkennzeichenEnum read Get_Dmpteilnahme write Set_Dmpteilnahme;
    property Kzvnr: string read Get_Kzvnr write Set_Kzvnr;
    property Gueltigbis: string read Get_Gueltigbis write Set_Gueltigbis;
    property Einlesedatum: string read Get_Einlesedatum write Set_Einlesedatum;
  end;
  IXMLKVKartendatenTypList = interface(IXMLNodeCollection)
    ['{2DA25360-F1C2-4A66-B5C2-8226B3B28332}']
    function Add: IXMLKVKartendatenTyp;
    function Insert(const Index: Integer): IXMLKVKartendatenTyp;
    function Get_Item(Index: Integer): IXMLKVKartendatenTyp;
    property Items[Index: Integer]: IXMLKVKartendatenTyp read Get_Item; default;
  end;
  IXMLKfoplandatenTyp = interface(IXMLNode)
    ['{01729327-1666-45A8-A35B-B91813E5ED12}']
    function Get_Leistungsquartal: string;
    procedure Set_Leistungsquartal(const Value: string);
    function Get_Leistungsjahr: string;
    procedure Set_Leistungsjahr(const Value: string);
    function Get_Leerquartal: Boolean;
    procedure Set_Leerquartal(const Value: Boolean);
    function Get_Abschlagsnr: TXSDString18Typ;
    procedure Set_Abschlagsnr(const Value: TXSDString18Typ);
    function Get_Planungsdatum: string;
    procedure Set_Planungsdatum(const Value: string);
    function Get_Verlaengerungsdatum: string;
    procedure Set_Verlaengerungsdatum(const Value: string);
    function Get_Behandlungsbeginn: string;
    procedure Set_Behandlungsbeginn(const Value: string);
    function Get_Behandlungsende: string;
    procedure Set_Behandlungsende(const Value: string);
    property Leistungsquartal: string read Get_Leistungsquartal write Set_Leistungsquartal;
    property Leistungsjahr: string read Get_Leistungsjahr write Set_Leistungsjahr;
    property Leerquartal: Boolean read Get_Leerquartal write Set_Leerquartal;
    property Abschlagsnr: TXSDString18Typ read Get_Abschlagsnr write Set_Abschlagsnr;
    property Planungsdatum: string read Get_Planungsdatum write Set_Planungsdatum;
    property Verlaengerungsdatum: string read Get_Verlaengerungsdatum write Set_Verlaengerungsdatum;
    property Behandlungsbeginn: string read Get_Behandlungsbeginn write Set_Behandlungsbeginn;
    property Behandlungsende: string read Get_Behandlungsende write Set_Behandlungsende;
  end;
  IXMLKfoplandatenTypList = interface(IXMLNodeCollection)
    ['{989E71CD-B5A5-4528-98D1-FD8071E106B4}']
    function Add: IXMLKfoplandatenTyp;
    function Insert(const Index: Integer): IXMLKfoplandatenTyp;
    function Get_Item(Index: Integer): IXMLKfoplandatenTyp;
    property Items[Index: Integer]: IXMLKfoplandatenTyp read Get_Item; default;
  end;
  IXMLNachlassTyp = interface(IXMLNode)
    ['{81A27612-CC34-4D2D-9DC0-8ED0DE056671}']
    function Get_Betrag: TXSDBetragTyp;
    procedure Set_Betrag(const Value: TXSDBetragTyp);
    function Get_Prozent: TXSDProzentTyp;
    procedure Set_Prozent(const Value: TXSDProzentTyp);
    property Betrag: TXSDBetragTyp read Get_Betrag write Set_Betrag;
    property Prozent: TXSDProzentTyp read Get_Prozent write Set_Prozent;
  end;
  IXMLNachlassTypList = interface(IXMLNodeCollection)
    ['{35236574-42CC-4CC7-9601-79CECF16B2E3}']
    function Add: IXMLNachlassTyp;
    function Insert(const Index: Integer): IXMLNachlassTyp;
    function Get_Item(Index: Integer): IXMLNachlassTyp;
    property Items[Index: Integer]: IXMLNachlassTyp read Get_Item; default;
  end;
  IXMLOPSTyp = interface(IXMLNode)
    ['{14B6CD52-EFA3-4FF5-A2E4-ACD620D608F9}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Lokalisation: TXSDLokalisationEnum;
    procedure Set_Lokalisation(const Value: TXSDLokalisationEnum);
    property Value: string read Get_Value write Set_Value;
    property Lokalisation: TXSDLokalisationEnum read Get_Lokalisation write Set_Lokalisation;
  end;
  IXMLOPSTypList = interface(IXMLNodeCollection)
    ['{9603FFF6-2252-4FFC-87FC-04BBC05F9E38}']
    function Add: IXMLOPSTyp;
    function Insert(const Index: Integer): IXMLOPSTyp;
    function Get_Item(Index: Integer): IXMLOPSTyp;
    property Items[Index: Integer]: IXMLOPSTyp read Get_Item; default;
  end;
  IXMLRatenzahlungTyp = interface(IXMLNode)
    ['{D33B122E-EA3B-4BC8-89DE-5386B9826C0E}']
    function Get_Vereinbarung: TXSDRatenvereinbarungEnum;
    procedure Set_Vereinbarung(const Value: TXSDRatenvereinbarungEnum);
    function Get_Ersterbetrag: TXSDBetragTyp;
    procedure Set_Ersterbetrag(const Value: TXSDBetragTyp);
    function Get_Startdatum: string;
    procedure Set_Startdatum(const Value: string);
    property Vereinbarung: TXSDRatenvereinbarungEnum read Get_Vereinbarung write Set_Vereinbarung;
    property Ersterbetrag: TXSDBetragTyp read Get_Ersterbetrag write Set_Ersterbetrag;
    property Startdatum: string read Get_Startdatum write Set_Startdatum;
  end;
  IXMLRatenzahlungTypList = interface(IXMLNodeCollection)
    ['{A2E6D4D6-8398-46FF-9A7D-A7FFAB55EFE0}']
    function Add: IXMLRatenzahlungTyp;
    function Insert(const Index: Integer): IXMLRatenzahlungTyp;
    function Get_Item(Index: Integer): IXMLRatenzahlungTyp;
    property Items[Index: Integer]: IXMLRatenzahlungTyp read Get_Item; default;
  end;
  IXMLSummenblockBemaTyp = interface(IXMLNode)
    ['{AED72554-EF03-4EC7-9FAF-9BC803F5342B}']
    function Get_Summehonorarbema: IXMLBetragBezeichnungTyp;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
    property Summehonorarbema: IXMLBetragBezeichnungTyp read Get_Summehonorarbema;
    property Summezahlbetrag: IXMLBetragBezeichnungTyp read Get_Summezahlbetrag;
  end;
  IXMLSummenblockBemaTypList = interface(IXMLNodeCollection)
    ['{18D0700F-9606-4076-9C69-D46D4E17D6F5}']
    function Add: IXMLSummenblockBemaTyp;
    function Insert(const Index: Integer): IXMLSummenblockBemaTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBemaTyp;
    property Items[Index: Integer]: IXMLSummenblockBemaTyp read Get_Item; default;
  end;
  IXMLSummenblockBmgTyp = interface(IXMLNode)
    ['{195AA9AC-2E0B-4AD5-87BA-5699A500728A}']
    function Get_Gozeigenlabor: TXSDBetragTyp;
    procedure Set_Gozeigenlabor(const Value: TXSDBetragTyp);
    function Get_Gozfremdlabor: TXSDBetragTyp;
    procedure Set_Gozfremdlabor(const Value: TXSDBetragTyp);
    function Get_Gozzwischensummehonorar: TXSDBetragTyp;
    procedure Set_Gozzwischensummehonorar(const Value: TXSDBetragTyp);
    function Get_Gozauslagen: TXSDBetragTyp;
    procedure Set_Gozauslagen(const Value: TXSDBetragTyp);
    function Get_Gozwegegeld: TXSDBetragTyp;
    procedure Set_Gozwegegeld(const Value: TXSDBetragTyp);
    function Get_Gozrechnungsbetrag: TXSDBetragTyp;
    procedure Set_Gozrechnungsbetrag(const Value: TXSDBetragTyp);
    function Get_Gozvorauszahlung: TXSDBetragTyp;
    procedure Set_Gozvorauszahlung(const Value: TXSDBetragTyp);
    function Get_Gozminderungsbetrag: TXSDBetragTyp;
    procedure Set_Gozminderungsbetrag(const Value: TXSDBetragTyp);
    function Get_Gozvorleistung: TXSDBetragTyp;
    procedure Set_Gozvorleistung(const Value: TXSDBetragTyp);
    function Get_Gozzahlbetrag: TXSDBetragTyp;
    procedure Set_Gozzahlbetrag(const Value: TXSDBetragTyp);
    function Get_Gozustvoll: TXSDBetragTyp;
    procedure Set_Gozustvoll(const Value: TXSDBetragTyp);
    function Get_Gozustgemindert: TXSDBetragTyp;
    procedure Set_Gozustgemindert(const Value: TXSDBetragTyp);
    property Gozeigenlabor: TXSDBetragTyp read Get_Gozeigenlabor write Set_Gozeigenlabor;
    property Gozfremdlabor: TXSDBetragTyp read Get_Gozfremdlabor write Set_Gozfremdlabor;
    property Gozzwischensummehonorar: TXSDBetragTyp read Get_Gozzwischensummehonorar write Set_Gozzwischensummehonorar;
    property Gozauslagen: TXSDBetragTyp read Get_Gozauslagen write Set_Gozauslagen;
    property Gozwegegeld: TXSDBetragTyp read Get_Gozwegegeld write Set_Gozwegegeld;
    property Gozrechnungsbetrag: TXSDBetragTyp read Get_Gozrechnungsbetrag write Set_Gozrechnungsbetrag;
    property Gozvorauszahlung: TXSDBetragTyp read Get_Gozvorauszahlung write Set_Gozvorauszahlung;
    property Gozminderungsbetrag: TXSDBetragTyp read Get_Gozminderungsbetrag write Set_Gozminderungsbetrag;
    property Gozvorleistung: TXSDBetragTyp read Get_Gozvorleistung write Set_Gozvorleistung;
    property Gozzahlbetrag: TXSDBetragTyp read Get_Gozzahlbetrag write Set_Gozzahlbetrag;
    property Gozustvoll: TXSDBetragTyp read Get_Gozustvoll write Set_Gozustvoll;
    property Gozustgemindert: TXSDBetragTyp read Get_Gozustgemindert write Set_Gozustgemindert;
  end;
  IXMLSummenblockBmgTypList = interface(IXMLNodeCollection)
    ['{25953BFA-3D3C-4CF4-B0C9-9705A6CF6630}']
    function Add: IXMLSummenblockBmgTyp;
    function Insert(const Index: Integer): IXMLSummenblockBmgTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBmgTyp;
    property Items[Index: Integer]: IXMLSummenblockBmgTyp read Get_Item; default;
  end;
  IXMLSummenblockEigenanteilTyp = interface(IXMLNode)
    ['{ACE5BD1F-879E-47B1-B784-AC0FACC1173F}']
    function Get_Summehonorarbema: IXMLBetragBezeichnungTypList;
    function Get_Summehonorargoz: IXMLBetragBezeichnungTypList;
    function Get_Summeeigenlabor: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabor: IXMLBetragBezeichnungTypList;
    function Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp;
    function Get_Summeeigenlabormehrkosten: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabormehrkosten: IXMLBetragBezeichnungTypList;
    function Get_Summeverbrauchsmaterialmehrkosten: IXMLBetragBezeichnungTyp;
    function Get_Summegesamt: IXMLBetragBezeichnungTyp;
    function Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summeeigenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
    function Get_Summeabzug: IXMLSummenblockEigenanteilTypSummeabzug;
    function Get_Summeauslagen: IXMLSummenblockEigenanteilTypSummeauslagen;
    property Summehonorarbema: IXMLBetragBezeichnungTypList read Get_Summehonorarbema;
    property Summehonorargoz: IXMLBetragBezeichnungTypList read Get_Summehonorargoz;
    property Summeeigenlabor: IXMLBetragBezeichnungTyp read Get_Summeeigenlabor;
    property Summefremdlabor: IXMLBetragBezeichnungTypList read Get_Summefremdlabor;
    property Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp read Get_Summeverbrauchsmaterial;
    property Summeeigenlabormehrkosten: IXMLBetragBezeichnungTyp read Get_Summeeigenlabormehrkosten;
    property Summefremdlabormehrkosten: IXMLBetragBezeichnungTypList read Get_Summefremdlabormehrkosten;
    property Summeverbrauchsmaterialmehrkosten: IXMLBetragBezeichnungTyp read Get_Summeverbrauchsmaterialmehrkosten;
    property Summegesamt: IXMLBetragBezeichnungTyp read Get_Summegesamt;
    property Summekassenanteil: IXMLBetragBezeichnungSatzTyp read Get_Summekassenanteil;
    property Summeeigenanteil: IXMLBetragBezeichnungSatzTyp read Get_Summeeigenanteil;
    property Summezahlbetrag: IXMLBetragBezeichnungTyp read Get_Summezahlbetrag;
    property Summeabzug: IXMLSummenblockEigenanteilTypSummeabzug read Get_Summeabzug;
    property Summeauslagen: IXMLSummenblockEigenanteilTypSummeauslagen read Get_Summeauslagen;
  end;
  IXMLSummenblockEigenanteilTypList = interface(IXMLNodeCollection)
    ['{3FBEFAE8-32BE-415D-82B7-594714EE142A}']
    function Add: IXMLSummenblockEigenanteilTyp;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTyp;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTyp;
    property Items[Index: Integer]: IXMLSummenblockEigenanteilTyp read Get_Item; default;
  end;
  IXMLSummenblockEigenanteilTypSummeabzug = interface(IXMLBetragBezeichnungTyp)
    ['{80E8CB29-1240-4245-9810-46290B7A686F}']
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
    property Bezeichnung: TXSDString180Typ read Get_Bezeichnung write Set_Bezeichnung;
  end;
  IXMLSummenblockEigenanteilTypSummeabzugList = interface(IXMLNodeCollection)
    ['{383BE520-3D92-452F-A8D7-95AE21C3D014}']
    function Add: IXMLSummenblockEigenanteilTypSummeabzug;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug;
    property Items[Index: Integer]: IXMLSummenblockEigenanteilTypSummeabzug read Get_Item; default;
  end;
  IXMLSummenblockEigenanteilTypSummeauslagen = interface(IXMLBetragBezeichnungTyp)
    ['{988869C3-986F-472B-8FE3-4965E798E859}']
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
    property Bezeichnung: TXSDString180Typ read Get_Bezeichnung write Set_Bezeichnung;
  end;
  IXMLSummenblockEigenanteilTypSummeauslagenList = interface(IXMLNodeCollection)
    ['{B879D946-6FED-4EAE-BF48-C8F46F197CE4}']
    function Add: IXMLSummenblockEigenanteilTypSummeauslagen;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen;
    property Items[Index: Integer]: IXMLSummenblockEigenanteilTypSummeauslagen read Get_Item; default;
  end;
  IXMLSummenblockEigenanteilKFOTyp = interface(IXMLNode)
    ['{16FBDA05-99A6-4416-BF1D-8B6A9E3D8CAE}']
    function Get_Summehonorarbema: IXMLBetragBezeichnungTyp;
    function Get_Summeeigenlabor: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabor: IXMLBetragBezeichnungTyp;
    function Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp;
    function Get_Summeversichertenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summemehrkosten: IXMLBetragBezeichnungTypList;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
    property Summehonorarbema: IXMLBetragBezeichnungTyp read Get_Summehonorarbema;
    property Summeeigenlabor: IXMLBetragBezeichnungTyp read Get_Summeeigenlabor;
    property Summefremdlabor: IXMLBetragBezeichnungTyp read Get_Summefremdlabor;
    property Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp read Get_Summeverbrauchsmaterial;
    property Summeversichertenanteil: IXMLBetragBezeichnungSatzTyp read Get_Summeversichertenanteil;
    property Summekassenanteil: IXMLBetragBezeichnungSatzTyp read Get_Summekassenanteil;
    property Summemehrkosten: IXMLBetragBezeichnungTypList read Get_Summemehrkosten;
    property Summezahlbetrag: IXMLBetragBezeichnungTyp read Get_Summezahlbetrag;
  end;
  IXMLSummenblockEigenanteilKFOTypList = interface(IXMLNodeCollection)
    ['{DB9F9ECE-FD27-44AA-825F-6B0871DA2DFA}']
    function Add: IXMLSummenblockEigenanteilKFOTyp;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilKFOTyp;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilKFOTyp;
    property Items[Index: Integer]: IXMLSummenblockEigenanteilKFOTyp read Get_Item; default;
  end;
  IXMLUnfallarbeitgeberTyp = interface(IXMLNode)
    ['{AAD0DFCE-67AD-4DB1-A57D-431DD4DB512E}']
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Berufsgruppe: string;
    procedure Set_Berufsgruppe(const Value: string);
    function Get_Einstellungsdatum: string;
    procedure Set_Einstellungsdatum(const Value: string);
    property Name: string read Get_Name write Set_Name;
    property Anschrift: IXMLAnschrift2Typ read Get_Anschrift;
    property Berufsgruppe: string read Get_Berufsgruppe write Set_Berufsgruppe;
    property Einstellungsdatum: string read Get_Einstellungsdatum write Set_Einstellungsdatum;
  end;
  IXMLUnfallarbeitgeberTypList = interface(IXMLNodeCollection)
    ['{58ADB369-B756-4970-A2AD-C785470457BD}']
    function Add: IXMLUnfallarbeitgeberTyp;
    function Insert(const Index: Integer): IXMLUnfallarbeitgeberTyp;
    function Get_Item(Index: Integer): IXMLUnfallarbeitgeberTyp;
    property Items[Index: Integer]: IXMLUnfallarbeitgeberTyp read Get_Item; default;
  end;
  IXMLUnfalldatenTyp = interface(IXMLNode)
    ['{B71432D9-9584-49A4-A02B-1D4ED92EDD16}']
    function Get_Unfalltag: string;
    procedure Set_Unfalltag(const Value: string);
    function Get_Aktenzeichen: string;
    procedure Set_Aktenzeichen(const Value: string);
    function Get_Unfallhergang: string;
    procedure Set_Unfallhergang(const Value: string);
    function Get_Personalunfall: Boolean;
    procedure Set_Personalunfall(const Value: Boolean);
    function Get_Arbeitgeber: IXMLUnfallarbeitgeberTyp;
    function Get_Refarztbericht: IXMLUnfalldatenTypRefarztbericht;
    property Unfalltag: string read Get_Unfalltag write Set_Unfalltag;
    property Aktenzeichen: string read Get_Aktenzeichen write Set_Aktenzeichen;
    property Unfallhergang: string read Get_Unfallhergang write Set_Unfallhergang;
    property Personalunfall: Boolean read Get_Personalunfall write Set_Personalunfall;
    property Arbeitgeber: IXMLUnfallarbeitgeberTyp read Get_Arbeitgeber;
    property Refarztbericht: IXMLUnfalldatenTypRefarztbericht read Get_Refarztbericht;
  end;
  IXMLUnfalldatenTypList = interface(IXMLNodeCollection)
    ['{F437081F-AB2F-4C74-99F7-273AC16F25E3}']
    function Add: IXMLUnfalldatenTyp;
    function Insert(const Index: Integer): IXMLUnfalldatenTyp;
    function Get_Item(Index: Integer): IXMLUnfalldatenTyp;
    property Items[Index: Integer]: IXMLUnfalldatenTyp read Get_Item; default;
  end;
  IXMLUnfalldatenTypRefarztbericht = interface(IXMLNode)
    ['{10901B87-2313-4F9A-92E1-1FB39D409686}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Typ: string;
    procedure Set_Typ(const Value: string);
    property Value: string read Get_Value write Set_Value;
    property Typ: string read Get_Typ write Set_Typ;
  end;
  IXMLUnfalldatenTypRefarztberichtList = interface(IXMLNodeCollection)
    ['{C4F338AD-B44A-468F-A066-FCFFDE7915DF}']
    function Add: IXMLUnfalldatenTypRefarztbericht;
    function Insert(const Index: Integer): IXMLUnfalldatenTypRefarztbericht;
    function Get_Item(Index: Integer): IXMLUnfalldatenTypRefarztbericht;
    property Items[Index: Integer]: IXMLUnfalldatenTypRefarztbericht read Get_Item; default;
  end;
  IXMLVersicherungTyp = interface(IXMLNode)
    ['{1A777938-23EE-402D-9309-4E2563455E6A}']
    function Get_Kassenname: string;
    procedure Set_Kassenname(const Value: string);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Kvnr: string;
    procedure Set_Kvnr(const Value: string);
    function Get_Versichertenart: TXSDVersichertenartEnum;
    procedure Set_Versichertenart(const Value: TXSDVersichertenartEnum);
    function Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum;
    procedure Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum);
    function Get_Dmpteilnahme: TXSDDMPkennzeichenEnum;
    procedure Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum);
    function Get_Gueltigab: string;
    procedure Set_Gueltigab(const Value: string);
    function Get_Gueltigbis: string;
    procedure Set_Gueltigbis(const Value: string);
    function Get_Khkennzeichen: string;
    procedure Set_Khkennzeichen(const Value: string);
    property Kassenname: string read Get_Kassenname write Set_Kassenname;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
    property Kvnr: string read Get_Kvnr write Set_Kvnr;
    property Versichertenart: TXSDVersichertenartEnum read Get_Versichertenart write Set_Versichertenart;
    property Bpersonenkreis: TXSDBesondererpersonenkreisEnum read Get_Bpersonenkreis write Set_Bpersonenkreis;
    property Dmpteilnahme: TXSDDMPkennzeichenEnum read Get_Dmpteilnahme write Set_Dmpteilnahme;
    property Gueltigab: string read Get_Gueltigab write Set_Gueltigab;
    property Gueltigbis: string read Get_Gueltigbis write Set_Gueltigbis;
    property Khkennzeichen: string read Get_Khkennzeichen write Set_Khkennzeichen;
  end;
  IXMLVersicherungTypList = interface(IXMLNodeCollection)
    ['{D6518240-735D-4E80-84CB-3C808E5C8EE6}']
    function Add: IXMLVersicherungTyp;
    function Insert(const Index: Integer): IXMLVersicherungTyp;
    function Get_Item(Index: Integer): IXMLVersicherungTyp;
    property Items[Index: Integer]: IXMLVersicherungTyp read Get_Item; default;
  end;
  IXMLLeistungspositionTyp = interface(IXMLNode)
    ['{F2A80768-44F3-464B-8750-E279BBA03B11}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Datum: string read Get_Datum write Set_Datum;
    property Uhrzeit: string read Get_Uhrzeit write Set_Uhrzeit;
    property Anzahl: string read Get_Anzahl write Set_Anzahl;
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Zusatztext: TXSDTextTyp read Get_Zusatztext write Set_Zusatztext;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Idref: TXSDIdTyp read Get_Idref write Set_Idref;
  end;
  IXMLLeistungspositionTypList = interface(IXMLNodeCollection)
    ['{CCA5993D-6CB5-4E39-9212-92C94C1DD738}']
    function Add: IXMLLeistungspositionTyp;
    function Insert(const Index: Integer): IXMLLeistungspositionTyp;
    function Get_Item(Index: Integer): IXMLLeistungspositionTyp;
    property Items[Index: Integer]: IXMLLeistungspositionTyp read Get_Item; default;
  end;
  IXMLLeistungsposition2Typ = interface(IXMLNode)
    ['{575F63B8-0B20-4E33-83C9-B28FFD8F8AC1}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Datum: string read Get_Datum write Set_Datum;
    property Uhrzeit: string read Get_Uhrzeit write Set_Uhrzeit;
    property Anzahl: string read Get_Anzahl write Set_Anzahl;
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Zusatztext: TXSDTextTyp read Get_Zusatztext write Set_Zusatztext;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Idref: TXSDIdTyp read Get_Idref write Set_Idref;
  end;
  IXMLLeistungsposition2TypList = interface(IXMLNodeCollection)
    ['{77C129C4-07F6-4644-A207-33F04540E27B}']
    function Add: IXMLLeistungsposition2Typ;
    function Insert(const Index: Integer): IXMLLeistungsposition2Typ;
    function Get_Item(Index: Integer): IXMLLeistungsposition2Typ;
    property Items[Index: Integer]: IXMLLeistungsposition2Typ read Get_Item; default;
  end;
  IXMLZifferTyp = interface(IXMLNode)
    ['{E1400EC9-003A-4109-8BEB-4A786BDC4250}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: Boolean;
    procedure Set_Analog(const Value: Boolean);
    property Value: string read Get_Value write Set_Value;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Analog: Boolean read Get_Analog write Set_Analog;
  end;
  IXMLZifferTypList = interface(IXMLNodeCollection)
    ['{CE497675-FED4-47F1-B382-49DD9DC71F36}']
    function Add: IXMLZifferTyp;
    function Insert(const Index: Integer): IXMLZifferTyp;
    function Get_Item(Index: Integer): IXMLZifferTyp;
    property Items[Index: Integer]: IXMLZifferTyp read Get_Item; default;
  end;
  IXMLBemaZifferTyp = interface(IXMLLeistungspositionTyp)
    ['{3EC8063C-850B-4332-B317-CCF55B309A0F}']
    function Get_Anteil: IXMLBemaZifferTypAnteil;
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
    property Anteil: IXMLBemaZifferTypAnteil read Get_Anteil;
    property Zahnangabe: TXSDZahnangabeTyp read Get_Zahnangabe write Set_Zahnangabe;
    property Punktwert: string read Get_Punktwert write Set_Punktwert;
    property Punktzahl: string read Get_Punktzahl write Set_Punktzahl;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
    property Abzug: Boolean read Get_Abzug write Set_Abzug;
  end;
  IXMLBemaZifferTypList = interface(IXMLNodeCollection)
    ['{F3E41D8E-49CF-4152-84EA-F22AAF99CC84}']
    function Add: IXMLBemaZifferTyp;
    function Insert(const Index: Integer): IXMLBemaZifferTyp;
    function Get_Item(Index: Integer): IXMLBemaZifferTyp;
    property Items[Index: Integer]: IXMLBemaZifferTyp read Get_Item; default;
  end;
  IXMLBemaZifferTypAnteil = interface(IXMLNode)
    ['{244A1F9E-A106-43D7-B4CA-AE5C4148F1EB}']
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
    property Zaehler: Integer read Get_Zaehler write Set_Zaehler;
    property Nenner: Integer read Get_Nenner write Set_Nenner;
  end;
  IXMLBemaZifferTypAnteilList = interface(IXMLNodeCollection)
    ['{4D495951-1275-4AAF-8E3B-5E672717A849}']
    function Add: IXMLBemaZifferTypAnteil;
    function Insert(const Index: Integer): IXMLBemaZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLBemaZifferTypAnteil;
    property Items[Index: Integer]: IXMLBemaZifferTypAnteil read Get_Item; default;
  end;
  IXMLBemaKFOZifferTyp = interface(IXMLLeistungsposition2Typ)
    ['{225301DF-75B5-45F5-934C-9C3896F503E3}']
    function Get_Anteil: IXMLBemaKFOZifferTypAnteil;
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Leistungsart: TXSDLeistungsartkfoEnum;
    procedure Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum);
    function Get_EdvNr: string;
    procedure Set_EdvNr(const Value: string);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Punktzahlgesamt: string;
    procedure Set_Punktzahlgesamt(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
    property Anteil: IXMLBemaKFOZifferTypAnteil read Get_Anteil;
    property Zahnangabe: TXSDZahnangabeTyp read Get_Zahnangabe write Set_Zahnangabe;
    property Leistungsart: TXSDLeistungsartkfoEnum read Get_Leistungsart write Set_Leistungsart;
    property EdvNr: string read Get_EdvNr write Set_EdvNr;
    property Punktwert: string read Get_Punktwert write Set_Punktwert;
    property Punktzahl: string read Get_Punktzahl write Set_Punktzahl;
    property Punktzahlgesamt: string read Get_Punktzahlgesamt write Set_Punktzahlgesamt;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
    property Abzug: Boolean read Get_Abzug write Set_Abzug;
  end;
  IXMLBemaKFOZifferTypList = interface(IXMLNodeCollection)
    ['{B0E1F584-DE54-4C74-9254-5E92926C99A6}']
    function Add: IXMLBemaKFOZifferTyp;
    function Insert(const Index: Integer): IXMLBemaKFOZifferTyp;
    function Get_Item(Index: Integer): IXMLBemaKFOZifferTyp;
    property Items[Index: Integer]: IXMLBemaKFOZifferTyp read Get_Item; default;
  end;
  IXMLBemaKFOZifferTypAnteil = interface(IXMLNode)
    ['{5926F593-B787-48AE-B5E6-6340288558A7}']
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
    property Zaehler: Integer read Get_Zaehler write Set_Zaehler;
    property Nenner: Integer read Get_Nenner write Set_Nenner;
  end;
  IXMLBemaKFOZifferTypAnteilList = interface(IXMLNodeCollection)
    ['{76E55803-A33E-424D-99E0-5F84E544ABAF}']
    function Add: IXMLBemaKFOZifferTypAnteil;
    function Insert(const Index: Integer): IXMLBemaKFOZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLBemaKFOZifferTypAnteil;
    property Items[Index: Integer]: IXMLBemaKFOZifferTypAnteil read Get_Item; default;
  end;
  IXMLBemaKFOZwSummeTyp = interface(IXMLNode)
    ['{01CC65E7-BB32-47E9-92E0-F91A1D59C29A}']
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Leistungsart: TXSDLeistungsartkfoEnum;
    procedure Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahlgesamt: string;
    procedure Set_Punktzahlgesamt(const Value: string);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Leistungsart: TXSDLeistungsartkfoEnum read Get_Leistungsart write Set_Leistungsart;
    property Punktwert: string read Get_Punktwert write Set_Punktwert;
    property Punktzahlgesamt: string read Get_Punktzahlgesamt write Set_Punktzahlgesamt;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
  end;
  IXMLBemaKFOZwSummeTypList = interface(IXMLNodeCollection)
    ['{7AA96F55-9492-43F9-ABE8-6CE91224F5BD}']
    function Add: IXMLBemaKFOZwSummeTyp;
    function Insert(const Index: Integer): IXMLBemaKFOZwSummeTyp;
    function Get_Item(Index: Integer): IXMLBemaKFOZwSummeTyp;
    property Items[Index: Integer]: IXMLBemaKFOZwSummeTyp read Get_Item; default;
  end;
  IXMLGOZifferTyp = interface(IXMLLeistungspositionTyp)
    ['{E16450D8-B331-471A-B75F-AE85C61D2DCC}']
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Anteil: IXMLGOZifferTypAnteil;
    function Get_Begruendung: TXSDTextTyp;
    procedure Set_Begruendung(const Value: TXSDTextTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Ambo: IXMLAmboTyp;
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: TXSDString18Typ;
    procedure Set_Analog(const Value: TXSDString18Typ);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    property Beteiligung: IXMLBeteiligungTypList read Get_Beteiligung;
    property Anteil: IXMLGOZifferTypAnteil read Get_Anteil;
    property Begruendung: TXSDTextTyp read Get_Begruendung write Set_Begruendung;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Minderungssatz: TXSDMinderungssatzEnum read Get_Minderungssatz write Set_Minderungssatz;
    property Ambo: IXMLAmboTyp read Get_Ambo;
    property Punktwert: string read Get_Punktwert write Set_Punktwert;
    property Punktzahl: string read Get_Punktzahl write Set_Punktzahl;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Analog: TXSDString18Typ read Get_Analog write Set_Analog;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
  end;
  IXMLGOZifferTypList = interface(IXMLNodeCollection)
    ['{4354ECD2-B2E5-45ED-819C-B6D85A41BD83}']
    function Add: IXMLGOZifferTyp;
    function Insert(const Index: Integer): IXMLGOZifferTyp;
    function Get_Item(Index: Integer): IXMLGOZifferTyp;
    property Items[Index: Integer]: IXMLGOZifferTyp read Get_Item; default;
  end;
  IXMLGOZifferTypAnteil = interface(IXMLNode)
    ['{696D1482-6081-4138-A95A-E235A1D97503}']
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
    property Zaehler: Integer read Get_Zaehler write Set_Zaehler;
    property Nenner: Integer read Get_Nenner write Set_Nenner;
  end;
  IXMLGOZifferTypAnteilList = interface(IXMLNodeCollection)
    ['{9BA35F02-F876-41EB-94F0-09E0504965F7}']
    function Add: IXMLGOZifferTypAnteil;
    function Insert(const Index: Integer): IXMLGOZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLGOZifferTypAnteil;
    property Items[Index: Integer]: IXMLGOZifferTypAnteil read Get_Item; default;
  end;
  IXMLGOZZifferTyp = interface(IXMLLeistungspositionTyp)
    ['{1825576D-8BBC-49A5-8976-4A4E8083B2FC}']
    function Get_Anteil: IXMLGOZZifferTypAnteil;
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: TXSDString18Typ;
    procedure Set_Analog(const Value: TXSDString18Typ);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Verlangensleistung: Boolean;
    procedure Set_Verlangensleistung(const Value: Boolean);
    property Anteil: IXMLGOZZifferTypAnteil read Get_Anteil;
    property Minderungssatz: TXSDMinderungssatzEnum read Get_Minderungssatz write Set_Minderungssatz;
    property Zahnangabe: TXSDZahnangabeTyp read Get_Zahnangabe write Set_Zahnangabe;
    property Punktwert: string read Get_Punktwert write Set_Punktwert;
    property Punktzahl: string read Get_Punktzahl write Set_Punktzahl;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Abzug: Boolean read Get_Abzug write Set_Abzug;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Analog: TXSDString18Typ read Get_Analog write Set_Analog;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
    property Verlangensleistung: Boolean read Get_Verlangensleistung write Set_Verlangensleistung;
  end;
  IXMLGOZZifferTypList = interface(IXMLNodeCollection)
    ['{175DF9F4-C149-458C-B8A4-96591F06B382}']
    function Add: IXMLGOZZifferTyp;
    function Insert(const Index: Integer): IXMLGOZZifferTyp;
    function Get_Item(Index: Integer): IXMLGOZZifferTyp;
    property Items[Index: Integer]: IXMLGOZZifferTyp read Get_Item; default;
  end;
  IXMLGOZZifferTypAnteil = interface(IXMLNode)
    ['{7F176DD0-8901-454A-A0EF-3EF4DEAFD784}']
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
    property Zaehler: Integer read Get_Zaehler write Set_Zaehler;
    property Nenner: Integer read Get_Nenner write Set_Nenner;
  end;
  IXMLGOZZifferTypAnteilList = interface(IXMLNodeCollection)
    ['{E34E63E9-A4E2-48FE-A205-C4A77CF14086}']
    function Add: IXMLGOZZifferTypAnteil;
    function Insert(const Index: Integer): IXMLGOZZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLGOZZifferTypAnteil;
    property Items[Index: Integer]: IXMLGOZZifferTypAnteil read Get_Item; default;
  end;
  IXMLLaborZifferTyp = interface(IXMLLeistungsposition2Typ)
    ['{5BAB7AD7-51DE-437F-80D2-4C9D8181A243}']
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
  end;
  IXMLLaborZifferTypList = interface(IXMLNodeCollection)
    ['{F7510FDF-714B-4727-9105-19B11EB95CF9}']
    function Add: IXMLLaborZifferTyp;
    function Insert(const Index: Integer): IXMLLaborZifferTyp;
    function Get_Item(Index: Integer): IXMLLaborZifferTyp;
    property Items[Index: Integer]: IXMLLaborZifferTyp read Get_Item; default;
  end;
  IXMLEigenlaborKFOZifferTyp = interface(IXMLLeistungsposition2Typ)
    ['{E032C8AE-1651-414D-AB66-63A7D758821F}']
    function Get_Einheit: string;
    procedure Set_Einheit(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    property Einheit: string read Get_Einheit write Set_Einheit;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Berechnung: TXSDBerechnungskennzeichenEnum read Get_Berechnung write Set_Berechnung;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
    property Ziffer: TXSDString18Typ read Get_Ziffer write Set_Ziffer;
  end;
  IXMLEigenlaborKFOZifferTypList = interface(IXMLNodeCollection)
    ['{16D0A2D9-23B6-4A73-9399-8B7C3F5AA753}']
    function Add: IXMLEigenlaborKFOZifferTyp;
    function Insert(const Index: Integer): IXMLEigenlaborKFOZifferTyp;
    function Get_Item(Index: Integer): IXMLEigenlaborKFOZifferTyp;
    property Items[Index: Integer]: IXMLEigenlaborKFOZifferTyp read Get_Item; default;
  end;
  IXMLMaterialZifferTyp = interface(IXMLNode)
    ['{D6EB582C-E0F2-40FA-8A14-BEC37462EC96}']
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Menge: Double;
    procedure Set_Menge(const Value: Double);
    function Get_Einheit: string;
    procedure Set_Einheit(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    property Datum: string read Get_Datum write Set_Datum;
    property Menge: Double read Get_Menge write Set_Menge;
    property Einheit: string read Get_Einheit write Set_Einheit;
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
  end;
  IXMLMaterialZifferTypList = interface(IXMLNodeCollection)
    ['{C2091276-4093-44DC-ACB6-EDA5B177F61B}']
    function Add: IXMLMaterialZifferTyp;
    function Insert(const Index: Integer): IXMLMaterialZifferTyp;
    function Get_Item(Index: Integer): IXMLMaterialZifferTyp;
    property Items[Index: Integer]: IXMLMaterialZifferTyp read Get_Item; default;
  end;
  IXMLMaterialpassZifferTyp = interface(IXMLNode)
    ['{7126F999-F9B0-4902-BC10-D3FDCD723FA9}']
    function Get_Bezeichnung: string;
    procedure Set_Bezeichnung(const Value: string);
    function Get_Hersteller: string;
    procedure Set_Hersteller(const Value: string);
    function Get_Seriennr: string;
    procedure Set_Seriennr(const Value: string);
    function Get_Chargennr: string;
    procedure Set_Chargennr(const Value: string);
    function Get_Bestandteile: string;
    procedure Set_Bestandteile(const Value: string);
    function Get_Erklaerung: string;
    procedure Set_Erklaerung(const Value: string);
    property Bezeichnung: string read Get_Bezeichnung write Set_Bezeichnung;
    property Hersteller: string read Get_Hersteller write Set_Hersteller;
    property Seriennr: string read Get_Seriennr write Set_Seriennr;
    property Chargennr: string read Get_Chargennr write Set_Chargennr;
    property Bestandteile: string read Get_Bestandteile write Set_Bestandteile;
    property Erklaerung: string read Get_Erklaerung write Set_Erklaerung;
  end;
  IXMLMaterialpassZifferTypList = interface(IXMLNodeCollection)
    ['{89BFD9EE-5437-4835-8482-E762BD7A2F12}']
    function Add: IXMLMaterialpassZifferTyp;
    function Insert(const Index: Integer): IXMLMaterialpassZifferTyp;
    function Get_Item(Index: Integer): IXMLMaterialpassZifferTyp;
    property Items[Index: Integer]: IXMLMaterialpassZifferTyp read Get_Item; default;
  end;
  IXMLAmboTyp = interface(IXMLNode)
    ['{17B3622D-DCCE-47CA-B536-499F085EA739}']
    function Get_Ops: IXMLOPSTyp;
    function Get_Doppeluntersuchung: Boolean;
    procedure Set_Doppeluntersuchung(const Value: Boolean);
    function Get_Einzelverguetung: IXMLAmboTypEinzelverguetung;
    function Get_Zusatzebm: string;
    procedure Set_Zusatzebm(const Value: string);
    property Ops: IXMLOPSTyp read Get_Ops;
    property Doppeluntersuchung: Boolean read Get_Doppeluntersuchung write Set_Doppeluntersuchung;
    property Einzelverguetung: IXMLAmboTypEinzelverguetung read Get_Einzelverguetung;
    property Zusatzebm: string read Get_Zusatzebm write Set_Zusatzebm;
  end;
  IXMLAmboTypList = interface(IXMLNodeCollection)
    ['{AD0B074C-B83D-466C-9CBD-9099758EE492}']
    function Add: IXMLAmboTyp;
    function Insert(const Index: Integer): IXMLAmboTyp;
    function Get_Item(Index: Integer): IXMLAmboTyp;
    property Items[Index: Integer]: IXMLAmboTyp read Get_Item; default;
  end;
  IXMLAmboTypEinzelverguetung = interface(IXMLNode)
    ['{52318175-8D58-408C-8486-2A6A2488D68F}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kennzeichen: string;
    procedure Set_Kennzeichen(const Value: string);
    property Value: string read Get_Value write Set_Value;
    property Kennzeichen: string read Get_Kennzeichen write Set_Kennzeichen;
  end;
  IXMLAmboTypEinzelverguetungList = interface(IXMLNodeCollection)
    ['{7D6A9499-A3BA-47D8-B4AB-D2CA6FBE6C1F}']
    function Add: IXMLAmboTypEinzelverguetung;
    function Insert(const Index: Integer): IXMLAmboTypEinzelverguetung;
    function Get_Item(Index: Integer): IXMLAmboTypEinzelverguetung;
    property Items[Index: Integer]: IXMLAmboTypEinzelverguetung read Get_Item; default;
  end;
  IXMLAuslagenTyp = interface(IXMLAuslagenpositionTyp)
    ['{A7914553-4353-4607-80A2-930C0A1019F1}']
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Kennzeichen: TXSDPositionskennzeichenEnum;
    procedure Set_Kennzeichen(const Value: TXSDPositionskennzeichenEnum);
    function Get_Berechnung: string;
    procedure Set_Berechnung(const Value: string);
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Kennzeichen: TXSDPositionskennzeichenEnum read Get_Kennzeichen write Set_Kennzeichen;
    property Berechnung: string read Get_Berechnung write Set_Berechnung;
  end;
  IXMLAuslagenTypList = interface(IXMLNodeCollection)
    ['{F616C7EE-7FB5-4ED5-A400-2E6A3B850A63}']
    function Add: IXMLAuslagenTyp;
    function Insert(const Index: Integer): IXMLAuslagenTyp;
    function Get_Item(Index: Integer): IXMLAuslagenTyp;
    property Items[Index: Integer]: IXMLAuslagenTyp read Get_Item; default;
  end;
  IXMLAuslagenpositionTyp = interface(IXMLNode)
    ['{577075CC-D248-4DA8-9ACC-75BACDE86D41}']
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
    property Leistungserbringerid: TXSDIdTyp read Get_Leistungserbringerid write Set_Leistungserbringerid;
    property Datum: string read Get_Datum write Set_Datum;
    property Uhrzeit: string read Get_Uhrzeit write Set_Uhrzeit;
    property Anzahl: string read Get_Anzahl write Set_Anzahl;
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Zusatztext: TXSDTextTyp read Get_Zusatztext write Set_Zusatztext;
    property Beteiligung: IXMLBeteiligungTypList read Get_Beteiligung;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Idref: TXSDIdTyp read Get_Idref write Set_Idref;
  end;
  IXMLAuslagenpositionTypList = interface(IXMLNodeCollection)
    ['{F1C6A442-37C0-44D4-81D6-A4919FB3CF17}']
    function Add: IXMLAuslagenpositionTyp;
    function Insert(const Index: Integer): IXMLAuslagenpositionTyp;
    function Get_Item(Index: Integer): IXMLAuslagenpositionTyp;
    property Items[Index: Integer]: IXMLAuslagenpositionTyp read Get_Item; default;
  end;
  IXMLEntschaedigungTyp = interface(IXMLAuslagenpositionTyp)
    ['{9DF3790C-670D-497C-B6DB-369741F1A0E6}']
    function Get_Anteil: IXMLEntschaedigungTypAnteil;
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    property Anteil: IXMLEntschaedigungTypAnteil read Get_Anteil;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Go: TXSDGebuehrenordnungEnum read Get_Go write Set_Go;
    property Goversion: string read Get_Goversion write Set_Goversion;
  end;
  IXMLEntschaedigungTypList = interface(IXMLNodeCollection)
    ['{3A98437E-B6D0-4262-8047-9F4D93B027AA}']
    function Add: IXMLEntschaedigungTyp;
    function Insert(const Index: Integer): IXMLEntschaedigungTyp;
    function Get_Item(Index: Integer): IXMLEntschaedigungTyp;
    property Items[Index: Integer]: IXMLEntschaedigungTyp read Get_Item; default;
  end;
  IXMLEntschaedigungTypAnteil = interface(IXMLNode)
    ['{16EBAF00-427B-4AA6-BF59-BC426E6A039C}']
    function Get_Teiler: Integer;
    procedure Set_Teiler(const Value: Integer);
    property Teiler: Integer read Get_Teiler write Set_Teiler;
  end;
  IXMLEntschaedigungTypAnteilList = interface(IXMLNodeCollection)
    ['{9BFC5FCF-88CF-4CBC-8E69-20AD28FFD92A}']
    function Add: IXMLEntschaedigungTypAnteil;
    function Insert(const Index: Integer): IXMLEntschaedigungTypAnteil;
    function Get_Item(Index: Integer): IXMLEntschaedigungTypAnteil;
    property Items[Index: Integer]: IXMLEntschaedigungTypAnteil read Get_Item; default;
  end;
  IXMLHonorarTyp = interface(IXMLAuslagenpositionTyp)
    ['{0E16A210-168D-4B00-8511-6CD90EA692CB}']
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: string;
    procedure Set_Berechnung(const Value: string);
    property Mwstsatz: TXSDProzentTyp read Get_Mwstsatz write Set_Mwstsatz;
    property Minderungssatz: TXSDMinderungssatzEnum read Get_Minderungssatz write Set_Minderungssatz;
    property Einzelbetrag: TXSDBetragTyp read Get_Einzelbetrag write Set_Einzelbetrag;
    property Gesamtbetrag: TXSDBetragTyp read Get_Gesamtbetrag write Set_Gesamtbetrag;
    property Berechnung: string read Get_Berechnung write Set_Berechnung;
  end;
  IXMLHonorarTypList = interface(IXMLNodeCollection)
    ['{0C8E5DD9-2719-47EF-83BB-EEEB5729A765}']
    function Add: IXMLHonorarTyp;
    function Insert(const Index: Integer): IXMLHonorarTyp;
    function Get_Item(Index: Integer): IXMLHonorarTyp;
    property Items[Index: Integer]: IXMLHonorarTyp read Get_Item; default;
  end;
  IXMLReisekostenTyp = interface(IXMLNode)
    ['{969DA840-C816-4E19-B7C0-45E342DCFCCF}']
    function Get_Wegstrecke: string;
    procedure Set_Wegstrecke(const Value: string);
    function Get_Uebernachtungskosten: TXSDBetragTyp;
    procedure Set_Uebernachtungskosten(const Value: TXSDBetragTyp);
    function Get_Abwesenheit: string;
    procedure Set_Abwesenheit(const Value: string);
    property Wegstrecke: string read Get_Wegstrecke write Set_Wegstrecke;
    property Uebernachtungskosten: TXSDBetragTyp read Get_Uebernachtungskosten write Set_Uebernachtungskosten;
    property Abwesenheit: string read Get_Abwesenheit write Set_Abwesenheit;
  end;
  IXMLReisekostenTypList = interface(IXMLNodeCollection)
    ['{296BE845-B77A-4908-965E-BA3A65D07834}']
    function Add: IXMLReisekostenTyp;
    function Insert(const Index: Integer): IXMLReisekostenTyp;
    function Get_Item(Index: Integer): IXMLReisekostenTyp;
    property Items[Index: Integer]: IXMLReisekostenTyp read Get_Item; default;
  end;
  IXMLWegegeldTyp = interface(IXMLNode)
    ['{4E89E3AB-3AC4-48DD-8251-7AC14C6B3A21}']
    function Get_Radius: string;
    procedure Set_Radius(const Value: string);
    function Get_Tageszeit: string;
    procedure Set_Tageszeit(const Value: string);
    property Radius: string read Get_Radius write Set_Radius;
    property Tageszeit: string read Get_Tageszeit write Set_Tageszeit;
  end;
  IXMLWegegeldTypList = interface(IXMLNodeCollection)
    ['{9D1AFD8F-68C6-498C-8D03-C706318DAA8A}']
    function Add: IXMLWegegeldTyp;
    function Insert(const Index: Integer): IXMLWegegeldTyp;
    function Get_Item(Index: Integer): IXMLWegegeldTyp;
    property Items[Index: Integer]: IXMLWegegeldTyp read Get_Item; default;
  end;
  IXMLTextzeileTyp = interface(IXMLNode)
    ['{BA96ED71-FF45-400E-B813-C21E35DFF538}']
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    property Text: TXSDTextTyp read Get_Text write Set_Text;
    property Id: TXSDIdTyp read Get_Id write Set_Id;
    property Idref: TXSDIdTyp read Get_Idref write Set_Idref;
    property Positionsnr: Integer read Get_Positionsnr write Set_Positionsnr;
  end;
  IXMLTextzeileTypList = interface(IXMLNodeCollection)
    ['{1E10E7C4-86D3-4FE1-AA64-E46C01F4F2D4}']
    function Add: IXMLTextzeileTyp;
    function Insert(const Index: Integer): IXMLTextzeileTyp;
    function Get_Item(Index: Integer): IXMLTextzeileTyp;
    property Items[Index: Integer]: IXMLTextzeileTyp read Get_Item; default;
  end;
  IXMLBetragSatzTyp = interface(IXMLNode)
    ['{B5B0F39C-AFF8-4C23-9857-0BE681E87D07}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Satz: TXSDProzentTyp;
    procedure Set_Satz(const Value: TXSDProzentTyp);
    property Value: string read Get_Value write Set_Value;
    property Satz: TXSDProzentTyp read Get_Satz write Set_Satz;
  end;
  IXMLBetragSatzTypList = interface(IXMLNodeCollection)
    ['{4B4769BF-9B7A-47F7-BDC2-DDED86D2CA40}']
    function Add: IXMLBetragSatzTyp;
    function Insert(const Index: Integer): IXMLBetragSatzTyp;
    function Get_Item(Index: Integer): IXMLBetragSatzTyp;
    property Items[Index: Integer]: IXMLBetragSatzTyp read Get_Item; default;
  end;
  IXMLBetragBezeichnungTyp = interface(IXMLNode)
    ['{10311221-1D65-4D8F-82EF-79F7BEDFC301}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
    property Value: string read Get_Value write Set_Value;
    property Bezeichnung: TXSDString180Typ read Get_Bezeichnung write Set_Bezeichnung;
  end;
  IXMLBetragBezeichnungTypList = interface(IXMLNodeCollection)
    ['{7A7AA6CB-9C92-457F-BC4C-FFD5720D7C81}']
    function Add: IXMLBetragBezeichnungTyp;
    function Insert(const Index: Integer): IXMLBetragBezeichnungTyp;
    function Get_Item(Index: Integer): IXMLBetragBezeichnungTyp;
    property Items[Index: Integer]: IXMLBetragBezeichnungTyp read Get_Item; default;
  end;
  IXMLBetragBezeichnungSatzTyp = interface(IXMLNode)
    ['{50A8BD1B-2ED7-4923-A85D-6AB308B02AD8}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Bezeichnung: TXSDString140Typ;
    procedure Set_Bezeichnung(const Value: TXSDString140Typ);
    function Get_Satz: TXSDProzentTyp;
    procedure Set_Satz(const Value: TXSDProzentTyp);
    property Value: string read Get_Value write Set_Value;
    property Bezeichnung: TXSDString140Typ read Get_Bezeichnung write Set_Bezeichnung;
    property Satz: TXSDProzentTyp read Get_Satz write Set_Satz;
  end;
  IXMLBetragBezeichnungSatzTypList = interface(IXMLNodeCollection)
    ['{A509BB0C-2D84-4E8A-BB7E-ECB705733C4B}']
    function Add: IXMLBetragBezeichnungSatzTyp;
    function Insert(const Index: Integer): IXMLBetragBezeichnungSatzTyp;
    function Get_Item(Index: Integer): IXMLBetragBezeichnungSatzTyp;
    property Items[Index: Integer]: IXMLBetragBezeichnungSatzTyp read Get_Item; default;
  end;
  IXMLDateilaengeTyp = interface(IXMLNode)
    ['{C4DAA1DF-14D6-4101-AA99-8F0B5D35AFA5}']
    function Get_Laenge: string;
    procedure Set_Laenge(const Value: string);
    function Get_Pruefsumme: string;
    procedure Set_Pruefsumme(const Value: string);
    property Laenge: string read Get_Laenge write Set_Laenge;
    property Pruefsumme: string read Get_Pruefsumme write Set_Pruefsumme;
  end;
  IXMLDateilaengeTypList = interface(IXMLNodeCollection)
    ['{424EF094-B561-40E1-BEB5-3EA2EE2C8F0C}']
    function Add: IXMLDateilaengeTyp;
    function Insert(const Index: Integer): IXMLDateilaengeTyp;
    function Get_Item(Index: Integer): IXMLDateilaengeTyp;
    property Items[Index: Integer]: IXMLDateilaengeTyp read Get_Item; default;
  end;
  IXMLFehlerTyp = interface(IXMLNode)
    ['{EC6D8756-F0CA-42DF-B6D2-2B6754D3840E}']
    function Get_Code: Integer;
    procedure Set_Code(const Value: Integer);
    function Get_Text: string;
    procedure Set_Text(const Value: string);
    function Get_Hinweis: string;
    procedure Set_Hinweis(const Value: string);
    property Code: Integer read Get_Code write Set_Code;
    property Text: string read Get_Text write Set_Text;
    property Hinweis: string read Get_Hinweis write Set_Hinweis;
  end;
  IXMLFehlerTypList = interface(IXMLNodeCollection)
    ['{C579452D-C808-4BF6-85F8-38CF71181B2D}']
    function Add: IXMLFehlerTyp;
    function Insert(const Index: Integer): IXMLFehlerTyp;
    function Get_Item(Index: Integer): IXMLFehlerTyp;
    property Items[Index: Integer]: IXMLFehlerTyp read Get_Item; default;
  end;
  IXMLTeilnehmerTyp = interface(IXMLNode)
    ['{56223C8C-83F8-42E6-89A2-C5039CA1FCE5}']
    function Get_Logisch: IXMLTeilnehmerTypLogisch;
    function Get_Physikalisch: IXMLTeilnehmerTypPhysikalisch;
    property Logisch: IXMLTeilnehmerTypLogisch read Get_Logisch;
    property Physikalisch: IXMLTeilnehmerTypPhysikalisch read Get_Physikalisch;
  end;
  IXMLTeilnehmerTypList = interface(IXMLNodeCollection)
    ['{3404723E-8569-4E37-B001-D01079566D0D}']
    function Add: IXMLTeilnehmerTyp;
    function Insert(const Index: Integer): IXMLTeilnehmerTyp;
    function Get_Item(Index: Integer): IXMLTeilnehmerTyp;
    property Items[Index: Integer]: IXMLTeilnehmerTyp read Get_Item; default;
  end;
  IXMLTeilnehmerTypLogisch = interface(IXMLNode)
    ['{861739DE-288F-4DF6-8192-03E8C8F3281D}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Rzid: TXSDPvsIdsEnum;
    procedure Set_Rzid(const Value: TXSDPvsIdsEnum);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    property Value: string read Get_Value write Set_Value;
    property Kundennr: TXSDPVSkundennrTyp read Get_Kundennr write Set_Kundennr;
    property Rzid: TXSDPvsIdsEnum read Get_Rzid write Set_Rzid;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
  end;
  IXMLTeilnehmerTypLogischList = interface(IXMLNodeCollection)
    ['{4AEEBC74-6DA1-4FD0-84D7-4D8C1BFB3FDA}']
    function Add: IXMLTeilnehmerTypLogisch;
    function Insert(const Index: Integer): IXMLTeilnehmerTypLogisch;
    function Get_Item(Index: Integer): IXMLTeilnehmerTypLogisch;
    property Items[Index: Integer]: IXMLTeilnehmerTypLogisch read Get_Item; default;
  end;
  IXMLTeilnehmerTypPhysikalisch = interface(IXMLNode)
    ['{BD71316C-B33A-4CB4-BC5A-58E7A56F5B93}']
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Rzid: TXSDPvsIdsEnum;
    procedure Set_Rzid(const Value: TXSDPvsIdsEnum);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    property Value: string read Get_Value write Set_Value;
    property Kundennr: TXSDPVSkundennrTyp read Get_Kundennr write Set_Kundennr;
    property Rzid: TXSDPvsIdsEnum read Get_Rzid write Set_Rzid;
    property Iknr: TXSDIKnrTyp read Get_Iknr write Set_Iknr;
  end;
  IXMLTeilnehmerTypPhysikalischList = interface(IXMLNodeCollection)
    ['{2937170D-39EF-42C9-8B3C-EB0DA346D3C0}']
    function Add: IXMLTeilnehmerTypPhysikalisch;
    function Insert(const Index: Integer): IXMLTeilnehmerTypPhysikalisch;
    function Get_Item(Index: Integer): IXMLTeilnehmerTypPhysikalisch;
    property Items[Index: Integer]: IXMLTeilnehmerTypPhysikalisch read Get_Item; default;
  end;
  IXMLZeitraumTyp = interface(IXMLNode)
    ['{1FE2CA39-3CF5-41A6-B89C-2C3133EDEE91}']
    function Get_Startdatum: string;
    procedure Set_Startdatum(const Value: string);
    function Get_Endedatum: string;
    procedure Set_Endedatum(const Value: string);
    function Get_Anzahltage: string;
    procedure Set_Anzahltage(const Value: string);
    property Startdatum: string read Get_Startdatum write Set_Startdatum;
    property Endedatum: string read Get_Endedatum write Set_Endedatum;
    property Anzahltage: string read Get_Anzahltage write Set_Anzahltage;
  end;
  IXMLZeitraumTypList = interface(IXMLNodeCollection)
    ['{2EF24AE0-E4F1-455C-8D16-ABF698A10353}']
    function Add: IXMLZeitraumTyp;
    function Insert(const Index: Integer): IXMLZeitraumTyp;
    function Get_Item(Index: Integer): IXMLZeitraumTyp;
    property Items[Index: Integer]: IXMLZeitraumTyp read Get_Item; default;
  end;
  TXMLDokumenttypTyp = class(TXMLNode, IXMLDokumenttypTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Format: TXSDDokumentformatEnum;
    procedure Set_Format(const Value: TXSDDokumentformatEnum);
  end;
  TXMLDokumenttypTypList = class(TXMLNodeCollection, IXMLDokumenttypTypList)
  protected
    function Add: IXMLDokumenttypTyp;
    function Insert(const Index: Integer): IXMLDokumenttypTyp;
    function Get_Item(Index: Integer): IXMLDokumenttypTyp;
  end;
  TXMLNachrichtentypTyp = class(TXMLNode, IXMLNachrichtentypTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Version: string;
    procedure Set_Version(const Value: string);
  end;
  TXMLNachrichtentypTypList = class(TXMLNodeCollection, IXMLNachrichtentypTypList)
  protected
    function Add: IXMLNachrichtentypTyp;
    function Insert(const Index: Integer): IXMLNachrichtentypTyp;
    function Get_Item(Index: Integer): IXMLNachrichtentypTyp;
  end;
  TXMLRechnungTyp = class(TXMLNode, IXMLRechnungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Rechnungsempfaenger: IXMLRechnungsempfaengerTyp;
    function Get_Zahlung: IXMLRechnungTypZahlung;
    function Get_Rechnungsvorgaben: IXMLRechnungTypRechnungsvorgaben;
    function Get_Abrechnungsfall: IXMLRechnungTypAbrechnungsfallList;
    function Get_Abrechnungsanweisung: TXSDTextTyp;
    procedure Set_Abrechnungsanweisung(const Value: TXSDTextTyp);
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Abrechnungsform: Integer;
    procedure Set_Abrechnungsform(const Value: Integer);
    function Get_Druckkennzeichen: Boolean;
    procedure Set_Druckkennzeichen(const Value: Boolean);
    function Get_Eabgabe: Boolean;
    procedure Set_Eabgabe(const Value: Boolean);
    function Get_Mahnkennzeichen: TXSDMahnkennzeichenEnum;
    procedure Set_Mahnkennzeichen(const Value: TXSDMahnkennzeichenEnum);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisaktenzeichen: string;
    procedure Set_Aisaktenzeichen(const Value: string);
    function Get_Aisendbetrag: TXSDBetragTyp;
    procedure Set_Aisendbetrag(const Value: TXSDBetragTyp);
  end;
  TXMLRechnungTypList = class(TXMLNodeCollection, IXMLRechnungTypList)
  protected
    function Add: IXMLRechnungTyp;
    function Insert(const Index: Integer): IXMLRechnungTyp;
    function Get_Item(Index: Integer): IXMLRechnungTyp;
  end;
  TXMLRechnungTypZahlung = class(TXMLNode, IXMLRechnungTypZahlung)
  protected
    procedure AfterConstruction; override;
    function Get_Ratenzahlung: IXMLRatenzahlungTyp;
    function Get_Kontoverbindung: IXMLKontoTyp;
    function Get_Art: TXSDZahlungsartEnum;
    procedure Set_Art(const Value: TXSDZahlungsartEnum);
  end;
  TXMLRechnungTypZahlungList = class(TXMLNodeCollection, IXMLRechnungTypZahlungList)
  protected
    function Add: IXMLRechnungTypZahlung;
    function Insert(const Index: Integer): IXMLRechnungTypZahlung;
    function Get_Item(Index: Integer): IXMLRechnungTypZahlung;
  end;
  TXMLRechnungTypRechnungsvorgaben = class(TXMLNode, IXMLRechnungTypRechnungsvorgaben)
  protected
    procedure AfterConstruction; override;
    function Get_Direktzahlungsbetrag: TXSDBetragTyp;
    procedure Set_Direktzahlungsbetrag(const Value: TXSDBetragTyp);
    function Get_Nachlass: IXMLNachlassTyp;
    function Get_Zuzahlungsbetrag: IXMLRechnungTypZuzahlungsbetrag;
    function Get_Beteiligung: IXMLBeteiligungTypList;
  end;
  TXMLRechnungTypRechnungsvorgabenList = class(TXMLNodeCollection, IXMLRechnungTypRechnungsvorgabenList)
  protected
    function Add: IXMLRechnungTypRechnungsvorgaben;
    function Insert(const Index: Integer): IXMLRechnungTypRechnungsvorgaben;
    function Get_Item(Index: Integer): IXMLRechnungTypRechnungsvorgaben;
  end;
  TXMLRechnungTypZuzahlungsbetrag = class(TXMLNode, IXMLRechnungTypZuzahlungsbetrag)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kennzeichen: string;
    procedure Set_Kennzeichen(const Value: string);
  end;
  TXMLRechnungTypZuzahlungsbetragList = class(TXMLNodeCollection, IXMLRechnungTypZuzahlungsbetragList)
  protected
    function Add: IXMLRechnungTypZuzahlungsbetrag;
    function Insert(const Index: Integer): IXMLRechnungTypZuzahlungsbetrag;
    function Get_Item(Index: Integer): IXMLRechnungTypZuzahlungsbetrag;
  end;
  TXMLRechnungTypAbrechnungsfall = class(TXMLNode, IXMLRechnungTypAbrechnungsfall)
  protected
    procedure AfterConstruction; override;
    function Get_Bema: IXMLBemaTyp;
    function Get_Bmgnormprivat: IXMLBmgNormPrivatTyp;
    function Get_Bmgnormkfoprivat: IXMLBmgNormKFOPrivatTyp;
    function Get_Eigenanteilsrechnung: IXMLEigenanteilsrechnungTyp;
    function Get_Eigenanteilsrechnungkfo: IXMLEigenanteilsrechnungKFOTyp;
    function Get_Humanmedizin: IXMLHumanmedizinTyp;
  end;
  TXMLRechnungTypAbrechnungsfallList = class(TXMLNodeCollection, IXMLRechnungTypAbrechnungsfallList)
  protected
    function Add: IXMLRechnungTypAbrechnungsfall;
    function Insert(const Index: Integer): IXMLRechnungTypAbrechnungsfall;
    function Get_Item(Index: Integer): IXMLRechnungTypAbrechnungsfall;
  end;
  TXMLRechnungListe = class(TXMLNode, IXMLRechnungListe)
  protected
    procedure AfterConstruction; override;
    function Get_Hinweistext: TXSDTextTyp;
    procedure Set_Hinweistext(const Value: TXSDTextTyp);
    function Get_Nachrichtentyp: IXMLNachrichtentypTyp;
    function Get_Rechnungsersteller: IXMLRechnungserstellerTyp;
    function Get_Leistungserbringer: IXMLLeistungserbringerTypList;
    function Get_Rechnung: IXMLRechnungTypList;
    function Get_Anzahl: Integer;
    procedure Set_Anzahl(const Value: Integer);
  end;
  TXMLRechnungListeList = class(TXMLNodeCollection, IXMLRechnungListeList)
  protected
    function Add: IXMLRechnungListe;
    function Insert(const Index: Integer): IXMLRechnungListe;
    function Get_Item(Index: Integer): IXMLRechnungListe;
  end;
  TXMLAnhangidTyp = class(TXMLNode, IXMLAnhangidTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Verwendungszweck: TXSDVerwendungszweckanhangEnum;
    procedure Set_Verwendungszweck(const Value: TXSDVerwendungszweckanhangEnum);
    function Get_Belegart: TXSDBelegartEnum;
    procedure Set_Belegart(const Value: TXSDBelegartEnum);
  end;
  TXMLAnhangidTypList = class(TXMLNodeCollection, IXMLAnhangidTypList)
  protected
    function Add: IXMLAnhangidTyp;
    function Insert(const Index: Integer): IXMLAnhangidTyp;
    function Get_Item(Index: Integer): IXMLAnhangidTyp;
  end;
  TXMLAnschriftTyp = class(TXMLNode, IXMLAnschriftTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Packstation: IXMLPackstationTyp;
    function Get_Grossempfaenger: IXMLAnschriftTypGrossempfaenger;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
  end;
  TXMLAnschriftTypList = class(TXMLNodeCollection, IXMLAnschriftTypList)
  protected
    function Add: IXMLAnschriftTyp;
    function Insert(const Index: Integer): IXMLAnschriftTyp;
    function Get_Item(Index: Integer): IXMLAnschriftTyp;
  end;
  TXMLAnschriftTypGrossempfaenger = class(TXMLNode, IXMLAnschriftTypGrossempfaenger)
  protected
    procedure AfterConstruction; override;
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
  end;
  TXMLAnschriftTypGrossempfaengerList = class(TXMLNodeCollection, IXMLAnschriftTypGrossempfaengerList)
  protected
    function Add: IXMLAnschriftTypGrossempfaenger;
    function Insert(const Index: Integer): IXMLAnschriftTypGrossempfaenger;
    function Get_Item(Index: Integer): IXMLAnschriftTypGrossempfaenger;
  end;
  TXMLAnschrift2Typ = class(TXMLNode, IXMLAnschrift2Typ)
  protected
    procedure AfterConstruction; override;
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
  end;
  TXMLAnschrift2TypList = class(TXMLNodeCollection, IXMLAnschrift2TypList)
  protected
    function Add: IXMLAnschrift2Typ;
    function Insert(const Index: Integer): IXMLAnschrift2Typ;
    function Get_Item(Index: Integer): IXMLAnschrift2Typ;
  end;
  TXMLAnschrift3Typ = class(TXMLNode, IXMLAnschrift3Typ)
  protected
    procedure AfterConstruction; override;
    function Get_Hausadresse: IXMLHausadresseTyp;
    function Get_Postfach: IXMLPostfachTyp;
    function Get_Auslandsadresse: IXMLAuslandadresseTyp;
  end;
  TXMLAnschrift3TypList = class(TXMLNodeCollection, IXMLAnschrift3TypList)
  protected
    function Add: IXMLAnschrift3Typ;
    function Insert(const Index: Integer): IXMLAnschrift3Typ;
    function Get_Item(Index: Integer): IXMLAnschrift3Typ;
  end;
  TXMLAuslandadresseTyp = class(TXMLNode, IXMLAuslandadresseTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Land: TXSDLandEnum;
    procedure Set_Land(const Value: TXSDLandEnum);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    function Get_Strasse: TXSDStrasseTyp;
    procedure Set_Strasse(const Value: TXSDStrasseTyp);
  end;
  TXMLAuslandadresseTypList = class(TXMLNodeCollection, IXMLAuslandadresseTypList)
  protected
    function Add: IXMLAuslandadresseTyp;
    function Insert(const Index: Integer): IXMLAuslandadresseTyp;
    function Get_Item(Index: Integer): IXMLAuslandadresseTyp;
  end;
  TXMLHausadresseTyp = class(TXMLNode, IXMLHausadresseTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Land: TXSDLandEnum;
    procedure Set_Land(const Value: TXSDLandEnum);
    function Get_Zusatz: string;
    procedure Set_Zusatz(const Value: string);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
    function Get_Strasse: TXSDStrasseTyp;
    procedure Set_Strasse(const Value: TXSDStrasseTyp);
    function Get_Hausnr: string;
    procedure Set_Hausnr(const Value: string);
  end;
  TXMLHausadresseTypList = class(TXMLNodeCollection, IXMLHausadresseTypList)
  protected
    function Add: IXMLHausadresseTyp;
    function Insert(const Index: Integer): IXMLHausadresseTyp;
    function Get_Item(Index: Integer): IXMLHausadresseTyp;
  end;
  TXMLPostfachTyp = class(TXMLNode, IXMLPostfachTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Postfachnr: TXSDPlzTyp;
    procedure Set_Postfachnr(const Value: TXSDPlzTyp);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
  end;
  TXMLPostfachTypList = class(TXMLNodeCollection, IXMLPostfachTypList)
  protected
    function Add: IXMLPostfachTyp;
    function Insert(const Index: Integer): IXMLPostfachTyp;
    function Get_Item(Index: Integer): IXMLPostfachTyp;
  end;
  TXMLPackstationTyp = class(TXMLNode, IXMLPackstationTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Postnr: TXSDPlzTyp;
    procedure Set_Postnr(const Value: TXSDPlzTyp);
    function Get_Packstationnr: TXSDPlzTyp;
    procedure Set_Packstationnr(const Value: TXSDPlzTyp);
    function Get_Plz: TXSDPlzTyp;
    procedure Set_Plz(const Value: TXSDPlzTyp);
    function Get_Ort: TXSDOrtTyp;
    procedure Set_Ort(const Value: TXSDOrtTyp);
  end;
  TXMLPackstationTypList = class(TXMLNodeCollection, IXMLPackstationTypList)
  protected
    function Add: IXMLPackstationTyp;
    function Insert(const Index: Integer): IXMLPackstationTyp;
    function Get_Item(Index: Integer): IXMLPackstationTyp;
  end;
  TXMLBehandelterTyp = class(TXMLNode, IXMLBehandelterTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anrede: TXSDString140Typ;
    procedure Set_Anrede(const Value: TXSDString140Typ);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
  end;
  TXMLBehandelterTypList = class(TXMLNodeCollection, IXMLBehandelterTypList)
  protected
    function Add: IXMLBehandelterTyp;
    function Insert(const Index: Integer): IXMLBehandelterTyp;
    function Get_Item(Index: Integer): IXMLBehandelterTyp;
  end;
  TXMLEmpfaengerPersonTyp = class(TXMLNode, IXMLEmpfaengerPersonTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
  end;
  TXMLEmpfaengerPersonTypList = class(TXMLNodeCollection, IXMLEmpfaengerPersonTypList)
  protected
    function Add: IXMLEmpfaengerPersonTyp;
    function Insert(const Index: Integer): IXMLEmpfaengerPersonTyp;
    function Get_Item(Index: Integer): IXMLEmpfaengerPersonTyp;
  end;
  TXMLKontaktTyp = class(TXMLNode, IXMLKontaktTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Typ: TXSDKontakttypEnum;
    procedure Set_Typ(const Value: TXSDKontakttypEnum);
    function Get_Art: TXSDKontaktartEnum;
    procedure Set_Art(const Value: TXSDKontaktartEnum);
  end;
  TXMLKontaktTypList = class(TXMLNodeCollection, IXMLKontaktTypList)
  protected
    function Add: IXMLKontaktTyp;
    function Insert(const Index: Integer): IXMLKontaktTyp;
    function Get_Item(Index: Integer): IXMLKontaktTyp;
  end;
  TXMLLeistungserbringerTyp = class(TXMLNode, IXMLLeistungserbringerTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Fachbereich: IXMLFachbereichTypList;
    function Get_Lanr: IXMLNodeCollection;
    function Get_Betriebsstaette: IXMLBehandlungsortTyp;
    function Get_Kzvnr: string;
    procedure Set_Kzvnr(const Value: string);
    function Get_Ustidnr: TXSDUstidnrTyp;
    procedure Set_Ustidnr(const Value: TXSDUstidnrTyp);
    function Get_Hba: string;
    procedure Set_Hba(const Value: string);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
  end;
  TXMLLeistungserbringerTypList = class(TXMLNodeCollection, IXMLLeistungserbringerTypList)
  protected
    function Add: IXMLLeistungserbringerTyp;
    function Insert(const Index: Integer): IXMLLeistungserbringerTyp;
    function Get_Item(Index: Integer): IXMLLeistungserbringerTyp;
  end;
  TXMLLEPersonTyp = class(TXMLNode, IXMLLEPersonTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
  end;
  TXMLLEPersonTypList = class(TXMLNodeCollection, IXMLLEPersonTypList)
  protected
    function Add: IXMLLEPersonTyp;
    function Insert(const Index: Integer): IXMLLEPersonTyp;
    function Get_Item(Index: Integer): IXMLLEPersonTyp;
  end;
  TXMLOrganisationTyp = class(TXMLNode, IXMLOrganisationTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Namezusatz: string;
    procedure Set_Namezusatz(const Value: string);
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
  end;
  TXMLOrganisationTypList = class(TXMLNodeCollection, IXMLOrganisationTypList)
  protected
    function Add: IXMLOrganisationTyp;
    function Insert(const Index: Integer): IXMLOrganisationTyp;
    function Get_Item(Index: Integer): IXMLOrganisationTyp;
  end;
  TXMLPersonTyp = class(TXMLNode, IXMLPersonTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anrede: TXSDString140Typ;
    procedure Set_Anrede(const Value: TXSDString140Typ);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
  end;
  TXMLPersonTypList = class(TXMLNodeCollection, IXMLPersonTypList)
  protected
    function Add: IXMLPersonTyp;
    function Insert(const Index: Integer): IXMLPersonTyp;
    function Get_Item(Index: Integer): IXMLPersonTyp;
  end;
  TXMLRechnungserstellerTyp = class(TXMLNode, IXMLRechnungserstellerTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Namezusatz: IXMLNodeCollection;
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Ustidnr: TXSDUstidnrTyp;
    procedure Set_Ustidnr(const Value: TXSDUstidnrTyp);
    function Get_Glaeubigerid: TXSDString140Typ;
    procedure Set_Glaeubigerid(const Value: TXSDString140Typ);
  end;
  TXMLRechnungserstellerTypList = class(TXMLNodeCollection, IXMLRechnungserstellerTypList)
  protected
    function Add: IXMLRechnungserstellerTyp;
    function Insert(const Index: Integer): IXMLRechnungserstellerTyp;
    function Get_Item(Index: Integer): IXMLRechnungserstellerTyp;
  end;
  TXMLRechnungsempfaengerTyp = class(TXMLNode, IXMLRechnungsempfaengerTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Person: IXMLRechnungsempfaengerTypPerson;
    function Get_Organisation: IXMLOrganisationTyp;
  end;
  TXMLRechnungsempfaengerTypList = class(TXMLNodeCollection, IXMLRechnungsempfaengerTypList)
  protected
    function Add: IXMLRechnungsempfaengerTyp;
    function Insert(const Index: Integer): IXMLRechnungsempfaengerTyp;
    function Get_Item(Index: Integer): IXMLRechnungsempfaengerTyp;
  end;
  TXMLRechnungsempfaengerTypPerson = class(TXMLNode, IXMLRechnungsempfaengerTypPerson)
  protected
    procedure AfterConstruction; override;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLRechnungsempfaengerTypPersonList = class(TXMLNodeCollection, IXMLRechnungsempfaengerTypPersonList)
  protected
    function Add: IXMLRechnungsempfaengerTypPerson;
    function Insert(const Index: Integer): IXMLRechnungsempfaengerTypPerson;
    function Get_Item(Index: Integer): IXMLRechnungsempfaengerTypPerson;
  end;
  TXMLUeberweiserTyp = class(TXMLNode, IXMLUeberweiserTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
  end;
  TXMLUeberweiserTypList = class(TXMLNodeCollection, IXMLUeberweiserTypList)
  protected
    function Add: IXMLUeberweiserTyp;
    function Insert(const Index: Integer): IXMLUeberweiserTyp;
    function Get_Item(Index: Integer): IXMLUeberweiserTyp;
  end;
  TXMLVersicherterTyp = class(TXMLNode, IXMLVersicherterTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anrede: string;
    procedure Set_Anrede(const Value: string);
    function Get_Titel: TXSDString140Typ;
    procedure Set_Titel(const Value: TXSDString140Typ);
    function Get_Vorname: TXSDString140Typ;
    procedure Set_Vorname(const Value: TXSDString140Typ);
    function Get_Name: TXSDString140Typ;
    procedure Set_Name(const Value: TXSDString140Typ);
    function Get_Namezusatz: TXSDString140Typ;
    procedure Set_Namezusatz(const Value: TXSDString140Typ);
    function Get_Gebname: TXSDString140Typ;
    procedure Set_Gebname(const Value: TXSDString140Typ);
    function Get_Gebdatum: string;
    procedure Set_Gebdatum(const Value: string);
    function Get_Geschlecht: TXSDGeschlechtEnum;
    procedure Set_Geschlecht(const Value: TXSDGeschlechtEnum);
    function Get_Staat: TXSDLandEnum;
    procedure Set_Staat(const Value: TXSDLandEnum);
  end;
  TXMLVersicherterTypList = class(TXMLNodeCollection, IXMLVersicherterTypList)
  protected
    function Add: IXMLVersicherterTyp;
    function Insert(const Index: Integer): IXMLVersicherterTyp;
    function Get_Item(Index: Integer): IXMLVersicherterTyp;
  end;
  TXMLBemaTyp = class(TXMLNode, IXMLBemaTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBemaTypUeberweiser;
    function Get_Behandelter: IXMLBemaTypBehandelter;
    function Get_Versicherter: IXMLBemaTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Kvkartendaten: IXMLKVKartendatenTyp;
    function Get_Positionen: IXMLBemaTypPositionen;
    function Get_Summenblock: IXMLSummenblockBemaTyp;
  end;
  TXMLBemaTypList = class(TXMLNodeCollection, IXMLBemaTypList)
  protected
    function Add: IXMLBemaTyp;
    function Insert(const Index: Integer): IXMLBemaTyp;
    function Get_Item(Index: Integer): IXMLBemaTyp;
  end;
  TXMLBemaTypUeberweiser = class(TXMLNode, IXMLBemaTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLBemaTypUeberweiserList = class(TXMLNodeCollection, IXMLBemaTypUeberweiserList)
  protected
    function Add: IXMLBemaTypUeberweiser;
    function Insert(const Index: Integer): IXMLBemaTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBemaTypUeberweiser;
  end;
  TXMLBemaTypBehandelter = class(TXMLNode, IXMLBemaTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLBemaTypBehandelterList = class(TXMLNodeCollection, IXMLBemaTypBehandelterList)
  protected
    function Add: IXMLBemaTypBehandelter;
    function Insert(const Index: Integer): IXMLBemaTypBehandelter;
    function Get_Item(Index: Integer): IXMLBemaTypBehandelter;
  end;
  TXMLBemaTypVersicherter = class(TXMLNode, IXMLBemaTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLBemaTypVersicherterList = class(TXMLNodeCollection, IXMLBemaTypVersicherterList)
  protected
    function Add: IXMLBemaTypVersicherter;
    function Insert(const Index: Integer): IXMLBemaTypVersicherter;
    function Get_Item(Index: Integer): IXMLBemaTypVersicherter;
  end;
  TXMLBemaTypPositionen = class(TXMLNode, IXMLBemaTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLBemaTypPositionenList = class(TXMLNodeCollection, IXMLBemaTypPositionenList)
  protected
    function Add: IXMLBemaTypPositionen;
    function Insert(const Index: Integer): IXMLBemaTypPositionen;
    function Get_Item(Index: Integer): IXMLBemaTypPositionen;
  end;
  TXMLBmgNormPrivatTyp = class(TXMLNode, IXMLBmgNormPrivatTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBmgNormPrivatTypUeberweiser;
    function Get_Behandelter: IXMLBmgNormPrivatTypBehandelter;
    function Get_Versicherter: IXMLBmgNormPrivatTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Positionen: IXMLBmgNormPrivatTypPositionen;
    function Get_Summenblock: IXMLSummenblockBmgTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLBmgNormPrivatTypBelegList;
  end;
  TXMLBmgNormPrivatTypList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypList)
  protected
    function Add: IXMLBmgNormPrivatTyp;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTyp;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTyp;
  end;
  TXMLBmgNormPrivatTypUeberweiser = class(TXMLNode, IXMLBmgNormPrivatTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLBmgNormPrivatTypUeberweiserList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypUeberweiserList)
  protected
    function Add: IXMLBmgNormPrivatTypUeberweiser;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypUeberweiser;
  end;
  TXMLBmgNormPrivatTypBehandelter = class(TXMLNode, IXMLBmgNormPrivatTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLBmgNormPrivatTypBehandelterList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypBehandelterList)
  protected
    function Add: IXMLBmgNormPrivatTypBehandelter;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypBehandelter;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypBehandelter;
  end;
  TXMLBmgNormPrivatTypVersicherter = class(TXMLNode, IXMLBmgNormPrivatTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLBmgNormPrivatTypVersicherterList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypVersicherterList)
  protected
    function Add: IXMLBmgNormPrivatTypVersicherter;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypVersicherter;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypVersicherter;
  end;
  TXMLBmgNormPrivatTypPositionen = class(TXMLNode, IXMLBmgNormPrivatTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLBmgNormPrivatTypSonstigeshonorar;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLBmgNormPrivatTypPositionenList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypPositionenList)
  protected
    function Add: IXMLBmgNormPrivatTypPositionen;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypPositionen;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypPositionen;
  end;
  TXMLBmgNormPrivatTypSonstigeshonorar = class(TXMLNode, IXMLBmgNormPrivatTypSonstigeshonorar)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungskuerzel: string;
    procedure Set_Leistungskuerzel(const Value: string);
  end;
  TXMLBmgNormPrivatTypSonstigeshonorarList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypSonstigeshonorarList)
  protected
    function Add: IXMLBmgNormPrivatTypSonstigeshonorar;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar;
  end;
  TXMLBmgNormPrivatTypBeleg = class(TXMLNode, IXMLBmgNormPrivatTypBeleg)
  protected
    procedure AfterConstruction; override;
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
  end;
  TXMLBmgNormPrivatTypBelegList = class(TXMLNodeCollection, IXMLBmgNormPrivatTypBelegList)
  protected
    function Add: IXMLBmgNormPrivatTypBeleg;
    function Insert(const Index: Integer): IXMLBmgNormPrivatTypBeleg;
    function Get_Item(Index: Integer): IXMLBmgNormPrivatTypBeleg;
  end;
  TXMLBmgNormKFOPrivatTyp = class(TXMLNode, IXMLBmgNormKFOPrivatTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLBmgNormKFOPrivatTypUeberweiser;
    function Get_Behandelter: IXMLBmgNormKFOPrivatTypBehandelter;
    function Get_Versicherter: IXMLBmgNormKFOPrivatTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Kfoplandaten: IXMLKfoplandatenTyp;
    function Get_Positionen: IXMLBmgNormKFOPrivatTypPositionen;
    function Get_Summenblock: IXMLSummenblockBmgTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLBmgNormKFOPrivatTypBelegList;
  end;
  TXMLBmgNormKFOPrivatTypList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypList)
  protected
    function Add: IXMLBmgNormKFOPrivatTyp;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTyp;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTyp;
  end;
  TXMLBmgNormKFOPrivatTypUeberweiser = class(TXMLNode, IXMLBmgNormKFOPrivatTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLBmgNormKFOPrivatTypUeberweiserList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypUeberweiserList)
  protected
    function Add: IXMLBmgNormKFOPrivatTypUeberweiser;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser;
  end;
  TXMLBmgNormKFOPrivatTypBehandelter = class(TXMLNode, IXMLBmgNormKFOPrivatTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLBmgNormKFOPrivatTypBehandelterList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypBehandelterList)
  protected
    function Add: IXMLBmgNormKFOPrivatTypBehandelter;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter;
  end;
  TXMLBmgNormKFOPrivatTypVersicherter = class(TXMLNode, IXMLBmgNormKFOPrivatTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLBmgNormKFOPrivatTypVersicherterList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypVersicherterList)
  protected
    function Add: IXMLBmgNormKFOPrivatTypVersicherter;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter;
  end;
  TXMLBmgNormKFOPrivatTypPositionen = class(TXMLNode, IXMLBmgNormKFOPrivatTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLBmgNormKFOPrivatTypPositionenList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypPositionenList)
  protected
    function Add: IXMLBmgNormKFOPrivatTypPositionen;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypPositionen;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypPositionen;
  end;
  TXMLBmgNormKFOPrivatTypBeleg = class(TXMLNode, IXMLBmgNormKFOPrivatTypBeleg)
  protected
    procedure AfterConstruction; override;
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
  end;
  TXMLBmgNormKFOPrivatTypBelegList = class(TXMLNodeCollection, IXMLBmgNormKFOPrivatTypBelegList)
  protected
    function Add: IXMLBmgNormKFOPrivatTypBeleg;
    function Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBeleg;
    function Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBeleg;
  end;
  TXMLEigenanteilsrechnungTyp = class(TXMLNode, IXMLEigenanteilsrechnungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLEigenanteilsrechnungTypUeberweiser;
    function Get_Behandelter: IXMLEigenanteilsrechnungTypBehandelter;
    function Get_Versicherter: IXMLEigenanteilsrechnungTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Positionen: IXMLEigenanteilsrechnungTypPositionen;
    function Get_Summenblock: IXMLSummenblockEigenanteilTyp;
    function Get_Begruendung: IXMLBegruendungTypList;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLEigenanteilsrechnungTypBelegList;
  end;
  TXMLEigenanteilsrechnungTypList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypList)
  protected
    function Add: IXMLEigenanteilsrechnungTyp;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTyp;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTyp;
  end;
  TXMLEigenanteilsrechnungTypUeberweiser = class(TXMLNode, IXMLEigenanteilsrechnungTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLEigenanteilsrechnungTypUeberweiserList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypUeberweiserList)
  protected
    function Add: IXMLEigenanteilsrechnungTypUeberweiser;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser;
  end;
  TXMLEigenanteilsrechnungTypBehandelter = class(TXMLNode, IXMLEigenanteilsrechnungTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLEigenanteilsrechnungTypBehandelterList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypBehandelterList)
  protected
    function Add: IXMLEigenanteilsrechnungTypBehandelter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBehandelter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBehandelter;
  end;
  TXMLEigenanteilsrechnungTypVersicherter = class(TXMLNode, IXMLEigenanteilsrechnungTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLEigenanteilsrechnungTypVersicherterList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypVersicherterList)
  protected
    function Add: IXMLEigenanteilsrechnungTypVersicherter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypVersicherter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypVersicherter;
  end;
  TXMLEigenanteilsrechnungTypPositionen = class(TXMLNode, IXMLEigenanteilsrechnungTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLEigenanteilsrechnungTypPositionenList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypPositionenList)
  protected
    function Add: IXMLEigenanteilsrechnungTypPositionen;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypPositionen;
  end;
  TXMLEigenanteilsrechnungTypBeleg = class(TXMLNode, IXMLEigenanteilsrechnungTypBeleg)
  protected
    procedure AfterConstruction; override;
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
  end;
  TXMLEigenanteilsrechnungTypBelegList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungTypBelegList)
  protected
    function Add: IXMLEigenanteilsrechnungTypBeleg;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBeleg;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBeleg;
  end;
  TXMLEigenanteilsrechnungKFOTyp = class(TXMLNode, IXMLEigenanteilsrechnungKFOTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Get_Behandelter: IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Get_Versicherter: IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Kfokopfdaten: IXMLKVKartendatenTyp;
    function Get_Kfoplandaten: IXMLKfoplandatenTyp;
    function Get_Positionen: IXMLEigenanteilsrechnungKFOTypPositionen;
    function Get_Summenblock: IXMLSummenblockEigenanteilKFOTyp;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Beleg: IXMLEigenanteilsrechnungKFOTypBelegList;
  end;
  TXMLEigenanteilsrechnungKFOTypList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTyp;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTyp;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTyp;
  end;
  TXMLEigenanteilsrechnungKFOTypUeberweiser = class(TXMLNode, IXMLEigenanteilsrechnungKFOTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLEigenanteilsrechnungKFOTypUeberweiserList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypUeberweiserList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser;
  end;
  TXMLEigenanteilsrechnungKFOTypBehandelter = class(TXMLNode, IXMLEigenanteilsrechnungKFOTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLEigenanteilsrechnungKFOTypBehandelterList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypBehandelterList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter;
  end;
  TXMLEigenanteilsrechnungKFOTypVersicherter = class(TXMLNode, IXMLEigenanteilsrechnungKFOTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLEigenanteilsrechnungKFOTypVersicherterList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypVersicherterList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter;
  end;
  TXMLEigenanteilsrechnungKFOTypPositionen = class(TXMLNode, IXMLEigenanteilsrechnungKFOTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Bema: IXMLBemaZifferTyp;
    function Get_Bemakfo: IXMLBemaKFOZifferTyp;
    function Get_Eigenlaborkfo: IXMLEigenlaborKFOZifferTyp;
    function Get_Bemakfozwsumme: IXMLBemaKFOZwSummeTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLEigenanteilsrechnungKFOTypPositionenList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypPositionenList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTypPositionen;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen;
  end;
  TXMLEigenanteilsrechnungKFOTypBeleg = class(TXMLNode, IXMLEigenanteilsrechnungKFOTypBeleg)
  protected
    procedure AfterConstruction; override;
    function Get_Eigenlabor: IXMLEigenlaborTyp;
    function Get_Fremdlabor: IXMLFremdlaborTyp;
    function Get_Material: IXMLMaterialTyp;
    function Get_Materialpass: IXMLMaterialpassTyp;
  end;
  TXMLEigenanteilsrechnungKFOTypBelegList = class(TXMLNodeCollection, IXMLEigenanteilsrechnungKFOTypBelegList)
  protected
    function Add: IXMLEigenanteilsrechnungKFOTypBeleg;
    function Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg;
    function Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg;
  end;
  TXMLHumanmedizinTyp = class(TXMLNode, IXMLHumanmedizinTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Ueberweiser: IXMLHumanmedizinTypUeberweiser;
    function Get_Behandelter: IXMLHumanmedizinTypBehandelter;
    function Get_Versicherter: IXMLHumanmedizinTypVersicherter;
    function Get_Zeitraum: IXMLZeitraumTyp;
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Behandlungsart: TXSDBehandlungsartEnum;
    procedure Set_Behandlungsart(const Value: TXSDBehandlungsartEnum);
    function Get_Vertragsart: TXSDVertragsartTyp;
    procedure Set_Vertragsart(const Value: TXSDVertragsartTyp);
    function Get_Beschreibung: string;
    procedure Set_Beschreibung(const Value: string);
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Aktenzeichen: string;
    procedure Set_Aktenzeichen(const Value: string);
    function Get_Unfalldaten: IXMLUnfalldatenTyp;
    function Get_Diagnose: IXMLDiagnoseTypList;
    function Get_Klasse: TXSDUnterkunftstationaerEnum;
    procedure Set_Klasse(const Value: TXSDUnterkunftstationaerEnum);
    function Get_Positionen: IXMLHumanmedizinTypPositionen;
    function Get_Anhangid: IXMLAnhangidTypList;
    function Get_Rechnungssondertyp: TXSDRechnungssondertypEnum;
    procedure Set_Rechnungssondertyp(const Value: TXSDRechnungssondertypEnum);
  end;
  TXMLHumanmedizinTypList = class(TXMLNodeCollection, IXMLHumanmedizinTypList)
  protected
    function Add: IXMLHumanmedizinTyp;
    function Insert(const Index: Integer): IXMLHumanmedizinTyp;
    function Get_Item(Index: Integer): IXMLHumanmedizinTyp;
  end;
  TXMLHumanmedizinTypUeberweiser = class(TXMLNode, IXMLHumanmedizinTypUeberweiser)
  protected
    procedure AfterConstruction; override;
    function Get_Lanr: TXSDLanrTyp;
    procedure Set_Lanr(const Value: TXSDLanrTyp);
  end;
  TXMLHumanmedizinTypUeberweiserList = class(TXMLNodeCollection, IXMLHumanmedizinTypUeberweiserList)
  protected
    function Add: IXMLHumanmedizinTypUeberweiser;
    function Insert(const Index: Integer): IXMLHumanmedizinTypUeberweiser;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypUeberweiser;
  end;
  TXMLHumanmedizinTypBehandelter = class(TXMLNode, IXMLHumanmedizinTypBehandelter)
  protected
    procedure AfterConstruction; override;
    function Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum;
    procedure Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum);
    function Get_Kontakt: IXMLKontaktTypList;
    function Get_Aisid: TXSDIdTyp;
    procedure Set_Aisid(const Value: TXSDIdTyp);
    function Get_Idbundesweit: TXSDIdTyp;
    procedure Set_Idbundesweit(const Value: TXSDIdTyp);
  end;
  TXMLHumanmedizinTypBehandelterList = class(TXMLNodeCollection, IXMLHumanmedizinTypBehandelterList)
  protected
    function Add: IXMLHumanmedizinTypBehandelter;
    function Insert(const Index: Integer): IXMLHumanmedizinTypBehandelter;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypBehandelter;
  end;
  TXMLHumanmedizinTypVersicherter = class(TXMLNode, IXMLHumanmedizinTypVersicherter)
  protected
    procedure AfterConstruction; override;
    function Get_Versicherung: IXMLVersicherungTyp;
    function Get_Anschrift: IXMLAnschriftTyp;
    function Get_Kontakt: IXMLKontaktTypList;
  end;
  TXMLHumanmedizinTypVersicherterList = class(TXMLNodeCollection, IXMLHumanmedizinTypVersicherterList)
  protected
    function Add: IXMLHumanmedizinTypVersicherter;
    function Insert(const Index: Integer): IXMLHumanmedizinTypVersicherter;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypVersicherter;
  end;
  TXMLHumanmedizinTypPositionen = class(TXMLNode, IXMLHumanmedizinTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Goziffer: IXMLGOZifferTyp;
    function Get_Entschaedigung: IXMLEntschaedigungTyp;
    function Get_Auslagen: IXMLAuslagenTyp;
    function Get_Sonstigeshonorar: IXMLHonorarTyp;
    function Get_Gozziffer: IXMLGOZZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLHumanmedizinTypPositionenList = class(TXMLNodeCollection, IXMLHumanmedizinTypPositionenList)
  protected
    function Add: IXMLHumanmedizinTypPositionen;
    function Insert(const Index: Integer): IXMLHumanmedizinTypPositionen;
    function Get_Item(Index: Integer): IXMLHumanmedizinTypPositionen;
  end;
  TXMLEigenlaborTyp = class(TXMLNode, IXMLEigenlaborTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLEigenlaborTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Belegnr: TXSDString115Typ;
    procedure Set_Belegnr(const Value: TXSDString115Typ);
    function Get_Ustidnr: TXSDString115Typ;
    procedure Set_Ustidnr(const Value: TXSDString115Typ);
  end;
  TXMLEigenlaborTypList = class(TXMLNodeCollection, IXMLEigenlaborTypList)
  protected
    function Add: IXMLEigenlaborTyp;
    function Insert(const Index: Integer): IXMLEigenlaborTyp;
    function Get_Item(Index: Integer): IXMLEigenlaborTyp;
  end;
  TXMLEigenlaborTypPositionen = class(TXMLNode, IXMLEigenlaborTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Eigenlabor: IXMLLaborZifferTyp;
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLEigenlaborTypPositionenList = class(TXMLNodeCollection, IXMLEigenlaborTypPositionenList)
  protected
    function Add: IXMLEigenlaborTypPositionen;
    function Insert(const Index: Integer): IXMLEigenlaborTypPositionen;
    function Get_Item(Index: Integer): IXMLEigenlaborTypPositionen;
  end;
  TXMLFremdlaborTyp = class(TXMLNode, IXMLFremdlaborTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLFremdlaborTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisauftragsnr: string;
    procedure Set_Aisauftragsnr(const Value: string);
    function Get_Aisendbetrag: TXSDBetragTyp;
    procedure Set_Aisendbetrag(const Value: TXSDBetragTyp);
  end;
  TXMLFremdlaborTypList = class(TXMLNodeCollection, IXMLFremdlaborTypList)
  protected
    function Add: IXMLFremdlaborTyp;
    function Insert(const Index: Integer): IXMLFremdlaborTyp;
    function Get_Item(Index: Integer): IXMLFremdlaborTyp;
  end;
  TXMLFremdlaborTypPositionen = class(TXMLNode, IXMLFremdlaborTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Fremdlabor: IXMLLaborZifferTyp;
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLFremdlaborTypPositionenList = class(TXMLNodeCollection, IXMLFremdlaborTypPositionenList)
  protected
    function Add: IXMLFremdlaborTypPositionen;
    function Insert(const Index: Integer): IXMLFremdlaborTypPositionen;
    function Get_Item(Index: Integer): IXMLFremdlaborTypPositionen;
  end;
  TXMLMaterialTyp = class(TXMLNode, IXMLMaterialTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLMaterialTypPositionen;
    function Get_Summenblock: IXMLSummenblockBelegTyp;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Belegnr: TXSDString115Typ;
    procedure Set_Belegnr(const Value: TXSDString115Typ);
    function Get_Belegaktenzeichen: TXSDString140Typ;
    procedure Set_Belegaktenzeichen(const Value: TXSDString140Typ);
    function Get_Ustidnr: TXSDString115Typ;
    procedure Set_Ustidnr(const Value: TXSDString115Typ);
  end;
  TXMLMaterialTypList = class(TXMLNodeCollection, IXMLMaterialTypList)
  protected
    function Add: IXMLMaterialTyp;
    function Insert(const Index: Integer): IXMLMaterialTyp;
    function Get_Item(Index: Integer): IXMLMaterialTyp;
  end;
  TXMLMaterialTypPositionen = class(TXMLNode, IXMLMaterialTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Material: IXMLMaterialZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLMaterialTypPositionenList = class(TXMLNodeCollection, IXMLMaterialTypPositionenList)
  protected
    function Add: IXMLMaterialTypPositionen;
    function Insert(const Index: Integer): IXMLMaterialTypPositionen;
    function Get_Item(Index: Integer): IXMLMaterialTypPositionen;
  end;
  TXMLMaterialpassTyp = class(TXMLNode, IXMLMaterialpassTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anfangstext: TXSDTextTyp;
    procedure Set_Anfangstext(const Value: TXSDTextTyp);
    function Get_Endetext: TXSDTextTyp;
    procedure Set_Endetext(const Value: TXSDTextTyp);
    function Get_Positionen: IXMLMaterialpassTypPositionen;
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Belegdatum: string;
    procedure Set_Belegdatum(const Value: string);
    function Get_Aisrechnungsnr: string;
    procedure Set_Aisrechnungsnr(const Value: string);
    function Get_Aisaktenzeichen: string;
    procedure Set_Aisaktenzeichen(const Value: string);
  end;
  TXMLMaterialpassTypList = class(TXMLNodeCollection, IXMLMaterialpassTypList)
  protected
    function Add: IXMLMaterialpassTyp;
    function Insert(const Index: Integer): IXMLMaterialpassTyp;
    function Get_Item(Index: Integer): IXMLMaterialpassTyp;
  end;
  TXMLMaterialpassTypPositionen = class(TXMLNode, IXMLMaterialpassTypPositionen)
  protected
    procedure AfterConstruction; override;
    function Get_Materialpass: IXMLMaterialpassZifferTyp;
    function Get_Text: IXMLTextzeileTyp;
    function Get_Posanzahl: Integer;
    procedure Set_Posanzahl(const Value: Integer);
  end;
  TXMLMaterialpassTypPositionenList = class(TXMLNodeCollection, IXMLMaterialpassTypPositionenList)
  protected
    function Add: IXMLMaterialpassTypPositionen;
    function Insert(const Index: Integer): IXMLMaterialpassTypPositionen;
    function Get_Item(Index: Integer): IXMLMaterialpassTypPositionen;
  end;
  TXMLSummenblockBelegTyp = class(TXMLNode, IXMLSummenblockBelegTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Belegrechnungsbetrag: TXSDBetragTyp;
    procedure Set_Belegrechnungsbetrag(const Value: TXSDBetragTyp);
  end;
  TXMLSummenblockBelegTypList = class(TXMLNodeCollection, IXMLSummenblockBelegTypList)
  protected
    function Add: IXMLSummenblockBelegTyp;
    function Insert(const Index: Integer): IXMLSummenblockBelegTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBelegTyp;
  end;
  TXMLSummenblockBelegTypBelegsumme = class(TXMLNode, IXMLSummenblockBelegTypBelegsumme)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Text: TXSDString140Typ;
    procedure Set_Text(const Value: TXSDString140Typ);
  end;
  TXMLSummenblockBelegTypBelegsummeList = class(TXMLNodeCollection, IXMLSummenblockBelegTypBelegsummeList)
  protected
    function Add: IXMLSummenblockBelegTypBelegsumme;
    function Insert(const Index: Integer): IXMLSummenblockBelegTypBelegsumme;
    function Get_Item(Index: Integer): IXMLSummenblockBelegTypBelegsumme;
  end;
  TXMLBegruendungTyp = class(TXMLNode, IXMLBegruendungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
  end;
  TXMLBegruendungTypList = class(TXMLNodeCollection, IXMLBegruendungTypList)
  protected
    function Add: IXMLBegruendungTyp;
    function Insert(const Index: Integer): IXMLBegruendungTyp;
    function Get_Item(Index: Integer): IXMLBegruendungTyp;
  end;
  TXMLBehandlungsortTyp = class(TXMLNode, IXMLBehandlungsortTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Bsnr: string;
    procedure Set_Bsnr(const Value: string);
    function Get_Nbsnr: string;
    procedure Set_Nbsnr(const Value: string);
  end;
  TXMLBehandlungsortTypList = class(TXMLNodeCollection, IXMLBehandlungsortTypList)
  protected
    function Add: IXMLBehandlungsortTyp;
    function Insert(const Index: Integer): IXMLBehandlungsortTyp;
    function Get_Item(Index: Integer): IXMLBehandlungsortTyp;
  end;
  TXMLBeteiligungTyp = class(TXMLNode, IXMLBeteiligungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Beteiligter: string;
    procedure Set_Beteiligter(const Value: string);
  end;
  TXMLBeteiligungTypList = class(TXMLNodeCollection, IXMLBeteiligungTypList)
  protected
    function Add: IXMLBeteiligungTyp;
    function Insert(const Index: Integer): IXMLBeteiligungTyp;
    function Get_Item(Index: Integer): IXMLBeteiligungTyp;
  end;
  TXMLDiagnoseTyp = class(TXMLNode, IXMLDiagnoseTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Text: string;
    procedure Set_Text(const Value: string);
    function Get_Code: IXMLDiagnosecodeTyp;
    function Get_Typ: TXSDDiagnosetypEnum;
    procedure Set_Typ(const Value: TXSDDiagnosetypEnum);
    function Get_Art: TXSDDiagnoseartEnum;
    procedure Set_Art(const Value: TXSDDiagnoseartEnum);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Sicherheit: TXSDDiagnosesicherheitEnum;
    procedure Set_Sicherheit(const Value: TXSDDiagnosesicherheitEnum);
    function Get_Lokalisation: TXSDLokalisationEnum;
    procedure Set_Lokalisation(const Value: TXSDLokalisationEnum);
  end;
  TXMLDiagnoseTypList = class(TXMLNodeCollection, IXMLDiagnoseTypList)
  protected
    function Add: IXMLDiagnoseTyp;
    function Insert(const Index: Integer): IXMLDiagnoseTyp;
    function Get_Item(Index: Integer): IXMLDiagnoseTyp;
  end;
  TXMLDiagnosecodeTyp = class(TXMLNode, IXMLDiagnosecodeTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_System: TXSDDiagnosesystemEnum;
    procedure Set_System(const Value: TXSDDiagnosesystemEnum);
  end;
  TXMLDiagnosecodeTypList = class(TXMLNodeCollection, IXMLDiagnosecodeTypList)
  protected
    function Add: IXMLDiagnosecodeTyp;
    function Insert(const Index: Integer): IXMLDiagnosecodeTyp;
    function Get_Item(Index: Integer): IXMLDiagnosecodeTyp;
  end;
  TXMLFachangabeTyp = class(TXMLNode, IXMLFachangabeTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: Integer;
    procedure Set_Value(const Value: Integer);
    function Get_Textname: string;
    procedure Set_Textname(const Value: string);
  end;
  TXMLFachangabeTypList = class(TXMLNodeCollection, IXMLFachangabeTypList)
  protected
    function Add: IXMLFachangabeTyp;
    function Insert(const Index: Integer): IXMLFachangabeTyp;
    function Get_Item(Index: Integer): IXMLFachangabeTyp;
  end;
  TXMLFachbereichTyp = class(TXMLNode, IXMLFachbereichTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Fachgebiet: IXMLFachbereichTypFachgebiet;
    function Get_Facharzt: IXMLFachbereichTypFacharztList;
  end;
  TXMLFachbereichTypList = class(TXMLNodeCollection, IXMLFachbereichTypList)
  protected
    function Add: IXMLFachbereichTyp;
    function Insert(const Index: Integer): IXMLFachbereichTyp;
    function Get_Item(Index: Integer): IXMLFachbereichTyp;
  end;
  TXMLFachbereichTypFachgebiet = class(TXMLNode, IXMLFachbereichTypFachgebiet)
  protected
    procedure AfterConstruction; override;
  end;
  TXMLFachbereichTypFachgebietList = class(TXMLNodeCollection, IXMLFachbereichTypFachgebietList)
  protected
    function Add: IXMLFachbereichTypFachgebiet;
    function Insert(const Index: Integer): IXMLFachbereichTypFachgebiet;
    function Get_Item(Index: Integer): IXMLFachbereichTypFachgebiet;
  end;
  TXMLFachbereichTypFacharzt = class(TXMLNode, IXMLFachbereichTypFacharzt)
  protected
    procedure AfterConstruction; override;
  end;
  TXMLFachbereichTypFacharztList = class(TXMLNodeCollection, IXMLFachbereichTypFacharztList)
  protected
    function Add: IXMLFachbereichTypFacharzt;
    function Insert(const Index: Integer): IXMLFachbereichTypFacharzt;
    function Get_Item(Index: Integer): IXMLFachbereichTypFacharzt;
  end;
  TXMLKontoTyp = class(TXMLNode, IXMLKontoTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Inhaber: string;
    procedure Set_Inhaber(const Value: string);
    function Get_Bank: string;
    procedure Set_Bank(const Value: string);
    function Get_Blz: string;
    procedure Set_Blz(const Value: string);
    function Get_Kontonr: string;
    procedure Set_Kontonr(const Value: string);
    function Get_Bic: string;
    procedure Set_Bic(const Value: string);
    function Get_Iban: string;
    procedure Set_Iban(const Value: string);
    function Get_Mandatsreferenz: TXSDString140Typ;
    procedure Set_Mandatsreferenz(const Value: TXSDString140Typ);
  end;
  TXMLKontoTypList = class(TXMLNodeCollection, IXMLKontoTypList)
  protected
    function Add: IXMLKontoTyp;
    function Insert(const Index: Integer): IXMLKontoTyp;
    function Get_Item(Index: Integer): IXMLKontoTyp;
  end;
  TXMLKVKartendatenTyp = class(TXMLNode, IXMLKVKartendatenTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Kassenname: string;
    procedure Set_Kassenname(const Value: string);
    function Get_Kassennr: string;
    procedure Set_Kassennr(const Value: string);
    function Get_Versichertennr: string;
    procedure Set_Versichertennr(const Value: string);
    function Get_Versichertenart: TXSDVersichertenartEnum;
    procedure Set_Versichertenart(const Value: TXSDVersichertenartEnum);
    function Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum;
    procedure Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum);
    function Get_Dmpteilnahme: TXSDDMPkennzeichenEnum;
    procedure Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum);
    function Get_Kzvnr: string;
    procedure Set_Kzvnr(const Value: string);
    function Get_Gueltigbis: string;
    procedure Set_Gueltigbis(const Value: string);
    function Get_Einlesedatum: string;
    procedure Set_Einlesedatum(const Value: string);
  end;
  TXMLKVKartendatenTypList = class(TXMLNodeCollection, IXMLKVKartendatenTypList)
  protected
    function Add: IXMLKVKartendatenTyp;
    function Insert(const Index: Integer): IXMLKVKartendatenTyp;
    function Get_Item(Index: Integer): IXMLKVKartendatenTyp;
  end;
  TXMLKfoplandatenTyp = class(TXMLNode, IXMLKfoplandatenTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungsquartal: string;
    procedure Set_Leistungsquartal(const Value: string);
    function Get_Leistungsjahr: string;
    procedure Set_Leistungsjahr(const Value: string);
    function Get_Leerquartal: Boolean;
    procedure Set_Leerquartal(const Value: Boolean);
    function Get_Abschlagsnr: TXSDString18Typ;
    procedure Set_Abschlagsnr(const Value: TXSDString18Typ);
    function Get_Planungsdatum: string;
    procedure Set_Planungsdatum(const Value: string);
    function Get_Verlaengerungsdatum: string;
    procedure Set_Verlaengerungsdatum(const Value: string);
    function Get_Behandlungsbeginn: string;
    procedure Set_Behandlungsbeginn(const Value: string);
    function Get_Behandlungsende: string;
    procedure Set_Behandlungsende(const Value: string);
  end;
  TXMLKfoplandatenTypList = class(TXMLNodeCollection, IXMLKfoplandatenTypList)
  protected
    function Add: IXMLKfoplandatenTyp;
    function Insert(const Index: Integer): IXMLKfoplandatenTyp;
    function Get_Item(Index: Integer): IXMLKfoplandatenTyp;
  end;
  TXMLNachlassTyp = class(TXMLNode, IXMLNachlassTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Betrag: TXSDBetragTyp;
    procedure Set_Betrag(const Value: TXSDBetragTyp);
    function Get_Prozent: TXSDProzentTyp;
    procedure Set_Prozent(const Value: TXSDProzentTyp);
  end;
  TXMLNachlassTypList = class(TXMLNodeCollection, IXMLNachlassTypList)
  protected
    function Add: IXMLNachlassTyp;
    function Insert(const Index: Integer): IXMLNachlassTyp;
    function Get_Item(Index: Integer): IXMLNachlassTyp;
  end;
  TXMLOPSTyp = class(TXMLNode, IXMLOPSTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Lokalisation: TXSDLokalisationEnum;
    procedure Set_Lokalisation(const Value: TXSDLokalisationEnum);
  end;
  TXMLOPSTypList = class(TXMLNodeCollection, IXMLOPSTypList)
  protected
    function Add: IXMLOPSTyp;
    function Insert(const Index: Integer): IXMLOPSTyp;
    function Get_Item(Index: Integer): IXMLOPSTyp;
  end;
  TXMLRatenzahlungTyp = class(TXMLNode, IXMLRatenzahlungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Vereinbarung: TXSDRatenvereinbarungEnum;
    procedure Set_Vereinbarung(const Value: TXSDRatenvereinbarungEnum);
    function Get_Ersterbetrag: TXSDBetragTyp;
    procedure Set_Ersterbetrag(const Value: TXSDBetragTyp);
    function Get_Startdatum: string;
    procedure Set_Startdatum(const Value: string);
  end;
  TXMLRatenzahlungTypList = class(TXMLNodeCollection, IXMLRatenzahlungTypList)
  protected
    function Add: IXMLRatenzahlungTyp;
    function Insert(const Index: Integer): IXMLRatenzahlungTyp;
    function Get_Item(Index: Integer): IXMLRatenzahlungTyp;
  end;
  TXMLSummenblockBemaTyp = class(TXMLNode, IXMLSummenblockBemaTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Summehonorarbema: IXMLBetragBezeichnungTyp;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
  end;
  TXMLSummenblockBemaTypList = class(TXMLNodeCollection, IXMLSummenblockBemaTypList)
  protected
    function Add: IXMLSummenblockBemaTyp;
    function Insert(const Index: Integer): IXMLSummenblockBemaTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBemaTyp;
  end;
  TXMLSummenblockBmgTyp = class(TXMLNode, IXMLSummenblockBmgTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Gozeigenlabor: TXSDBetragTyp;
    procedure Set_Gozeigenlabor(const Value: TXSDBetragTyp);
    function Get_Gozfremdlabor: TXSDBetragTyp;
    procedure Set_Gozfremdlabor(const Value: TXSDBetragTyp);
    function Get_Gozzwischensummehonorar: TXSDBetragTyp;
    procedure Set_Gozzwischensummehonorar(const Value: TXSDBetragTyp);
    function Get_Gozauslagen: TXSDBetragTyp;
    procedure Set_Gozauslagen(const Value: TXSDBetragTyp);
    function Get_Gozwegegeld: TXSDBetragTyp;
    procedure Set_Gozwegegeld(const Value: TXSDBetragTyp);
    function Get_Gozrechnungsbetrag: TXSDBetragTyp;
    procedure Set_Gozrechnungsbetrag(const Value: TXSDBetragTyp);
    function Get_Gozvorauszahlung: TXSDBetragTyp;
    procedure Set_Gozvorauszahlung(const Value: TXSDBetragTyp);
    function Get_Gozminderungsbetrag: TXSDBetragTyp;
    procedure Set_Gozminderungsbetrag(const Value: TXSDBetragTyp);
    function Get_Gozvorleistung: TXSDBetragTyp;
    procedure Set_Gozvorleistung(const Value: TXSDBetragTyp);
    function Get_Gozzahlbetrag: TXSDBetragTyp;
    procedure Set_Gozzahlbetrag(const Value: TXSDBetragTyp);
    function Get_Gozustvoll: TXSDBetragTyp;
    procedure Set_Gozustvoll(const Value: TXSDBetragTyp);
    function Get_Gozustgemindert: TXSDBetragTyp;
    procedure Set_Gozustgemindert(const Value: TXSDBetragTyp);
  end;
  TXMLSummenblockBmgTypList = class(TXMLNodeCollection, IXMLSummenblockBmgTypList)
  protected
    function Add: IXMLSummenblockBmgTyp;
    function Insert(const Index: Integer): IXMLSummenblockBmgTyp;
    function Get_Item(Index: Integer): IXMLSummenblockBmgTyp;
  end;
  TXMLSummenblockEigenanteilTyp = class(TXMLNode, IXMLSummenblockEigenanteilTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Summehonorarbema: IXMLBetragBezeichnungTypList;
    function Get_Summehonorargoz: IXMLBetragBezeichnungTypList;
    function Get_Summeeigenlabor: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabor: IXMLBetragBezeichnungTypList;
    function Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp;
    function Get_Summeeigenlabormehrkosten: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabormehrkosten: IXMLBetragBezeichnungTypList;
    function Get_Summeverbrauchsmaterialmehrkosten: IXMLBetragBezeichnungTyp;
    function Get_Summegesamt: IXMLBetragBezeichnungTyp;
    function Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summeeigenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
    function Get_Summeabzug: IXMLSummenblockEigenanteilTypSummeabzug;
    function Get_Summeauslagen: IXMLSummenblockEigenanteilTypSummeauslagen;
  end;
  TXMLSummenblockEigenanteilTypList = class(TXMLNodeCollection, IXMLSummenblockEigenanteilTypList)
  protected
    function Add: IXMLSummenblockEigenanteilTyp;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTyp;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTyp;
  end;
  TXMLSummenblockEigenanteilTypSummeabzug = class(TXMLNode, IXMLSummenblockEigenanteilTypSummeabzug)
  protected
    procedure AfterConstruction; override;
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
  end;
  TXMLSummenblockEigenanteilTypSummeabzugList = class(TXMLNodeCollection, IXMLSummenblockEigenanteilTypSummeabzugList)
  protected
    function Add: IXMLSummenblockEigenanteilTypSummeabzug;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug;
  end;
  TXMLSummenblockEigenanteilTypSummeauslagen = class(TXMLNode, IXMLSummenblockEigenanteilTypSummeauslagen)
  protected
    procedure AfterConstruction; override;
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
  end;
  TXMLSummenblockEigenanteilTypSummeauslagenList = class(TXMLNodeCollection, IXMLSummenblockEigenanteilTypSummeauslagenList)
  protected
    function Add: IXMLSummenblockEigenanteilTypSummeauslagen;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen;
  end;
  TXMLSummenblockEigenanteilKFOTyp = class(TXMLNode, IXMLSummenblockEigenanteilKFOTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Summehonorarbema: IXMLBetragBezeichnungTyp;
    function Get_Summeeigenlabor: IXMLBetragBezeichnungTyp;
    function Get_Summefremdlabor: IXMLBetragBezeichnungTyp;
    function Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp;
    function Get_Summeversichertenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp;
    function Get_Summemehrkosten: IXMLBetragBezeichnungTypList;
    function Get_Summezahlbetrag: IXMLBetragBezeichnungTyp;
  end;
  TXMLSummenblockEigenanteilKFOTypList = class(TXMLNodeCollection, IXMLSummenblockEigenanteilKFOTypList)
  protected
    function Add: IXMLSummenblockEigenanteilKFOTyp;
    function Insert(const Index: Integer): IXMLSummenblockEigenanteilKFOTyp;
    function Get_Item(Index: Integer): IXMLSummenblockEigenanteilKFOTyp;
  end;
  TXMLUnfallarbeitgeberTyp = class(TXMLNode, IXMLUnfallarbeitgeberTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Name: string;
    procedure Set_Name(const Value: string);
    function Get_Anschrift: IXMLAnschrift2Typ;
    function Get_Berufsgruppe: string;
    procedure Set_Berufsgruppe(const Value: string);
    function Get_Einstellungsdatum: string;
    procedure Set_Einstellungsdatum(const Value: string);
  end;
  TXMLUnfallarbeitgeberTypList = class(TXMLNodeCollection, IXMLUnfallarbeitgeberTypList)
  protected
    function Add: IXMLUnfallarbeitgeberTyp;
    function Insert(const Index: Integer): IXMLUnfallarbeitgeberTyp;
    function Get_Item(Index: Integer): IXMLUnfallarbeitgeberTyp;
  end;
  TXMLUnfalldatenTyp = class(TXMLNode, IXMLUnfalldatenTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Unfalltag: string;
    procedure Set_Unfalltag(const Value: string);
    function Get_Aktenzeichen: string;
    procedure Set_Aktenzeichen(const Value: string);
    function Get_Unfallhergang: string;
    procedure Set_Unfallhergang(const Value: string);
    function Get_Personalunfall: Boolean;
    procedure Set_Personalunfall(const Value: Boolean);
    function Get_Arbeitgeber: IXMLUnfallarbeitgeberTyp;
    function Get_Refarztbericht: IXMLUnfalldatenTypRefarztbericht;
  end;
  TXMLUnfalldatenTypList = class(TXMLNodeCollection, IXMLUnfalldatenTypList)
  protected
    function Add: IXMLUnfalldatenTyp;
    function Insert(const Index: Integer): IXMLUnfalldatenTyp;
    function Get_Item(Index: Integer): IXMLUnfalldatenTyp;
  end;
  TXMLUnfalldatenTypRefarztbericht = class(TXMLNode, IXMLUnfalldatenTypRefarztbericht)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Typ: string;
    procedure Set_Typ(const Value: string);
  end;
  TXMLUnfalldatenTypRefarztberichtList = class(TXMLNodeCollection, IXMLUnfalldatenTypRefarztberichtList)
  protected
    function Add: IXMLUnfalldatenTypRefarztbericht;
    function Insert(const Index: Integer): IXMLUnfalldatenTypRefarztbericht;
    function Get_Item(Index: Integer): IXMLUnfalldatenTypRefarztbericht;
  end;
  TXMLVersicherungTyp = class(TXMLNode, IXMLVersicherungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Kassenname: string;
    procedure Set_Kassenname(const Value: string);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
    function Get_Kvnr: string;
    procedure Set_Kvnr(const Value: string);
    function Get_Versichertenart: TXSDVersichertenartEnum;
    procedure Set_Versichertenart(const Value: TXSDVersichertenartEnum);
    function Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum;
    procedure Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum);
    function Get_Dmpteilnahme: TXSDDMPkennzeichenEnum;
    procedure Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum);
    function Get_Gueltigab: string;
    procedure Set_Gueltigab(const Value: string);
    function Get_Gueltigbis: string;
    procedure Set_Gueltigbis(const Value: string);
    function Get_Khkennzeichen: string;
    procedure Set_Khkennzeichen(const Value: string);
  end;
  TXMLVersicherungTypList = class(TXMLNodeCollection, IXMLVersicherungTypList)
  protected
    function Add: IXMLVersicherungTyp;
    function Insert(const Index: Integer): IXMLVersicherungTyp;
    function Get_Item(Index: Integer): IXMLVersicherungTyp;
  end;
  TXMLLeistungspositionTyp = class(TXMLNode, IXMLLeistungspositionTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
  end;
  TXMLLeistungspositionTypList = class(TXMLNodeCollection, IXMLLeistungspositionTypList)
  protected
    function Add: IXMLLeistungspositionTyp;
    function Insert(const Index: Integer): IXMLLeistungspositionTyp;
    function Get_Item(Index: Integer): IXMLLeistungspositionTyp;
  end;
  TXMLLeistungsposition2Typ = class(TXMLNode, IXMLLeistungsposition2Typ)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
  end;
  TXMLLeistungsposition2TypList = class(TXMLNodeCollection, IXMLLeistungsposition2TypList)
  protected
    function Add: IXMLLeistungsposition2Typ;
    function Insert(const Index: Integer): IXMLLeistungsposition2Typ;
    function Get_Item(Index: Integer): IXMLLeistungsposition2Typ;
  end;
  TXMLZifferTyp = class(TXMLNode, IXMLZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: Boolean;
    procedure Set_Analog(const Value: Boolean);
  end;
  TXMLZifferTypList = class(TXMLNodeCollection, IXMLZifferTypList)
  protected
    function Add: IXMLZifferTyp;
    function Insert(const Index: Integer): IXMLZifferTyp;
    function Get_Item(Index: Integer): IXMLZifferTyp;
  end;
  TXMLBemaZifferTyp = class(TXMLNode, IXMLBemaZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anteil: IXMLBemaZifferTypAnteil;
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
  end;
  TXMLBemaZifferTypList = class(TXMLNodeCollection, IXMLBemaZifferTypList)
  protected
    function Add: IXMLBemaZifferTyp;
    function Insert(const Index: Integer): IXMLBemaZifferTyp;
    function Get_Item(Index: Integer): IXMLBemaZifferTyp;
  end;
  TXMLBemaZifferTypAnteil = class(TXMLNode, IXMLBemaZifferTypAnteil)
  protected
    procedure AfterConstruction; override;
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
  end;
  TXMLBemaZifferTypAnteilList = class(TXMLNodeCollection, IXMLBemaZifferTypAnteilList)
  protected
    function Add: IXMLBemaZifferTypAnteil;
    function Insert(const Index: Integer): IXMLBemaZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLBemaZifferTypAnteil;
  end;
  TXMLBemaKFOZifferTyp = class(TXMLNode, IXMLBemaKFOZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anteil: IXMLBemaKFOZifferTypAnteil;
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Leistungsart: TXSDLeistungsartkfoEnum;
    procedure Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum);
    function Get_EdvNr: string;
    procedure Set_EdvNr(const Value: string);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Punktzahlgesamt: string;
    procedure Set_Punktzahlgesamt(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
  end;
  TXMLBemaKFOZifferTypList = class(TXMLNodeCollection, IXMLBemaKFOZifferTypList)
  protected
    function Add: IXMLBemaKFOZifferTyp;
    function Insert(const Index: Integer): IXMLBemaKFOZifferTyp;
    function Get_Item(Index: Integer): IXMLBemaKFOZifferTyp;
  end;
  TXMLBemaKFOZifferTypAnteil = class(TXMLNode, IXMLBemaKFOZifferTypAnteil)
  protected
    procedure AfterConstruction; override;
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
  end;
  TXMLBemaKFOZifferTypAnteilList = class(TXMLNodeCollection, IXMLBemaKFOZifferTypAnteilList)
  protected
    function Add: IXMLBemaKFOZifferTypAnteil;
    function Insert(const Index: Integer): IXMLBemaKFOZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLBemaKFOZifferTypAnteil;
  end;
  TXMLBemaKFOZwSummeTyp = class(TXMLNode, IXMLBemaKFOZwSummeTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Leistungsart: TXSDLeistungsartkfoEnum;
    procedure Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahlgesamt: string;
    procedure Set_Punktzahlgesamt(const Value: string);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
  end;
  TXMLBemaKFOZwSummeTypList = class(TXMLNodeCollection, IXMLBemaKFOZwSummeTypList)
  protected
    function Add: IXMLBemaKFOZwSummeTyp;
    function Insert(const Index: Integer): IXMLBemaKFOZwSummeTyp;
    function Get_Item(Index: Integer): IXMLBemaKFOZwSummeTyp;
  end;
  TXMLGOZifferTyp = class(TXMLNode, IXMLGOZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Anteil: IXMLGOZifferTypAnteil;
    function Get_Begruendung: TXSDTextTyp;
    procedure Set_Begruendung(const Value: TXSDTextTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Ambo: IXMLAmboTyp;
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: TXSDString18Typ;
    procedure Set_Analog(const Value: TXSDString18Typ);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
  end;
  TXMLGOZifferTypList = class(TXMLNodeCollection, IXMLGOZifferTypList)
  protected
    function Add: IXMLGOZifferTyp;
    function Insert(const Index: Integer): IXMLGOZifferTyp;
    function Get_Item(Index: Integer): IXMLGOZifferTyp;
  end;
  TXMLGOZifferTypAnteil = class(TXMLNode, IXMLGOZifferTypAnteil)
  protected
    procedure AfterConstruction; override;
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
  end;
  TXMLGOZifferTypAnteilList = class(TXMLNodeCollection, IXMLGOZifferTypAnteilList)
  protected
    function Add: IXMLGOZifferTypAnteil;
    function Insert(const Index: Integer): IXMLGOZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLGOZifferTypAnteil;
  end;
  TXMLGOZZifferTyp = class(TXMLNode, IXMLGOZZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anteil: IXMLGOZZifferTypAnteil;
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Zahnangabe: TXSDZahnangabeTyp;
    procedure Set_Zahnangabe(const Value: TXSDZahnangabeTyp);
    function Get_Punktwert: string;
    procedure Set_Punktwert(const Value: string);
    function Get_Punktzahl: string;
    procedure Set_Punktzahl(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Abzug: Boolean;
    procedure Set_Abzug(const Value: Boolean);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Analog: TXSDString18Typ;
    procedure Set_Analog(const Value: TXSDString18Typ);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
    function Get_Verlangensleistung: Boolean;
    procedure Set_Verlangensleistung(const Value: Boolean);
  end;
  TXMLGOZZifferTypList = class(TXMLNodeCollection, IXMLGOZZifferTypList)
  protected
    function Add: IXMLGOZZifferTyp;
    function Insert(const Index: Integer): IXMLGOZZifferTyp;
    function Get_Item(Index: Integer): IXMLGOZZifferTyp;
  end;
  TXMLGOZZifferTypAnteil = class(TXMLNode, IXMLGOZZifferTypAnteil)
  protected
    procedure AfterConstruction; override;
    function Get_Zaehler: Integer;
    procedure Set_Zaehler(const Value: Integer);
    function Get_Nenner: Integer;
    procedure Set_Nenner(const Value: Integer);
  end;
  TXMLGOZZifferTypAnteilList = class(TXMLNodeCollection, IXMLGOZZifferTypAnteilList)
  protected
    function Add: IXMLGOZZifferTypAnteil;
    function Insert(const Index: Integer): IXMLGOZZifferTypAnteil;
    function Get_Item(Index: Integer): IXMLGOZZifferTypAnteil;
  end;
  TXMLLaborZifferTyp = class(TXMLNode, IXMLLaborZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
  end;
  TXMLLaborZifferTypList = class(TXMLNodeCollection, IXMLLaborZifferTypList)
  protected
    function Add: IXMLLaborZifferTyp;
    function Insert(const Index: Integer): IXMLLaborZifferTyp;
    function Get_Item(Index: Integer): IXMLLaborZifferTyp;
  end;
  TXMLEigenlaborKFOZifferTyp = class(TXMLNode, IXMLEigenlaborKFOZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Einheit: string;
    procedure Set_Einheit(const Value: string);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Berechnung: TXSDBerechnungskennzeichenEnum;
    procedure Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
    function Get_Ziffer: TXSDString18Typ;
    procedure Set_Ziffer(const Value: TXSDString18Typ);
  end;
  TXMLEigenlaborKFOZifferTypList = class(TXMLNodeCollection, IXMLEigenlaborKFOZifferTypList)
  protected
    function Add: IXMLEigenlaborKFOZifferTyp;
    function Insert(const Index: Integer): IXMLEigenlaborKFOZifferTyp;
    function Get_Item(Index: Integer): IXMLEigenlaborKFOZifferTyp;
  end;
  TXMLMaterialZifferTyp = class(TXMLNode, IXMLMaterialZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Menge: Double;
    procedure Set_Menge(const Value: Double);
    function Get_Einheit: string;
    procedure Set_Einheit(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
  end;
  TXMLMaterialZifferTypList = class(TXMLNodeCollection, IXMLMaterialZifferTypList)
  protected
    function Add: IXMLMaterialZifferTyp;
    function Insert(const Index: Integer): IXMLMaterialZifferTyp;
    function Get_Item(Index: Integer): IXMLMaterialZifferTyp;
  end;
  TXMLMaterialpassZifferTyp = class(TXMLNode, IXMLMaterialpassZifferTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Bezeichnung: string;
    procedure Set_Bezeichnung(const Value: string);
    function Get_Hersteller: string;
    procedure Set_Hersteller(const Value: string);
    function Get_Seriennr: string;
    procedure Set_Seriennr(const Value: string);
    function Get_Chargennr: string;
    procedure Set_Chargennr(const Value: string);
    function Get_Bestandteile: string;
    procedure Set_Bestandteile(const Value: string);
    function Get_Erklaerung: string;
    procedure Set_Erklaerung(const Value: string);
  end;
  TXMLMaterialpassZifferTypList = class(TXMLNodeCollection, IXMLMaterialpassZifferTypList)
  protected
    function Add: IXMLMaterialpassZifferTyp;
    function Insert(const Index: Integer): IXMLMaterialpassZifferTyp;
    function Get_Item(Index: Integer): IXMLMaterialpassZifferTyp;
  end;
  TXMLAmboTyp = class(TXMLNode, IXMLAmboTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Ops: IXMLOPSTyp;
    function Get_Doppeluntersuchung: Boolean;
    procedure Set_Doppeluntersuchung(const Value: Boolean);
    function Get_Einzelverguetung: IXMLAmboTypEinzelverguetung;
    function Get_Zusatzebm: string;
    procedure Set_Zusatzebm(const Value: string);
  end;
  TXMLAmboTypList = class(TXMLNodeCollection, IXMLAmboTypList)
  protected
    function Add: IXMLAmboTyp;
    function Insert(const Index: Integer): IXMLAmboTyp;
    function Get_Item(Index: Integer): IXMLAmboTyp;
  end;
  TXMLAmboTypEinzelverguetung = class(TXMLNode, IXMLAmboTypEinzelverguetung)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kennzeichen: string;
    procedure Set_Kennzeichen(const Value: string);
  end;
  TXMLAmboTypEinzelverguetungList = class(TXMLNodeCollection, IXMLAmboTypEinzelverguetungList)
  protected
    function Add: IXMLAmboTypEinzelverguetung;
    function Insert(const Index: Integer): IXMLAmboTypEinzelverguetung;
    function Get_Item(Index: Integer): IXMLAmboTypEinzelverguetung;
  end;
  TXMLAuslagenTyp = class(TXMLNode, IXMLAuslagenTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Kennzeichen: TXSDPositionskennzeichenEnum;
    procedure Set_Kennzeichen(const Value: TXSDPositionskennzeichenEnum);
    function Get_Berechnung: string;
    procedure Set_Berechnung(const Value: string);
  end;
  TXMLAuslagenTypList = class(TXMLNodeCollection, IXMLAuslagenTypList)
  protected
    function Add: IXMLAuslagenTyp;
    function Insert(const Index: Integer): IXMLAuslagenTyp;
    function Get_Item(Index: Integer): IXMLAuslagenTyp;
  end;
  TXMLAuslagenpositionTyp = class(TXMLNode, IXMLAuslagenpositionTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Leistungserbringerid: TXSDIdTyp;
    procedure Set_Leistungserbringerid(const Value: TXSDIdTyp);
    function Get_Datum: string;
    procedure Set_Datum(const Value: string);
    function Get_Uhrzeit: string;
    procedure Set_Uhrzeit(const Value: string);
    function Get_Anzahl: string;
    procedure Set_Anzahl(const Value: string);
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Zusatztext: TXSDTextTyp;
    procedure Set_Zusatztext(const Value: TXSDTextTyp);
    function Get_Beteiligung: IXMLBeteiligungTypList;
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
  end;
  TXMLAuslagenpositionTypList = class(TXMLNodeCollection, IXMLAuslagenpositionTypList)
  protected
    function Add: IXMLAuslagenpositionTyp;
    function Insert(const Index: Integer): IXMLAuslagenpositionTyp;
    function Get_Item(Index: Integer): IXMLAuslagenpositionTyp;
  end;
  TXMLEntschaedigungTyp = class(TXMLNode, IXMLEntschaedigungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Anteil: IXMLEntschaedigungTypAnteil;
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Go: TXSDGebuehrenordnungEnum;
    procedure Set_Go(const Value: TXSDGebuehrenordnungEnum);
    function Get_Goversion: string;
    procedure Set_Goversion(const Value: string);
  end;
  TXMLEntschaedigungTypList = class(TXMLNodeCollection, IXMLEntschaedigungTypList)
  protected
    function Add: IXMLEntschaedigungTyp;
    function Insert(const Index: Integer): IXMLEntschaedigungTyp;
    function Get_Item(Index: Integer): IXMLEntschaedigungTyp;
  end;
  TXMLEntschaedigungTypAnteil = class(TXMLNode, IXMLEntschaedigungTypAnteil)
  protected
    procedure AfterConstruction; override;
    function Get_Teiler: Integer;
    procedure Set_Teiler(const Value: Integer);
  end;
  TXMLEntschaedigungTypAnteilList = class(TXMLNodeCollection, IXMLEntschaedigungTypAnteilList)
  protected
    function Add: IXMLEntschaedigungTypAnteil;
    function Insert(const Index: Integer): IXMLEntschaedigungTypAnteil;
    function Get_Item(Index: Integer): IXMLEntschaedigungTypAnteil;
  end;
  TXMLHonorarTyp = class(TXMLNode, IXMLHonorarTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Mwstsatz: TXSDProzentTyp;
    procedure Set_Mwstsatz(const Value: TXSDProzentTyp);
    function Get_Minderungssatz: TXSDMinderungssatzEnum;
    procedure Set_Minderungssatz(const Value: TXSDMinderungssatzEnum);
    function Get_Einzelbetrag: TXSDBetragTyp;
    procedure Set_Einzelbetrag(const Value: TXSDBetragTyp);
    function Get_Gesamtbetrag: TXSDBetragTyp;
    procedure Set_Gesamtbetrag(const Value: TXSDBetragTyp);
    function Get_Berechnung: string;
    procedure Set_Berechnung(const Value: string);
  end;
  TXMLHonorarTypList = class(TXMLNodeCollection, IXMLHonorarTypList)
  protected
    function Add: IXMLHonorarTyp;
    function Insert(const Index: Integer): IXMLHonorarTyp;
    function Get_Item(Index: Integer): IXMLHonorarTyp;
  end;
  TXMLReisekostenTyp = class(TXMLNode, IXMLReisekostenTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Wegstrecke: string;
    procedure Set_Wegstrecke(const Value: string);
    function Get_Uebernachtungskosten: TXSDBetragTyp;
    procedure Set_Uebernachtungskosten(const Value: TXSDBetragTyp);
    function Get_Abwesenheit: string;
    procedure Set_Abwesenheit(const Value: string);
  end;
  TXMLReisekostenTypList = class(TXMLNodeCollection, IXMLReisekostenTypList)
  protected
    function Add: IXMLReisekostenTyp;
    function Insert(const Index: Integer): IXMLReisekostenTyp;
    function Get_Item(Index: Integer): IXMLReisekostenTyp;
  end;
  TXMLWegegeldTyp = class(TXMLNode, IXMLWegegeldTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Radius: string;
    procedure Set_Radius(const Value: string);
    function Get_Tageszeit: string;
    procedure Set_Tageszeit(const Value: string);
  end;
  TXMLWegegeldTypList = class(TXMLNodeCollection, IXMLWegegeldTypList)
  protected
    function Add: IXMLWegegeldTyp;
    function Insert(const Index: Integer): IXMLWegegeldTyp;
    function Get_Item(Index: Integer): IXMLWegegeldTyp;
  end;
  TXMLTextzeileTyp = class(TXMLNode, IXMLTextzeileTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Text: TXSDTextTyp;
    procedure Set_Text(const Value: TXSDTextTyp);
    function Get_Id: TXSDIdTyp;
    procedure Set_Id(const Value: TXSDIdTyp);
    function Get_Idref: TXSDIdTyp;
    procedure Set_Idref(const Value: TXSDIdTyp);
    function Get_Positionsnr: Integer;
    procedure Set_Positionsnr(const Value: Integer);
  end;
  TXMLTextzeileTypList = class(TXMLNodeCollection, IXMLTextzeileTypList)
  protected
    function Add: IXMLTextzeileTyp;
    function Insert(const Index: Integer): IXMLTextzeileTyp;
    function Get_Item(Index: Integer): IXMLTextzeileTyp;
  end;
  TXMLBetragSatzTyp = class(TXMLNode, IXMLBetragSatzTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Satz: TXSDProzentTyp;
    procedure Set_Satz(const Value: TXSDProzentTyp);
  end;
  TXMLBetragSatzTypList = class(TXMLNodeCollection, IXMLBetragSatzTypList)
  protected
    function Add: IXMLBetragSatzTyp;
    function Insert(const Index: Integer): IXMLBetragSatzTyp;
    function Get_Item(Index: Integer): IXMLBetragSatzTyp;
  end;
  TXMLBetragBezeichnungTyp = class(TXMLNode, IXMLBetragBezeichnungTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Bezeichnung: TXSDString180Typ;
    procedure Set_Bezeichnung(const Value: TXSDString180Typ);
  end;
  TXMLBetragBezeichnungTypList = class(TXMLNodeCollection, IXMLBetragBezeichnungTypList)
  protected
    function Add: IXMLBetragBezeichnungTyp;
    function Insert(const Index: Integer): IXMLBetragBezeichnungTyp;
    function Get_Item(Index: Integer): IXMLBetragBezeichnungTyp;
  end;
  TXMLBetragBezeichnungSatzTyp = class(TXMLNode, IXMLBetragBezeichnungSatzTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Bezeichnung: TXSDString140Typ;
    procedure Set_Bezeichnung(const Value: TXSDString140Typ);
    function Get_Satz: TXSDProzentTyp;
    procedure Set_Satz(const Value: TXSDProzentTyp);
  end;
  TXMLBetragBezeichnungSatzTypList = class(TXMLNodeCollection, IXMLBetragBezeichnungSatzTypList)
  protected
    function Add: IXMLBetragBezeichnungSatzTyp;
    function Insert(const Index: Integer): IXMLBetragBezeichnungSatzTyp;
    function Get_Item(Index: Integer): IXMLBetragBezeichnungSatzTyp;
  end;
  TXMLDateilaengeTyp = class(TXMLNode, IXMLDateilaengeTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Laenge: string;
    procedure Set_Laenge(const Value: string);
    function Get_Pruefsumme: string;
    procedure Set_Pruefsumme(const Value: string);
  end;
  TXMLDateilaengeTypList = class(TXMLNodeCollection, IXMLDateilaengeTypList)
  protected
    function Add: IXMLDateilaengeTyp;
    function Insert(const Index: Integer): IXMLDateilaengeTyp;
    function Get_Item(Index: Integer): IXMLDateilaengeTyp;
  end;
  TXMLFehlerTyp = class(TXMLNode, IXMLFehlerTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Code: Integer;
    procedure Set_Code(const Value: Integer);
    function Get_Text: string;
    procedure Set_Text(const Value: string);
    function Get_Hinweis: string;
    procedure Set_Hinweis(const Value: string);
  end;
  TXMLFehlerTypList = class(TXMLNodeCollection, IXMLFehlerTypList)
  protected
    function Add: IXMLFehlerTyp;
    function Insert(const Index: Integer): IXMLFehlerTyp;
    function Get_Item(Index: Integer): IXMLFehlerTyp;
  end;
  TXMLTeilnehmerTyp = class(TXMLNode, IXMLTeilnehmerTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Logisch: IXMLTeilnehmerTypLogisch;
    function Get_Physikalisch: IXMLTeilnehmerTypPhysikalisch;
  end;
  TXMLTeilnehmerTypList = class(TXMLNodeCollection, IXMLTeilnehmerTypList)
  protected
    function Add: IXMLTeilnehmerTyp;
    function Insert(const Index: Integer): IXMLTeilnehmerTyp;
    function Get_Item(Index: Integer): IXMLTeilnehmerTyp;
  end;
  TXMLTeilnehmerTypLogisch = class(TXMLNode, IXMLTeilnehmerTypLogisch)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Rzid: TXSDPvsIdsEnum;
    procedure Set_Rzid(const Value: TXSDPvsIdsEnum);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
  end;
  TXMLTeilnehmerTypLogischList = class(TXMLNodeCollection, IXMLTeilnehmerTypLogischList)
  protected
    function Add: IXMLTeilnehmerTypLogisch;
    function Insert(const Index: Integer): IXMLTeilnehmerTypLogisch;
    function Get_Item(Index: Integer): IXMLTeilnehmerTypLogisch;
  end;
  TXMLTeilnehmerTypPhysikalisch = class(TXMLNode, IXMLTeilnehmerTypPhysikalisch)
  protected
    procedure AfterConstruction; override;
    function Get_Value: string;
    procedure Set_Value(const Value: string);
    function Get_Kundennr: TXSDPVSkundennrTyp;
    procedure Set_Kundennr(const Value: TXSDPVSkundennrTyp);
    function Get_Rzid: TXSDPvsIdsEnum;
    procedure Set_Rzid(const Value: TXSDPvsIdsEnum);
    function Get_Iknr: TXSDIKnrTyp;
    procedure Set_Iknr(const Value: TXSDIKnrTyp);
  end;
  TXMLTeilnehmerTypPhysikalischList = class(TXMLNodeCollection, IXMLTeilnehmerTypPhysikalischList)
  protected
    function Add: IXMLTeilnehmerTypPhysikalisch;
    function Insert(const Index: Integer): IXMLTeilnehmerTypPhysikalisch;
    function Get_Item(Index: Integer): IXMLTeilnehmerTypPhysikalisch;
  end;
  TXMLZeitraumTyp = class(TXMLNode, IXMLZeitraumTyp)
  protected
    procedure AfterConstruction; override;
    function Get_Startdatum: string;
    procedure Set_Startdatum(const Value: string);
    function Get_Endedatum: string;
    procedure Set_Endedatum(const Value: string);
    function Get_Anzahltage: string;
    procedure Set_Anzahltage(const Value: string);
  end;
  TXMLZeitraumTypList = class(TXMLNodeCollection, IXMLZeitraumTypList)
  protected
    function Add: IXMLZeitraumTyp;
    function Insert(const Index: Integer): IXMLZeitraumTyp;
    function Get_Item(Index: Integer): IXMLZeitraumTyp;
  end;
function GetRechnungen(Doc: IXMLDocument): IXMLRechnungListe;
function LoadRechnungen(const FileName: string): IXMLRechnungListe;
function NewRechnungen: IXMLRechnungListe;
implementation
uses
  Xml.xmldom, Xml.msxmldom;

function GetRechnungen(Doc: IXMLDocument): IXMLRechnungListe;
begin
  Result := Doc.GetDocBinding('rechnungen', IXMLRechnungListe, TargetNamespace) as IXMLRechnungListe;
end;
function LoadRechnungen(const FileName: string): IXMLRechnungListe;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('rechnungen', IXMLRechnungListe, TargetNamespace) as IXMLRechnungListe;
end;
function NewRechnungen: IXMLRechnungListe;
begin
  Result := NewXMLDocument.GetDocBinding('rechnungen', IXMLRechnungListe, TargetNamespace) as IXMLRechnungListe;
end;

procedure TXMLDokumenttypTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLDokumenttypTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLDokumenttypTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLDokumenttypTyp.Get_Format: TXSDDokumentformatEnum; begin if AttributeNodes.FindNode('format') <> nil then Result := VarToStr(AttributeNodes['format'].NodeValue) else Result := ''; end;
procedure TXMLDokumenttypTyp.Set_Format(const Value: TXSDDokumentformatEnum); begin SetAttribute('format', Value); end;
function TXMLDokumenttypTypList.Add: IXMLDokumenttypTyp; begin Result := AddItem(-1) as IXMLDokumenttypTyp; end;
function TXMLDokumenttypTypList.Insert(const Index: Integer): IXMLDokumenttypTyp; begin Result := AddItem(Index) as IXMLDokumenttypTyp; end;
function TXMLDokumenttypTypList.Get_Item(Index: Integer): IXMLDokumenttypTyp; begin Result := List[Index] as IXMLDokumenttypTyp; end;

procedure TXMLNachrichtentypTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLNachrichtentypTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLNachrichtentypTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLNachrichtentypTyp.Get_Version: string; begin if AttributeNodes.FindNode('version') <> nil then Result := VarToStr(AttributeNodes['version'].NodeValue) else Result := ''; end;
procedure TXMLNachrichtentypTyp.Set_Version(const Value: string); begin SetAttribute('version', Value); end;
function TXMLNachrichtentypTypList.Add: IXMLNachrichtentypTyp; begin Result := AddItem(-1) as IXMLNachrichtentypTyp; end;
function TXMLNachrichtentypTypList.Insert(const Index: Integer): IXMLNachrichtentypTyp; begin Result := AddItem(Index) as IXMLNachrichtentypTyp; end;
function TXMLNachrichtentypTypList.Get_Item(Index: Integer): IXMLNachrichtentypTyp; begin Result := List[Index] as IXMLNachrichtentypTyp; end;

procedure TXMLRechnungTyp.AfterConstruction;
begin
  RegisterChildNode('rechnungsempfaenger', TXMLRechnungsempfaengerTyp);
  RegisterChildNode('zahlung', TXMLRechnungTypZahlung);
  RegisterChildNode('rechnungsvorgaben', TXMLRechnungTypRechnungsvorgaben);
  RegisterChildNode('abrechnungsfall', TXMLRechnungTypAbrechnungsfall);
  ItemTag := 'abrechnungsfall';
  ItemInterface := IXMLRechnungTypAbrechnungsfall;
  inherited;
end;
function TXMLRechnungTyp.Get_Rechnungsempfaenger: IXMLRechnungsempfaengerTyp; begin Result := ChildNodes['rechnungsempfaenger'] as IXMLRechnungsempfaengerTyp; end;
function TXMLRechnungTyp.Get_Zahlung: IXMLRechnungTypZahlung; begin if ChildNodes.FindNode('zahlung') <> nil then Result := ChildNodes['zahlung'] as IXMLRechnungTypZahlung else Result := nil; end;
function TXMLRechnungTyp.Get_Rechnungsvorgaben: IXMLRechnungTypRechnungsvorgaben; begin if ChildNodes.FindNode('rechnungsvorgaben') <> nil then Result := ChildNodes['rechnungsvorgaben'] as IXMLRechnungTypRechnungsvorgaben else Result := nil; end;
function TXMLRechnungTyp.Get_Abrechnungsfall: IXMLRechnungTypAbrechnungsfallList; begin Result := ChildNodes['abrechnungsfall'] as IXMLRechnungTypAbrechnungsfallList; end;
function TXMLRechnungTyp.Get_Abrechnungsanweisung: TXSDTextTyp; begin if ChildNodes.FindNode('abrechnungsanweisung') <> nil then Result := VarToStr(ChildNodes['abrechnungsanweisung'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Abrechnungsanweisung(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('abrechnungsanweisung') = nil then AddChild('abrechnungsanweisung', TargetNamespace); ChildNodes['abrechnungsanweisung'].NodeValue := Value; end;
function TXMLRechnungTyp.Get_Anfangstext: TXSDTextTyp; begin if ChildNodes.FindNode('anfangstext') <> nil then Result := VarToStr(ChildNodes['anfangstext'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Anfangstext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('anfangstext') = nil then AddChild('anfangstext', TargetNamespace); ChildNodes['anfangstext'].NodeValue := Value; end;
function TXMLRechnungTyp.Get_Endetext: TXSDTextTyp; begin if ChildNodes.FindNode('endetext') <> nil then Result := VarToStr(ChildNodes['endetext'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Endetext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('endetext') = nil then AddChild('endetext', TargetNamespace); ChildNodes['endetext'].NodeValue := Value; end;
function TXMLRechnungTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLRechnungTyp.Get_Abrechnungsform: Integer; begin if AttributeNodes.FindNode('abrechnungsform') <> nil then Result := Integer(AttributeNodes['abrechnungsform'].NodeValue) else Result := 0; end;
procedure TXMLRechnungTyp.Set_Abrechnungsform(const Value: Integer); begin SetAttribute('abrechnungsform', Value); end;
function TXMLRechnungTyp.Get_Druckkennzeichen: Boolean; begin if AttributeNodes.FindNode('druckkennzeichen') <> nil then Result := Boolean(AttributeNodes['druckkennzeichen'].NodeValue) else Result := False; end;
procedure TXMLRechnungTyp.Set_Druckkennzeichen(const Value: Boolean); begin SetAttribute('druckkennzeichen', Value); end;
function TXMLRechnungTyp.Get_Eabgabe: Boolean; begin if AttributeNodes.FindNode('eabgabe') <> nil then Result := Boolean(AttributeNodes['eabgabe'].NodeValue) else Result := False; end;
procedure TXMLRechnungTyp.Set_Eabgabe(const Value: Boolean); begin SetAttribute('eabgabe', Value); end;
function TXMLRechnungTyp.Get_Mahnkennzeichen: TXSDMahnkennzeichenEnum; begin if AttributeNodes.FindNode('mahnkennzeichen') <> nil then Result := VarToStr(AttributeNodes['mahnkennzeichen'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Mahnkennzeichen(const Value: TXSDMahnkennzeichenEnum); begin SetAttribute('mahnkennzeichen', Value); end;
function TXMLRechnungTyp.Get_Aisrechnungsnr: string; begin if AttributeNodes.FindNode('aisrechnungsnr') <> nil then Result := VarToStr(AttributeNodes['aisrechnungsnr'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Aisrechnungsnr(const Value: string); begin SetAttribute('aisrechnungsnr', Value); end;
function TXMLRechnungTyp.Get_Aisaktenzeichen: string; begin if AttributeNodes.FindNode('aisaktenzeichen') <> nil then Result := VarToStr(AttributeNodes['aisaktenzeichen'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Aisaktenzeichen(const Value: string); begin SetAttribute('aisaktenzeichen', Value); end;
function TXMLRechnungTyp.Get_Aisendbetrag: TXSDBetragTyp; begin if AttributeNodes.FindNode('aisendbetrag') <> nil then Result := VarToStr(AttributeNodes['aisendbetrag'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTyp.Set_Aisendbetrag(const Value: TXSDBetragTyp); begin SetAttribute('aisendbetrag', Value); end;
function TXMLRechnungTypList.Add: IXMLRechnungTyp; begin Result := AddItem(-1) as IXMLRechnungTyp; end;
function TXMLRechnungTypList.Insert(const Index: Integer): IXMLRechnungTyp; begin Result := AddItem(Index) as IXMLRechnungTyp; end;
function TXMLRechnungTypList.Get_Item(Index: Integer): IXMLRechnungTyp; begin Result := List[Index] as IXMLRechnungTyp; end;

procedure TXMLRechnungTypZahlung.AfterConstruction;
begin
  RegisterChildNode('ratenzahlung', TXMLRatenzahlungTyp);
  RegisterChildNode('kontoverbindung', TXMLKontoTyp);
  inherited;
end;
function TXMLRechnungTypZahlung.Get_Ratenzahlung: IXMLRatenzahlungTyp; begin if ChildNodes.FindNode('ratenzahlung') <> nil then Result := ChildNodes['ratenzahlung'] as IXMLRatenzahlungTyp else Result := nil; end;
function TXMLRechnungTypZahlung.Get_Kontoverbindung: IXMLKontoTyp; begin if ChildNodes.FindNode('kontoverbindung') <> nil then Result := ChildNodes['kontoverbindung'] as IXMLKontoTyp else Result := nil; end;
function TXMLRechnungTypZahlung.Get_Art: TXSDZahlungsartEnum; begin if AttributeNodes.FindNode('art') <> nil then Result := VarToStr(AttributeNodes['art'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTypZahlung.Set_Art(const Value: TXSDZahlungsartEnum); begin SetAttribute('art', Value); end;
function TXMLRechnungTypZahlungList.Add: IXMLRechnungTypZahlung; begin Result := AddItem(-1) as IXMLRechnungTypZahlung; end;
function TXMLRechnungTypZahlungList.Insert(const Index: Integer): IXMLRechnungTypZahlung; begin Result := AddItem(Index) as IXMLRechnungTypZahlung; end;
function TXMLRechnungTypZahlungList.Get_Item(Index: Integer): IXMLRechnungTypZahlung; begin Result := List[Index] as IXMLRechnungTypZahlung; end;

procedure TXMLRechnungTypRechnungsvorgaben.AfterConstruction;
begin
  RegisterChildNode('nachlass', TXMLNachlassTyp);
  RegisterChildNode('zuzahlungsbetrag', TXMLRechnungTypZuzahlungsbetrag);
  RegisterChildNode('beteiligung', TXMLBeteiligungTyp);
  ItemTag := 'beteiligung';
  ItemInterface := IXMLBeteiligungTyp;
  inherited;
end;
function TXMLRechnungTypRechnungsvorgaben.Get_Direktzahlungsbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('direktzahlungsbetrag') <> nil then Result := VarToStr(ChildNodes['direktzahlungsbetrag'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTypRechnungsvorgaben.Set_Direktzahlungsbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('direktzahlungsbetrag') = nil then AddChild('direktzahlungsbetrag', TargetNamespace); ChildNodes['direktzahlungsbetrag'].NodeValue := Value; end;
function TXMLRechnungTypRechnungsvorgaben.Get_Nachlass: IXMLNachlassTyp; begin if ChildNodes.FindNode('nachlass') <> nil then Result := ChildNodes['nachlass'] as IXMLNachlassTyp else Result := nil; end;
function TXMLRechnungTypRechnungsvorgaben.Get_Zuzahlungsbetrag: IXMLRechnungTypZuzahlungsbetrag; begin if ChildNodes.FindNode('zuzahlungsbetrag') <> nil then Result := ChildNodes['zuzahlungsbetrag'] as IXMLRechnungTypZuzahlungsbetrag else Result := nil; end;
function TXMLRechnungTypRechnungsvorgaben.Get_Beteiligung: IXMLBeteiligungTypList; begin Result := ChildNodes['beteiligung'] as IXMLBeteiligungTypList; end;
function TXMLRechnungTypRechnungsvorgabenList.Add: IXMLRechnungTypRechnungsvorgaben; begin Result := AddItem(-1) as IXMLRechnungTypRechnungsvorgaben; end;
function TXMLRechnungTypRechnungsvorgabenList.Insert(const Index: Integer): IXMLRechnungTypRechnungsvorgaben; begin Result := AddItem(Index) as IXMLRechnungTypRechnungsvorgaben; end;
function TXMLRechnungTypRechnungsvorgabenList.Get_Item(Index: Integer): IXMLRechnungTypRechnungsvorgaben; begin Result := List[Index] as IXMLRechnungTypRechnungsvorgaben; end;

procedure TXMLRechnungTypZuzahlungsbetrag.AfterConstruction;
begin
  inherited;
end;
function TXMLRechnungTypZuzahlungsbetrag.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLRechnungTypZuzahlungsbetrag.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLRechnungTypZuzahlungsbetrag.Get_Kennzeichen: string; begin if AttributeNodes.FindNode('kennzeichen') <> nil then Result := VarToStr(AttributeNodes['kennzeichen'].NodeValue) else Result := ''; end;
procedure TXMLRechnungTypZuzahlungsbetrag.Set_Kennzeichen(const Value: string); begin SetAttribute('kennzeichen', Value); end;
function TXMLRechnungTypZuzahlungsbetragList.Add: IXMLRechnungTypZuzahlungsbetrag; begin Result := AddItem(-1) as IXMLRechnungTypZuzahlungsbetrag; end;
function TXMLRechnungTypZuzahlungsbetragList.Insert(const Index: Integer): IXMLRechnungTypZuzahlungsbetrag; begin Result := AddItem(Index) as IXMLRechnungTypZuzahlungsbetrag; end;
function TXMLRechnungTypZuzahlungsbetragList.Get_Item(Index: Integer): IXMLRechnungTypZuzahlungsbetrag; begin Result := List[Index] as IXMLRechnungTypZuzahlungsbetrag; end;

procedure TXMLRechnungTypAbrechnungsfall.AfterConstruction;
begin
  RegisterChildNode('bema', TXMLBemaTyp);
  RegisterChildNode('bmgnormprivat', TXMLBmgNormPrivatTyp);
  RegisterChildNode('bmgnormkfoprivat', TXMLBmgNormKFOPrivatTyp);
  RegisterChildNode('eigenanteilsrechnung', TXMLEigenanteilsrechnungTyp);
  RegisterChildNode('eigenanteilsrechnungkfo', TXMLEigenanteilsrechnungKFOTyp);
  RegisterChildNode('humanmedizin', TXMLHumanmedizinTyp);
  inherited;
end;
function TXMLRechnungTypAbrechnungsfall.Get_Bema: IXMLBemaTyp; begin Result := ChildNodes['bema'] as IXMLBemaTyp; end;
function TXMLRechnungTypAbrechnungsfall.Get_Bmgnormprivat: IXMLBmgNormPrivatTyp; begin Result := ChildNodes['bmgnormprivat'] as IXMLBmgNormPrivatTyp; end;
function TXMLRechnungTypAbrechnungsfall.Get_Bmgnormkfoprivat: IXMLBmgNormKFOPrivatTyp; begin Result := ChildNodes['bmgnormkfoprivat'] as IXMLBmgNormKFOPrivatTyp; end;
function TXMLRechnungTypAbrechnungsfall.Get_Eigenanteilsrechnung: IXMLEigenanteilsrechnungTyp; begin Result := ChildNodes['eigenanteilsrechnung'] as IXMLEigenanteilsrechnungTyp; end;
function TXMLRechnungTypAbrechnungsfall.Get_Eigenanteilsrechnungkfo: IXMLEigenanteilsrechnungKFOTyp; begin Result := ChildNodes['eigenanteilsrechnungkfo'] as IXMLEigenanteilsrechnungKFOTyp; end;
function TXMLRechnungTypAbrechnungsfall.Get_Humanmedizin: IXMLHumanmedizinTyp; begin Result := ChildNodes['humanmedizin'] as IXMLHumanmedizinTyp; end;
function TXMLRechnungTypAbrechnungsfallList.Add: IXMLRechnungTypAbrechnungsfall; begin Result := AddItem(-1) as IXMLRechnungTypAbrechnungsfall; end;
function TXMLRechnungTypAbrechnungsfallList.Insert(const Index: Integer): IXMLRechnungTypAbrechnungsfall; begin Result := AddItem(Index) as IXMLRechnungTypAbrechnungsfall; end;
function TXMLRechnungTypAbrechnungsfallList.Get_Item(Index: Integer): IXMLRechnungTypAbrechnungsfall; begin Result := List[Index] as IXMLRechnungTypAbrechnungsfall; end;

procedure TXMLRechnungListe.AfterConstruction;
begin
  RegisterChildNode('nachrichtentyp', TXMLNachrichtentypTyp);
  RegisterChildNode('rechnungsersteller', TXMLRechnungserstellerTyp);
  RegisterChildNode('leistungserbringer', TXMLLeistungserbringerTyp);
  ItemTag := 'leistungserbringer';
  ItemInterface := IXMLLeistungserbringerTyp;
  RegisterChildNode('rechnung', TXMLRechnungTyp);
  ItemTag := 'rechnung';
  ItemInterface := IXMLRechnungTyp;
  inherited;
end;
function TXMLRechnungListe.Get_Hinweistext: TXSDTextTyp; begin if ChildNodes.FindNode('hinweistext') <> nil then Result := VarToStr(ChildNodes['hinweistext'].NodeValue) else Result := ''; end;
procedure TXMLRechnungListe.Set_Hinweistext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('hinweistext') = nil then AddChild('hinweistext', TargetNamespace); ChildNodes['hinweistext'].NodeValue := Value; end;
function TXMLRechnungListe.Get_Nachrichtentyp: IXMLNachrichtentypTyp; begin Result := ChildNodes['nachrichtentyp'] as IXMLNachrichtentypTyp; end;
function TXMLRechnungListe.Get_Rechnungsersteller: IXMLRechnungserstellerTyp; begin Result := ChildNodes['rechnungsersteller'] as IXMLRechnungserstellerTyp; end;
function TXMLRechnungListe.Get_Leistungserbringer: IXMLLeistungserbringerTypList; begin Result := ChildNodes['leistungserbringer'] as IXMLLeistungserbringerTypList; end;
function TXMLRechnungListe.Get_Rechnung: IXMLRechnungTypList; begin Result := ChildNodes['rechnung'] as IXMLRechnungTypList; end;
function TXMLRechnungListe.Get_Anzahl: Integer; begin if AttributeNodes.FindNode('anzahl') <> nil then Result := Integer(AttributeNodes['anzahl'].NodeValue) else Result := 0; end;
procedure TXMLRechnungListe.Set_Anzahl(const Value: Integer); begin SetAttribute('anzahl', Value); end;
function TXMLRechnungListeList.Add: IXMLRechnungListe; begin Result := AddItem(-1) as IXMLRechnungListe; end;
function TXMLRechnungListeList.Insert(const Index: Integer): IXMLRechnungListe; begin Result := AddItem(Index) as IXMLRechnungListe; end;
function TXMLRechnungListeList.Get_Item(Index: Integer): IXMLRechnungListe; begin Result := List[Index] as IXMLRechnungListe; end;

procedure TXMLAnhangidTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLAnhangidTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLAnhangidTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLAnhangidTyp.Get_Verwendungszweck: TXSDVerwendungszweckanhangEnum; begin if AttributeNodes.FindNode('verwendungszweck') <> nil then Result := VarToStr(AttributeNodes['verwendungszweck'].NodeValue) else Result := ''; end;
procedure TXMLAnhangidTyp.Set_Verwendungszweck(const Value: TXSDVerwendungszweckanhangEnum); begin SetAttribute('verwendungszweck', Value); end;
function TXMLAnhangidTyp.Get_Belegart: TXSDBelegartEnum; begin if AttributeNodes.FindNode('belegart') <> nil then Result := VarToStr(AttributeNodes['belegart'].NodeValue) else Result := ''; end;
procedure TXMLAnhangidTyp.Set_Belegart(const Value: TXSDBelegartEnum); begin SetAttribute('belegart', Value); end;
function TXMLAnhangidTypList.Add: IXMLAnhangidTyp; begin Result := AddItem(-1) as IXMLAnhangidTyp; end;
function TXMLAnhangidTypList.Insert(const Index: Integer): IXMLAnhangidTyp; begin Result := AddItem(Index) as IXMLAnhangidTyp; end;
function TXMLAnhangidTypList.Get_Item(Index: Integer): IXMLAnhangidTyp; begin Result := List[Index] as IXMLAnhangidTyp; end;

procedure TXMLAnschriftTyp.AfterConstruction;
begin
  RegisterChildNode('hausadresse', TXMLHausadresseTyp);
  RegisterChildNode('postfach', TXMLPostfachTyp);
  RegisterChildNode('packstation', TXMLPackstationTyp);
  RegisterChildNode('grossempfaenger', TXMLAnschriftTypGrossempfaenger);
  RegisterChildNode('auslandsadresse', TXMLAuslandadresseTyp);
  inherited;
end;
function TXMLAnschriftTyp.Get_Hausadresse: IXMLHausadresseTyp; begin Result := ChildNodes['hausadresse'] as IXMLHausadresseTyp; end;
function TXMLAnschriftTyp.Get_Postfach: IXMLPostfachTyp; begin Result := ChildNodes['postfach'] as IXMLPostfachTyp; end;
function TXMLAnschriftTyp.Get_Packstation: IXMLPackstationTyp; begin Result := ChildNodes['packstation'] as IXMLPackstationTyp; end;
function TXMLAnschriftTyp.Get_Grossempfaenger: IXMLAnschriftTypGrossempfaenger; begin Result := ChildNodes['grossempfaenger'] as IXMLAnschriftTypGrossempfaenger; end;
function TXMLAnschriftTyp.Get_Auslandsadresse: IXMLAuslandadresseTyp; begin Result := ChildNodes['auslandsadresse'] as IXMLAuslandadresseTyp; end;
function TXMLAnschriftTypList.Add: IXMLAnschriftTyp; begin Result := AddItem(-1) as IXMLAnschriftTyp; end;
function TXMLAnschriftTypList.Insert(const Index: Integer): IXMLAnschriftTyp; begin Result := AddItem(Index) as IXMLAnschriftTyp; end;
function TXMLAnschriftTypList.Get_Item(Index: Integer): IXMLAnschriftTyp; begin Result := List[Index] as IXMLAnschriftTyp; end;

procedure TXMLAnschriftTypGrossempfaenger.AfterConstruction;
begin
  inherited;
end;
function TXMLAnschriftTypGrossempfaenger.Get_Plz: TXSDPlzTyp; begin if ChildNodes.FindNode('plz') <> nil then Result := VarToStr(ChildNodes['plz'].NodeValue) else Result := ''; end;
procedure TXMLAnschriftTypGrossempfaenger.Set_Plz(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('plz') = nil then AddChild('plz', TargetNamespace); ChildNodes['plz'].NodeValue := Value; end;
function TXMLAnschriftTypGrossempfaenger.Get_Ort: TXSDOrtTyp; begin if ChildNodes.FindNode('ort') <> nil then Result := VarToStr(ChildNodes['ort'].NodeValue) else Result := ''; end;
procedure TXMLAnschriftTypGrossempfaenger.Set_Ort(const Value: TXSDOrtTyp); begin if ChildNodes.FindNode('ort') = nil then AddChild('ort', TargetNamespace); ChildNodes['ort'].NodeValue := Value; end;
function TXMLAnschriftTypGrossempfaengerList.Add: IXMLAnschriftTypGrossempfaenger; begin Result := AddItem(-1) as IXMLAnschriftTypGrossempfaenger; end;
function TXMLAnschriftTypGrossempfaengerList.Insert(const Index: Integer): IXMLAnschriftTypGrossempfaenger; begin Result := AddItem(Index) as IXMLAnschriftTypGrossempfaenger; end;
function TXMLAnschriftTypGrossempfaengerList.Get_Item(Index: Integer): IXMLAnschriftTypGrossempfaenger; begin Result := List[Index] as IXMLAnschriftTypGrossempfaenger; end;

procedure TXMLAnschrift2Typ.AfterConstruction;
begin
  RegisterChildNode('hausadresse', TXMLHausadresseTyp);
  RegisterChildNode('postfach', TXMLPostfachTyp);
  RegisterChildNode('auslandsadresse', TXMLAuslandadresseTyp);
  inherited;
end;
function TXMLAnschrift2Typ.Get_Hausadresse: IXMLHausadresseTyp; begin Result := ChildNodes['hausadresse'] as IXMLHausadresseTyp; end;
function TXMLAnschrift2Typ.Get_Postfach: IXMLPostfachTyp; begin Result := ChildNodes['postfach'] as IXMLPostfachTyp; end;
function TXMLAnschrift2Typ.Get_Auslandsadresse: IXMLAuslandadresseTyp; begin Result := ChildNodes['auslandsadresse'] as IXMLAuslandadresseTyp; end;
function TXMLAnschrift2TypList.Add: IXMLAnschrift2Typ; begin Result := AddItem(-1) as IXMLAnschrift2Typ; end;
function TXMLAnschrift2TypList.Insert(const Index: Integer): IXMLAnschrift2Typ; begin Result := AddItem(Index) as IXMLAnschrift2Typ; end;
function TXMLAnschrift2TypList.Get_Item(Index: Integer): IXMLAnschrift2Typ; begin Result := List[Index] as IXMLAnschrift2Typ; end;

procedure TXMLAnschrift3Typ.AfterConstruction;
begin
  RegisterChildNode('hausadresse', TXMLHausadresseTyp);
  RegisterChildNode('postfach', TXMLPostfachTyp);
  RegisterChildNode('auslandsadresse', TXMLAuslandadresseTyp);
  inherited;
end;
function TXMLAnschrift3Typ.Get_Hausadresse: IXMLHausadresseTyp; begin Result := ChildNodes['hausadresse'] as IXMLHausadresseTyp; end;
function TXMLAnschrift3Typ.Get_Postfach: IXMLPostfachTyp; begin Result := ChildNodes['postfach'] as IXMLPostfachTyp; end;
function TXMLAnschrift3Typ.Get_Auslandsadresse: IXMLAuslandadresseTyp; begin Result := ChildNodes['auslandsadresse'] as IXMLAuslandadresseTyp; end;
function TXMLAnschrift3TypList.Add: IXMLAnschrift3Typ; begin Result := AddItem(-1) as IXMLAnschrift3Typ; end;
function TXMLAnschrift3TypList.Insert(const Index: Integer): IXMLAnschrift3Typ; begin Result := AddItem(Index) as IXMLAnschrift3Typ; end;
function TXMLAnschrift3TypList.Get_Item(Index: Integer): IXMLAnschrift3Typ; begin Result := List[Index] as IXMLAnschrift3Typ; end;

procedure TXMLAuslandadresseTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLAuslandadresseTyp.Get_Land: TXSDLandEnum; begin if ChildNodes.FindNode('land') <> nil then Result := VarToStr(ChildNodes['land'].NodeValue) else Result := ''; end;
procedure TXMLAuslandadresseTyp.Set_Land(const Value: TXSDLandEnum); begin if ChildNodes.FindNode('land') = nil then AddChild('land', TargetNamespace); ChildNodes['land'].NodeValue := Value; end;
function TXMLAuslandadresseTyp.Get_Plz: TXSDPlzTyp; begin if ChildNodes.FindNode('plz') <> nil then Result := VarToStr(ChildNodes['plz'].NodeValue) else Result := ''; end;
procedure TXMLAuslandadresseTyp.Set_Plz(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('plz') = nil then AddChild('plz', TargetNamespace); ChildNodes['plz'].NodeValue := Value; end;
function TXMLAuslandadresseTyp.Get_Ort: TXSDOrtTyp; begin if ChildNodes.FindNode('ort') <> nil then Result := VarToStr(ChildNodes['ort'].NodeValue) else Result := ''; end;
procedure TXMLAuslandadresseTyp.Set_Ort(const Value: TXSDOrtTyp); begin if ChildNodes.FindNode('ort') = nil then AddChild('ort', TargetNamespace); ChildNodes['ort'].NodeValue := Value; end;
function TXMLAuslandadresseTyp.Get_Strasse: TXSDStrasseTyp; begin if ChildNodes.FindNode('strasse') <> nil then Result := VarToStr(ChildNodes['strasse'].NodeValue) else Result := ''; end;
procedure TXMLAuslandadresseTyp.Set_Strasse(const Value: TXSDStrasseTyp); begin if ChildNodes.FindNode('strasse') = nil then AddChild('strasse', TargetNamespace); ChildNodes['strasse'].NodeValue := Value; end;
function TXMLAuslandadresseTypList.Add: IXMLAuslandadresseTyp; begin Result := AddItem(-1) as IXMLAuslandadresseTyp; end;
function TXMLAuslandadresseTypList.Insert(const Index: Integer): IXMLAuslandadresseTyp; begin Result := AddItem(Index) as IXMLAuslandadresseTyp; end;
function TXMLAuslandadresseTypList.Get_Item(Index: Integer): IXMLAuslandadresseTyp; begin Result := List[Index] as IXMLAuslandadresseTyp; end;

procedure TXMLHausadresseTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLHausadresseTyp.Get_Land: TXSDLandEnum; begin if ChildNodes.FindNode('land') <> nil then Result := VarToStr(ChildNodes['land'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Land(const Value: TXSDLandEnum); begin if ChildNodes.FindNode('land') = nil then AddChild('land', TargetNamespace); ChildNodes['land'].NodeValue := Value; end;
function TXMLHausadresseTyp.Get_Zusatz: string; begin if ChildNodes.FindNode('zusatz') <> nil then Result := VarToStr(ChildNodes['zusatz'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Zusatz(const Value: string); begin if ChildNodes.FindNode('zusatz') = nil then AddChild('zusatz', TargetNamespace); ChildNodes['zusatz'].NodeValue := Value; end;
function TXMLHausadresseTyp.Get_Plz: TXSDPlzTyp; begin if ChildNodes.FindNode('plz') <> nil then Result := VarToStr(ChildNodes['plz'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Plz(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('plz') = nil then AddChild('plz', TargetNamespace); ChildNodes['plz'].NodeValue := Value; end;
function TXMLHausadresseTyp.Get_Ort: TXSDOrtTyp; begin if ChildNodes.FindNode('ort') <> nil then Result := VarToStr(ChildNodes['ort'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Ort(const Value: TXSDOrtTyp); begin if ChildNodes.FindNode('ort') = nil then AddChild('ort', TargetNamespace); ChildNodes['ort'].NodeValue := Value; end;
function TXMLHausadresseTyp.Get_Strasse: TXSDStrasseTyp; begin if ChildNodes.FindNode('strasse') <> nil then Result := VarToStr(ChildNodes['strasse'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Strasse(const Value: TXSDStrasseTyp); begin if ChildNodes.FindNode('strasse') = nil then AddChild('strasse', TargetNamespace); ChildNodes['strasse'].NodeValue := Value; end;
function TXMLHausadresseTyp.Get_Hausnr: string; begin if ChildNodes.FindNode('hausnr') <> nil then Result := VarToStr(ChildNodes['hausnr'].NodeValue) else Result := ''; end;
procedure TXMLHausadresseTyp.Set_Hausnr(const Value: string); begin if ChildNodes.FindNode('hausnr') = nil then AddChild('hausnr', TargetNamespace); ChildNodes['hausnr'].NodeValue := Value; end;
function TXMLHausadresseTypList.Add: IXMLHausadresseTyp; begin Result := AddItem(-1) as IXMLHausadresseTyp; end;
function TXMLHausadresseTypList.Insert(const Index: Integer): IXMLHausadresseTyp; begin Result := AddItem(Index) as IXMLHausadresseTyp; end;
function TXMLHausadresseTypList.Get_Item(Index: Integer): IXMLHausadresseTyp; begin Result := List[Index] as IXMLHausadresseTyp; end;

procedure TXMLPostfachTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLPostfachTyp.Get_Postfachnr: TXSDPlzTyp; begin if ChildNodes.FindNode('postfachnr') <> nil then Result := VarToStr(ChildNodes['postfachnr'].NodeValue) else Result := ''; end;
procedure TXMLPostfachTyp.Set_Postfachnr(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('postfachnr') = nil then AddChild('postfachnr', TargetNamespace); ChildNodes['postfachnr'].NodeValue := Value; end;
function TXMLPostfachTyp.Get_Plz: TXSDPlzTyp; begin if ChildNodes.FindNode('plz') <> nil then Result := VarToStr(ChildNodes['plz'].NodeValue) else Result := ''; end;
procedure TXMLPostfachTyp.Set_Plz(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('plz') = nil then AddChild('plz', TargetNamespace); ChildNodes['plz'].NodeValue := Value; end;
function TXMLPostfachTyp.Get_Ort: TXSDOrtTyp; begin if ChildNodes.FindNode('ort') <> nil then Result := VarToStr(ChildNodes['ort'].NodeValue) else Result := ''; end;
procedure TXMLPostfachTyp.Set_Ort(const Value: TXSDOrtTyp); begin if ChildNodes.FindNode('ort') = nil then AddChild('ort', TargetNamespace); ChildNodes['ort'].NodeValue := Value; end;
function TXMLPostfachTypList.Add: IXMLPostfachTyp; begin Result := AddItem(-1) as IXMLPostfachTyp; end;
function TXMLPostfachTypList.Insert(const Index: Integer): IXMLPostfachTyp; begin Result := AddItem(Index) as IXMLPostfachTyp; end;
function TXMLPostfachTypList.Get_Item(Index: Integer): IXMLPostfachTyp; begin Result := List[Index] as IXMLPostfachTyp; end;

procedure TXMLPackstationTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLPackstationTyp.Get_Postnr: TXSDPlzTyp; begin if ChildNodes.FindNode('postnr') <> nil then Result := VarToStr(ChildNodes['postnr'].NodeValue) else Result := ''; end;
procedure TXMLPackstationTyp.Set_Postnr(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('postnr') = nil then AddChild('postnr', TargetNamespace); ChildNodes['postnr'].NodeValue := Value; end;
function TXMLPackstationTyp.Get_Packstationnr: TXSDPlzTyp; begin if ChildNodes.FindNode('packstationnr') <> nil then Result := VarToStr(ChildNodes['packstationnr'].NodeValue) else Result := ''; end;
procedure TXMLPackstationTyp.Set_Packstationnr(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('packstationnr') = nil then AddChild('packstationnr', TargetNamespace); ChildNodes['packstationnr'].NodeValue := Value; end;
function TXMLPackstationTyp.Get_Plz: TXSDPlzTyp; begin if ChildNodes.FindNode('plz') <> nil then Result := VarToStr(ChildNodes['plz'].NodeValue) else Result := ''; end;
procedure TXMLPackstationTyp.Set_Plz(const Value: TXSDPlzTyp); begin if ChildNodes.FindNode('plz') = nil then AddChild('plz', TargetNamespace); ChildNodes['plz'].NodeValue := Value; end;
function TXMLPackstationTyp.Get_Ort: TXSDOrtTyp; begin if ChildNodes.FindNode('ort') <> nil then Result := VarToStr(ChildNodes['ort'].NodeValue) else Result := ''; end;
procedure TXMLPackstationTyp.Set_Ort(const Value: TXSDOrtTyp); begin if ChildNodes.FindNode('ort') = nil then AddChild('ort', TargetNamespace); ChildNodes['ort'].NodeValue := Value; end;
function TXMLPackstationTypList.Add: IXMLPackstationTyp; begin Result := AddItem(-1) as IXMLPackstationTyp; end;
function TXMLPackstationTypList.Insert(const Index: Integer): IXMLPackstationTyp; begin Result := AddItem(Index) as IXMLPackstationTyp; end;
function TXMLPackstationTypList.Get_Item(Index: Integer): IXMLPackstationTyp; begin Result := List[Index] as IXMLPackstationTyp; end;

procedure TXMLBehandelterTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBehandelterTyp.Get_Anrede: TXSDString140Typ; begin if ChildNodes.FindNode('anrede') <> nil then Result := VarToStr(ChildNodes['anrede'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Anrede(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('anrede') = nil then AddChild('anrede', TargetNamespace); ChildNodes['anrede'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Titel: TXSDString140Typ; begin if ChildNodes.FindNode('titel') <> nil then Result := VarToStr(ChildNodes['titel'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Titel(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('titel') = nil then AddChild('titel', TargetNamespace); ChildNodes['titel'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Namezusatz: TXSDString140Typ; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Namezusatz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Gebname: TXSDString140Typ; begin if ChildNodes.FindNode('gebname') <> nil then Result := VarToStr(ChildNodes['gebname'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Gebname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('gebname') = nil then AddChild('gebname', TargetNamespace); ChildNodes['gebname'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Gebdatum: string; begin if ChildNodes.FindNode('gebdatum') <> nil then Result := VarToStr(ChildNodes['gebdatum'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Gebdatum(const Value: string); begin if ChildNodes.FindNode('gebdatum') = nil then AddChild('gebdatum', TargetNamespace); ChildNodes['gebdatum'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Geschlecht: TXSDGeschlechtEnum; begin if ChildNodes.FindNode('geschlecht') <> nil then Result := VarToStr(ChildNodes['geschlecht'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Geschlecht(const Value: TXSDGeschlechtEnum); begin if ChildNodes.FindNode('geschlecht') = nil then AddChild('geschlecht', TargetNamespace); ChildNodes['geschlecht'].NodeValue := Value; end;
function TXMLBehandelterTyp.Get_Staat: TXSDLandEnum; begin if ChildNodes.FindNode('staat') <> nil then Result := VarToStr(ChildNodes['staat'].NodeValue) else Result := ''; end;
procedure TXMLBehandelterTyp.Set_Staat(const Value: TXSDLandEnum); begin if ChildNodes.FindNode('staat') = nil then AddChild('staat', TargetNamespace); ChildNodes['staat'].NodeValue := Value; end;
function TXMLBehandelterTypList.Add: IXMLBehandelterTyp; begin Result := AddItem(-1) as IXMLBehandelterTyp; end;
function TXMLBehandelterTypList.Insert(const Index: Integer): IXMLBehandelterTyp; begin Result := AddItem(Index) as IXMLBehandelterTyp; end;
function TXMLBehandelterTypList.Get_Item(Index: Integer): IXMLBehandelterTyp; begin Result := List[Index] as IXMLBehandelterTyp; end;

procedure TXMLEmpfaengerPersonTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLEmpfaengerPersonTyp.Get_Anrede: string; begin if ChildNodes.FindNode('anrede') <> nil then Result := VarToStr(ChildNodes['anrede'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Anrede(const Value: string); begin if ChildNodes.FindNode('anrede') = nil then AddChild('anrede', TargetNamespace); ChildNodes['anrede'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTyp.Get_Titel: TXSDString140Typ; begin if ChildNodes.FindNode('titel') <> nil then Result := VarToStr(ChildNodes['titel'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Titel(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('titel') = nil then AddChild('titel', TargetNamespace); ChildNodes['titel'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTyp.Get_Namezusatz: TXSDString140Typ; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Namezusatz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTyp.Get_Gebdatum: string; begin if ChildNodes.FindNode('gebdatum') <> nil then Result := VarToStr(ChildNodes['gebdatum'].NodeValue) else Result := ''; end;
procedure TXMLEmpfaengerPersonTyp.Set_Gebdatum(const Value: string); begin if ChildNodes.FindNode('gebdatum') = nil then AddChild('gebdatum', TargetNamespace); ChildNodes['gebdatum'].NodeValue := Value; end;
function TXMLEmpfaengerPersonTypList.Add: IXMLEmpfaengerPersonTyp; begin Result := AddItem(-1) as IXMLEmpfaengerPersonTyp; end;
function TXMLEmpfaengerPersonTypList.Insert(const Index: Integer): IXMLEmpfaengerPersonTyp; begin Result := AddItem(Index) as IXMLEmpfaengerPersonTyp; end;
function TXMLEmpfaengerPersonTypList.Get_Item(Index: Integer): IXMLEmpfaengerPersonTyp; begin Result := List[Index] as IXMLEmpfaengerPersonTyp; end;

procedure TXMLKontaktTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLKontaktTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLKontaktTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLKontaktTyp.Get_Typ: TXSDKontakttypEnum; begin if AttributeNodes.FindNode('typ') <> nil then Result := VarToStr(AttributeNodes['typ'].NodeValue) else Result := ''; end;
procedure TXMLKontaktTyp.Set_Typ(const Value: TXSDKontakttypEnum); begin SetAttribute('typ', Value); end;
function TXMLKontaktTyp.Get_Art: TXSDKontaktartEnum; begin if AttributeNodes.FindNode('art') <> nil then Result := VarToStr(AttributeNodes['art'].NodeValue) else Result := ''; end;
procedure TXMLKontaktTyp.Set_Art(const Value: TXSDKontaktartEnum); begin SetAttribute('art', Value); end;
function TXMLKontaktTypList.Add: IXMLKontaktTyp; begin Result := AddItem(-1) as IXMLKontaktTyp; end;
function TXMLKontaktTypList.Insert(const Index: Integer): IXMLKontaktTyp; begin Result := AddItem(Index) as IXMLKontaktTyp; end;
function TXMLKontaktTypList.Get_Item(Index: Integer): IXMLKontaktTyp; begin Result := List[Index] as IXMLKontaktTyp; end;

procedure TXMLLeistungserbringerTyp.AfterConstruction;
begin
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  RegisterChildNode('fachbereich', TXMLFachbereichTyp);
  ItemTag := 'fachbereich';
  ItemInterface := IXMLFachbereichTyp;
  ItemTag := 'lanr';
  ItemInterface := IXMLNode;
  RegisterChildNode('betriebsstaette', TXMLBehandlungsortTyp);
  inherited;
end;
function TXMLLeistungserbringerTyp.Get_Anschrift: IXMLAnschrift2Typ; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ else Result := nil; end;
function TXMLLeistungserbringerTyp.Get_Kundennr: TXSDPVSkundennrTyp; begin if ChildNodes.FindNode('kundennr') <> nil then Result := VarToStr(ChildNodes['kundennr'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Kundennr(const Value: TXSDPVSkundennrTyp); begin if ChildNodes.FindNode('kundennr') = nil then AddChild('kundennr', TargetNamespace); ChildNodes['kundennr'].NodeValue := Value; end;
function TXMLLeistungserbringerTyp.Get_Fachbereich: IXMLFachbereichTypList; begin Result := ChildNodes['fachbereich'] as IXMLFachbereichTypList; end;
function TXMLLeistungserbringerTyp.Get_Lanr: IXMLNodeCollection; begin Result := ChildNodes['lanr'] as IXMLNodeCollection; end;
function TXMLLeistungserbringerTyp.Get_Betriebsstaette: IXMLBehandlungsortTyp; begin if ChildNodes.FindNode('betriebsstaette') <> nil then Result := ChildNodes['betriebsstaette'] as IXMLBehandlungsortTyp else Result := nil; end;
function TXMLLeistungserbringerTyp.Get_Kzvnr: string; begin if ChildNodes.FindNode('kzvnr') <> nil then Result := VarToStr(ChildNodes['kzvnr'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Kzvnr(const Value: string); begin if ChildNodes.FindNode('kzvnr') = nil then AddChild('kzvnr', TargetNamespace); ChildNodes['kzvnr'].NodeValue := Value; end;
function TXMLLeistungserbringerTyp.Get_Ustidnr: TXSDUstidnrTyp; begin if ChildNodes.FindNode('ustidnr') <> nil then Result := VarToStr(ChildNodes['ustidnr'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Ustidnr(const Value: TXSDUstidnrTyp); begin if ChildNodes.FindNode('ustidnr') = nil then AddChild('ustidnr', TargetNamespace); ChildNodes['ustidnr'].NodeValue := Value; end;
function TXMLLeistungserbringerTyp.Get_Hba: string; begin if ChildNodes.FindNode('hba') <> nil then Result := VarToStr(ChildNodes['hba'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Hba(const Value: string); begin if ChildNodes.FindNode('hba') = nil then AddChild('hba', TargetNamespace); ChildNodes['hba'].NodeValue := Value; end;
function TXMLLeistungserbringerTyp.Get_Iknr: TXSDIKnrTyp; begin if ChildNodes.FindNode('iknr') <> nil then Result := VarToStr(ChildNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Iknr(const Value: TXSDIKnrTyp); begin if ChildNodes.FindNode('iknr') = nil then AddChild('iknr', TargetNamespace); ChildNodes['iknr'].NodeValue := Value; end;
function TXMLLeistungserbringerTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLLeistungserbringerTyp.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLLeistungserbringerTyp.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLLeistungserbringerTypList.Add: IXMLLeistungserbringerTyp; begin Result := AddItem(-1) as IXMLLeistungserbringerTyp; end;
function TXMLLeistungserbringerTypList.Insert(const Index: Integer): IXMLLeistungserbringerTyp; begin Result := AddItem(Index) as IXMLLeistungserbringerTyp; end;
function TXMLLeistungserbringerTypList.Get_Item(Index: Integer): IXMLLeistungserbringerTyp; begin Result := List[Index] as IXMLLeistungserbringerTyp; end;

procedure TXMLLEPersonTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLLEPersonTyp.Get_Anrede: string; begin if ChildNodes.FindNode('anrede') <> nil then Result := VarToStr(ChildNodes['anrede'].NodeValue) else Result := ''; end;
procedure TXMLLEPersonTyp.Set_Anrede(const Value: string); begin if ChildNodes.FindNode('anrede') = nil then AddChild('anrede', TargetNamespace); ChildNodes['anrede'].NodeValue := Value; end;
function TXMLLEPersonTyp.Get_Titel: TXSDString140Typ; begin if ChildNodes.FindNode('titel') <> nil then Result := VarToStr(ChildNodes['titel'].NodeValue) else Result := ''; end;
procedure TXMLLEPersonTyp.Set_Titel(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('titel') = nil then AddChild('titel', TargetNamespace); ChildNodes['titel'].NodeValue := Value; end;
function TXMLLEPersonTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLLEPersonTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLLEPersonTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLLEPersonTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLLEPersonTyp.Get_Namezusatz: TXSDString140Typ; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLLEPersonTyp.Set_Namezusatz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLLEPersonTypList.Add: IXMLLEPersonTyp; begin Result := AddItem(-1) as IXMLLEPersonTyp; end;
function TXMLLEPersonTypList.Insert(const Index: Integer): IXMLLEPersonTyp; begin Result := AddItem(Index) as IXMLLEPersonTyp; end;
function TXMLLEPersonTypList.Get_Item(Index: Integer): IXMLLEPersonTyp; begin Result := List[Index] as IXMLLEPersonTyp; end;

procedure TXMLOrganisationTyp.AfterConstruction;
begin
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLOrganisationTyp.Get_Name: string; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLOrganisationTyp.Set_Name(const Value: string); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLOrganisationTyp.Get_Namezusatz: string; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLOrganisationTyp.Set_Namezusatz(const Value: string); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLOrganisationTyp.Get_Anschrift: IXMLAnschriftTyp; begin Result := ChildNodes['anschrift'] as IXMLAnschriftTyp; end;
function TXMLOrganisationTyp.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLOrganisationTyp.Get_Iknr: TXSDIKnrTyp; begin if ChildNodes.FindNode('iknr') <> nil then Result := VarToStr(ChildNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLOrganisationTyp.Set_Iknr(const Value: TXSDIKnrTyp); begin if ChildNodes.FindNode('iknr') = nil then AddChild('iknr', TargetNamespace); ChildNodes['iknr'].NodeValue := Value; end;
function TXMLOrganisationTypList.Add: IXMLOrganisationTyp; begin Result := AddItem(-1) as IXMLOrganisationTyp; end;
function TXMLOrganisationTypList.Insert(const Index: Integer): IXMLOrganisationTyp; begin Result := AddItem(Index) as IXMLOrganisationTyp; end;
function TXMLOrganisationTypList.Get_Item(Index: Integer): IXMLOrganisationTyp; begin Result := List[Index] as IXMLOrganisationTyp; end;

procedure TXMLPersonTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLPersonTyp.Get_Anrede: TXSDString140Typ; begin if ChildNodes.FindNode('anrede') <> nil then Result := VarToStr(ChildNodes['anrede'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Anrede(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('anrede') = nil then AddChild('anrede', TargetNamespace); ChildNodes['anrede'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Titel: TXSDString140Typ; begin if ChildNodes.FindNode('titel') <> nil then Result := VarToStr(ChildNodes['titel'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Titel(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('titel') = nil then AddChild('titel', TargetNamespace); ChildNodes['titel'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Namezusatz: TXSDString140Typ; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Namezusatz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Gebname: TXSDString140Typ; begin if ChildNodes.FindNode('gebname') <> nil then Result := VarToStr(ChildNodes['gebname'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Gebname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('gebname') = nil then AddChild('gebname', TargetNamespace); ChildNodes['gebname'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Gebdatum: string; begin if ChildNodes.FindNode('gebdatum') <> nil then Result := VarToStr(ChildNodes['gebdatum'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Gebdatum(const Value: string); begin if ChildNodes.FindNode('gebdatum') = nil then AddChild('gebdatum', TargetNamespace); ChildNodes['gebdatum'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Geschlecht: TXSDGeschlechtEnum; begin if ChildNodes.FindNode('geschlecht') <> nil then Result := VarToStr(ChildNodes['geschlecht'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Geschlecht(const Value: TXSDGeschlechtEnum); begin if ChildNodes.FindNode('geschlecht') = nil then AddChild('geschlecht', TargetNamespace); ChildNodes['geschlecht'].NodeValue := Value; end;
function TXMLPersonTyp.Get_Staat: TXSDLandEnum; begin if ChildNodes.FindNode('staat') <> nil then Result := VarToStr(ChildNodes['staat'].NodeValue) else Result := ''; end;
procedure TXMLPersonTyp.Set_Staat(const Value: TXSDLandEnum); begin if ChildNodes.FindNode('staat') = nil then AddChild('staat', TargetNamespace); ChildNodes['staat'].NodeValue := Value; end;
function TXMLPersonTypList.Add: IXMLPersonTyp; begin Result := AddItem(-1) as IXMLPersonTyp; end;
function TXMLPersonTypList.Insert(const Index: Integer): IXMLPersonTyp; begin Result := AddItem(Index) as IXMLPersonTyp; end;
function TXMLPersonTypList.Get_Item(Index: Integer): IXMLPersonTyp; begin Result := List[Index] as IXMLPersonTyp; end;

procedure TXMLRechnungserstellerTyp.AfterConstruction;
begin
  ItemTag := 'namezusatz';
  ItemInterface := IXMLNode;
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLRechnungserstellerTyp.Get_Name: string; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLRechnungserstellerTyp.Set_Name(const Value: string); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLRechnungserstellerTyp.Get_Namezusatz: IXMLNodeCollection; begin Result := ChildNodes['namezusatz'] as IXMLNodeCollection; end;
function TXMLRechnungserstellerTyp.Get_Kundennr: TXSDPVSkundennrTyp; begin if ChildNodes.FindNode('kundennr') <> nil then Result := VarToStr(ChildNodes['kundennr'].NodeValue) else Result := ''; end;
procedure TXMLRechnungserstellerTyp.Set_Kundennr(const Value: TXSDPVSkundennrTyp); begin if ChildNodes.FindNode('kundennr') = nil then AddChild('kundennr', TargetNamespace); ChildNodes['kundennr'].NodeValue := Value; end;
function TXMLRechnungserstellerTyp.Get_Anschrift: IXMLAnschrift2Typ; begin Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ; end;
function TXMLRechnungserstellerTyp.Get_Iknr: TXSDIKnrTyp; begin if ChildNodes.FindNode('iknr') <> nil then Result := VarToStr(ChildNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLRechnungserstellerTyp.Set_Iknr(const Value: TXSDIKnrTyp); begin if ChildNodes.FindNode('iknr') = nil then AddChild('iknr', TargetNamespace); ChildNodes['iknr'].NodeValue := Value; end;
function TXMLRechnungserstellerTyp.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLRechnungserstellerTyp.Get_Ustidnr: TXSDUstidnrTyp; begin if ChildNodes.FindNode('ustidnr') <> nil then Result := VarToStr(ChildNodes['ustidnr'].NodeValue) else Result := ''; end;
procedure TXMLRechnungserstellerTyp.Set_Ustidnr(const Value: TXSDUstidnrTyp); begin if ChildNodes.FindNode('ustidnr') = nil then AddChild('ustidnr', TargetNamespace); ChildNodes['ustidnr'].NodeValue := Value; end;
function TXMLRechnungserstellerTyp.Get_Glaeubigerid: TXSDString140Typ; begin if ChildNodes.FindNode('glaeubigerid') <> nil then Result := VarToStr(ChildNodes['glaeubigerid'].NodeValue) else Result := ''; end;
procedure TXMLRechnungserstellerTyp.Set_Glaeubigerid(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('glaeubigerid') = nil then AddChild('glaeubigerid', TargetNamespace); ChildNodes['glaeubigerid'].NodeValue := Value; end;
function TXMLRechnungserstellerTypList.Add: IXMLRechnungserstellerTyp; begin Result := AddItem(-1) as IXMLRechnungserstellerTyp; end;
function TXMLRechnungserstellerTypList.Insert(const Index: Integer): IXMLRechnungserstellerTyp; begin Result := AddItem(Index) as IXMLRechnungserstellerTyp; end;
function TXMLRechnungserstellerTypList.Get_Item(Index: Integer): IXMLRechnungserstellerTyp; begin Result := List[Index] as IXMLRechnungserstellerTyp; end;

procedure TXMLRechnungsempfaengerTyp.AfterConstruction;
begin
  RegisterChildNode('person', TXMLRechnungsempfaengerTypPerson);
  RegisterChildNode('organisation', TXMLOrganisationTyp);
  inherited;
end;
function TXMLRechnungsempfaengerTyp.Get_Person: IXMLRechnungsempfaengerTypPerson; begin Result := ChildNodes['person'] as IXMLRechnungsempfaengerTypPerson; end;
function TXMLRechnungsempfaengerTyp.Get_Organisation: IXMLOrganisationTyp; begin Result := ChildNodes['organisation'] as IXMLOrganisationTyp; end;
function TXMLRechnungsempfaengerTypList.Add: IXMLRechnungsempfaengerTyp; begin Result := AddItem(-1) as IXMLRechnungsempfaengerTyp; end;
function TXMLRechnungsempfaengerTypList.Insert(const Index: Integer): IXMLRechnungsempfaengerTyp; begin Result := AddItem(Index) as IXMLRechnungsempfaengerTyp; end;
function TXMLRechnungsempfaengerTypList.Get_Item(Index: Integer): IXMLRechnungsempfaengerTyp; begin Result := List[Index] as IXMLRechnungsempfaengerTyp; end;

procedure TXMLRechnungsempfaengerTypPerson.AfterConstruction;
begin
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLRechnungsempfaengerTypPerson.Get_Anschrift: IXMLAnschriftTyp; begin Result := ChildNodes['anschrift'] as IXMLAnschriftTyp; end;
function TXMLRechnungsempfaengerTypPerson.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLRechnungsempfaengerTypPersonList.Add: IXMLRechnungsempfaengerTypPerson; begin Result := AddItem(-1) as IXMLRechnungsempfaengerTypPerson; end;
function TXMLRechnungsempfaengerTypPersonList.Insert(const Index: Integer): IXMLRechnungsempfaengerTypPerson; begin Result := AddItem(Index) as IXMLRechnungsempfaengerTypPerson; end;
function TXMLRechnungsempfaengerTypPersonList.Get_Item(Index: Integer): IXMLRechnungsempfaengerTypPerson; begin Result := List[Index] as IXMLRechnungsempfaengerTypPerson; end;

procedure TXMLUeberweiserTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLUeberweiserTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLUeberweiserTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLUeberweiserTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLUeberweiserTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLUeberweiserTypList.Add: IXMLUeberweiserTyp; begin Result := AddItem(-1) as IXMLUeberweiserTyp; end;
function TXMLUeberweiserTypList.Insert(const Index: Integer): IXMLUeberweiserTyp; begin Result := AddItem(Index) as IXMLUeberweiserTyp; end;
function TXMLUeberweiserTypList.Get_Item(Index: Integer): IXMLUeberweiserTyp; begin Result := List[Index] as IXMLUeberweiserTyp; end;

procedure TXMLVersicherterTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLVersicherterTyp.Get_Anrede: string; begin if ChildNodes.FindNode('anrede') <> nil then Result := VarToStr(ChildNodes['anrede'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Anrede(const Value: string); begin if ChildNodes.FindNode('anrede') = nil then AddChild('anrede', TargetNamespace); ChildNodes['anrede'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Titel: TXSDString140Typ; begin if ChildNodes.FindNode('titel') <> nil then Result := VarToStr(ChildNodes['titel'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Titel(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('titel') = nil then AddChild('titel', TargetNamespace); ChildNodes['titel'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Vorname: TXSDString140Typ; begin if ChildNodes.FindNode('vorname') <> nil then Result := VarToStr(ChildNodes['vorname'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Vorname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('vorname') = nil then AddChild('vorname', TargetNamespace); ChildNodes['vorname'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Name: TXSDString140Typ; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Name(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Namezusatz: TXSDString140Typ; begin if ChildNodes.FindNode('namezusatz') <> nil then Result := VarToStr(ChildNodes['namezusatz'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Namezusatz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('namezusatz') = nil then AddChild('namezusatz', TargetNamespace); ChildNodes['namezusatz'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Gebname: TXSDString140Typ; begin if ChildNodes.FindNode('gebname') <> nil then Result := VarToStr(ChildNodes['gebname'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Gebname(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('gebname') = nil then AddChild('gebname', TargetNamespace); ChildNodes['gebname'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Gebdatum: string; begin if ChildNodes.FindNode('gebdatum') <> nil then Result := VarToStr(ChildNodes['gebdatum'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Gebdatum(const Value: string); begin if ChildNodes.FindNode('gebdatum') = nil then AddChild('gebdatum', TargetNamespace); ChildNodes['gebdatum'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Geschlecht: TXSDGeschlechtEnum; begin if ChildNodes.FindNode('geschlecht') <> nil then Result := VarToStr(ChildNodes['geschlecht'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Geschlecht(const Value: TXSDGeschlechtEnum); begin if ChildNodes.FindNode('geschlecht') = nil then AddChild('geschlecht', TargetNamespace); ChildNodes['geschlecht'].NodeValue := Value; end;
function TXMLVersicherterTyp.Get_Staat: TXSDLandEnum; begin if ChildNodes.FindNode('staat') <> nil then Result := VarToStr(ChildNodes['staat'].NodeValue) else Result := ''; end;
procedure TXMLVersicherterTyp.Set_Staat(const Value: TXSDLandEnum); begin if ChildNodes.FindNode('staat') = nil then AddChild('staat', TargetNamespace); ChildNodes['staat'].NodeValue := Value; end;
function TXMLVersicherterTypList.Add: IXMLVersicherterTyp; begin Result := AddItem(-1) as IXMLVersicherterTyp; end;
function TXMLVersicherterTypList.Insert(const Index: Integer): IXMLVersicherterTyp; begin Result := AddItem(Index) as IXMLVersicherterTyp; end;
function TXMLVersicherterTypList.Get_Item(Index: Integer): IXMLVersicherterTyp; begin Result := List[Index] as IXMLVersicherterTyp; end;

procedure TXMLBemaTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLBemaTypUeberweiser);
  RegisterChildNode('behandelter', TXMLBemaTypBehandelter);
  RegisterChildNode('versicherter', TXMLBemaTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('kvkartendaten', TXMLKVKartendatenTyp);
  RegisterChildNode('positionen', TXMLBemaTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBemaTyp);
  inherited;
end;
function TXMLBemaTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLBemaTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLBemaTyp.Get_Ueberweiser: IXMLBemaTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLBemaTypUeberweiser else Result := nil; end;
function TXMLBemaTyp.Get_Behandelter: IXMLBemaTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLBemaTypBehandelter else Result := nil; end;
function TXMLBemaTyp.Get_Versicherter: IXMLBemaTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLBemaTypVersicherter else Result := nil; end;
function TXMLBemaTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLBemaTyp.Get_Behandlungsart: TXSDBehandlungsartEnum; begin if ChildNodes.FindNode('behandlungsart') <> nil then Result := VarToStr(ChildNodes['behandlungsart'].NodeValue) else Result := ''; end;
procedure TXMLBemaTyp.Set_Behandlungsart(const Value: TXSDBehandlungsartEnum); begin if ChildNodes.FindNode('behandlungsart') = nil then AddChild('behandlungsart', TargetNamespace); ChildNodes['behandlungsart'].NodeValue := Value; end;
function TXMLBemaTyp.Get_Kvkartendaten: IXMLKVKartendatenTyp; begin Result := ChildNodes['kvkartendaten'] as IXMLKVKartendatenTyp; end;
function TXMLBemaTyp.Get_Positionen: IXMLBemaTypPositionen; begin Result := ChildNodes['positionen'] as IXMLBemaTypPositionen; end;
function TXMLBemaTyp.Get_Summenblock: IXMLSummenblockBemaTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBemaTyp; end;
function TXMLBemaTypList.Add: IXMLBemaTyp; begin Result := AddItem(-1) as IXMLBemaTyp; end;
function TXMLBemaTypList.Insert(const Index: Integer): IXMLBemaTyp; begin Result := AddItem(Index) as IXMLBemaTyp; end;
function TXMLBemaTypList.Get_Item(Index: Integer): IXMLBemaTyp; begin Result := List[Index] as IXMLBemaTyp; end;

procedure TXMLBemaTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLBemaTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLBemaTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLBemaTypUeberweiserList.Add: IXMLBemaTypUeberweiser; begin Result := AddItem(-1) as IXMLBemaTypUeberweiser; end;
function TXMLBemaTypUeberweiserList.Insert(const Index: Integer): IXMLBemaTypUeberweiser; begin Result := AddItem(Index) as IXMLBemaTypUeberweiser; end;
function TXMLBemaTypUeberweiserList.Get_Item(Index: Integer): IXMLBemaTypUeberweiser; begin Result := List[Index] as IXMLBemaTypUeberweiser; end;

procedure TXMLBemaTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBemaTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLBemaTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLBemaTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBemaTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLBemaTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLBemaTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLBemaTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLBemaTypBehandelterList.Add: IXMLBemaTypBehandelter; begin Result := AddItem(-1) as IXMLBemaTypBehandelter; end;
function TXMLBemaTypBehandelterList.Insert(const Index: Integer): IXMLBemaTypBehandelter; begin Result := AddItem(Index) as IXMLBemaTypBehandelter; end;
function TXMLBemaTypBehandelterList.Get_Item(Index: Integer): IXMLBemaTypBehandelter; begin Result := List[Index] as IXMLBemaTypBehandelter; end;

procedure TXMLBemaTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBemaTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLBemaTypVersicherter.Get_Anschrift: IXMLAnschrift2Typ; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ else Result := nil; end;
function TXMLBemaTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBemaTypVersicherterList.Add: IXMLBemaTypVersicherter; begin Result := AddItem(-1) as IXMLBemaTypVersicherter; end;
function TXMLBemaTypVersicherterList.Insert(const Index: Integer): IXMLBemaTypVersicherter; begin Result := AddItem(Index) as IXMLBemaTypVersicherter; end;
function TXMLBemaTypVersicherterList.Get_Item(Index: Integer): IXMLBemaTypVersicherter; begin Result := List[Index] as IXMLBemaTypVersicherter; end;

procedure TXMLBemaTypPositionen.AfterConstruction;
begin
  RegisterChildNode('bema', TXMLBemaZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLBemaTypPositionen.Get_Bema: IXMLBemaZifferTyp; begin Result := ChildNodes['bema'] as IXMLBemaZifferTyp; end;
function TXMLBemaTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLBemaTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLBemaTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLBemaTypPositionenList.Add: IXMLBemaTypPositionen; begin Result := AddItem(-1) as IXMLBemaTypPositionen; end;
function TXMLBemaTypPositionenList.Insert(const Index: Integer): IXMLBemaTypPositionen; begin Result := AddItem(Index) as IXMLBemaTypPositionen; end;
function TXMLBemaTypPositionenList.Get_Item(Index: Integer): IXMLBemaTypPositionen; begin Result := List[Index] as IXMLBemaTypPositionen; end;

procedure TXMLBmgNormPrivatTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLBmgNormPrivatTypUeberweiser);
  RegisterChildNode('behandelter', TXMLBmgNormPrivatTypBehandelter);
  RegisterChildNode('versicherter', TXMLBmgNormPrivatTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('diagnose', TXMLDiagnoseTyp);
  ItemTag := 'diagnose';
  ItemInterface := IXMLDiagnoseTyp;
  RegisterChildNode('positionen', TXMLBmgNormPrivatTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBmgTyp);
  RegisterChildNode('begruendung', TXMLBegruendungTyp);
  ItemTag := 'begruendung';
  ItemInterface := IXMLBegruendungTyp;
  RegisterChildNode('anhangid', TXMLAnhangidTyp);
  ItemTag := 'anhangid';
  ItemInterface := IXMLAnhangidTyp;
  RegisterChildNode('beleg', TXMLBmgNormPrivatTypBeleg);
  ItemTag := 'beleg';
  ItemInterface := IXMLBmgNormPrivatTypBeleg;
  inherited;
end;
function TXMLBmgNormPrivatTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLBmgNormPrivatTyp.Get_Ueberweiser: IXMLBmgNormPrivatTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLBmgNormPrivatTypUeberweiser else Result := nil; end;
function TXMLBmgNormPrivatTyp.Get_Behandelter: IXMLBmgNormPrivatTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLBmgNormPrivatTypBehandelter else Result := nil; end;
function TXMLBmgNormPrivatTyp.Get_Versicherter: IXMLBmgNormPrivatTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLBmgNormPrivatTypVersicherter else Result := nil; end;
function TXMLBmgNormPrivatTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLBmgNormPrivatTyp.Get_Minderungssatz: TXSDMinderungssatzEnum; begin if ChildNodes.FindNode('minderungssatz') <> nil then Result := VarToStr(ChildNodes['minderungssatz'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTyp.Set_Minderungssatz(const Value: TXSDMinderungssatzEnum); begin if ChildNodes.FindNode('minderungssatz') = nil then AddChild('minderungssatz', TargetNamespace); ChildNodes['minderungssatz'].NodeValue := Value; end;
function TXMLBmgNormPrivatTyp.Get_Behandlungsart: TXSDBehandlungsartEnum; begin if ChildNodes.FindNode('behandlungsart') <> nil then Result := VarToStr(ChildNodes['behandlungsart'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTyp.Set_Behandlungsart(const Value: TXSDBehandlungsartEnum); begin if ChildNodes.FindNode('behandlungsart') = nil then AddChild('behandlungsart', TargetNamespace); ChildNodes['behandlungsart'].NodeValue := Value; end;
function TXMLBmgNormPrivatTyp.Get_Diagnose: IXMLDiagnoseTypList; begin Result := ChildNodes['diagnose'] as IXMLDiagnoseTypList; end;
function TXMLBmgNormPrivatTyp.Get_Positionen: IXMLBmgNormPrivatTypPositionen; begin Result := ChildNodes['positionen'] as IXMLBmgNormPrivatTypPositionen; end;
function TXMLBmgNormPrivatTyp.Get_Summenblock: IXMLSummenblockBmgTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBmgTyp; end;
function TXMLBmgNormPrivatTyp.Get_Begruendung: IXMLBegruendungTypList; begin Result := ChildNodes['begruendung'] as IXMLBegruendungTypList; end;
function TXMLBmgNormPrivatTyp.Get_Anhangid: IXMLAnhangidTypList; begin Result := ChildNodes['anhangid'] as IXMLAnhangidTypList; end;
function TXMLBmgNormPrivatTyp.Get_Beleg: IXMLBmgNormPrivatTypBelegList; begin Result := ChildNodes['beleg'] as IXMLBmgNormPrivatTypBelegList; end;
function TXMLBmgNormPrivatTypList.Add: IXMLBmgNormPrivatTyp; begin Result := AddItem(-1) as IXMLBmgNormPrivatTyp; end;
function TXMLBmgNormPrivatTypList.Insert(const Index: Integer): IXMLBmgNormPrivatTyp; begin Result := AddItem(Index) as IXMLBmgNormPrivatTyp; end;
function TXMLBmgNormPrivatTypList.Get_Item(Index: Integer): IXMLBmgNormPrivatTyp; begin Result := List[Index] as IXMLBmgNormPrivatTyp; end;

procedure TXMLBmgNormPrivatTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLBmgNormPrivatTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLBmgNormPrivatTypUeberweiserList.Add: IXMLBmgNormPrivatTypUeberweiser; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypUeberweiser; end;
function TXMLBmgNormPrivatTypUeberweiserList.Insert(const Index: Integer): IXMLBmgNormPrivatTypUeberweiser; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypUeberweiser; end;
function TXMLBmgNormPrivatTypUeberweiserList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypUeberweiser; begin Result := List[Index] as IXMLBmgNormPrivatTypUeberweiser; end;

procedure TXMLBmgNormPrivatTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBmgNormPrivatTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLBmgNormPrivatTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBmgNormPrivatTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLBmgNormPrivatTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLBmgNormPrivatTypBehandelterList.Add: IXMLBmgNormPrivatTypBehandelter; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypBehandelter; end;
function TXMLBmgNormPrivatTypBehandelterList.Insert(const Index: Integer): IXMLBmgNormPrivatTypBehandelter; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypBehandelter; end;
function TXMLBmgNormPrivatTypBehandelterList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypBehandelter; begin Result := List[Index] as IXMLBmgNormPrivatTypBehandelter; end;

procedure TXMLBmgNormPrivatTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBmgNormPrivatTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLBmgNormPrivatTypVersicherter.Get_Anschrift: IXMLAnschrift2Typ; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ else Result := nil; end;
function TXMLBmgNormPrivatTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBmgNormPrivatTypVersicherterList.Add: IXMLBmgNormPrivatTypVersicherter; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypVersicherter; end;
function TXMLBmgNormPrivatTypVersicherterList.Insert(const Index: Integer): IXMLBmgNormPrivatTypVersicherter; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypVersicherter; end;
function TXMLBmgNormPrivatTypVersicherterList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypVersicherter; begin Result := List[Index] as IXMLBmgNormPrivatTypVersicherter; end;

procedure TXMLBmgNormPrivatTypPositionen.AfterConstruction;
begin
  RegisterChildNode('goziffer', TXMLGOZifferTyp);
  RegisterChildNode('entschaedigung', TXMLEntschaedigungTyp);
  RegisterChildNode('auslagen', TXMLAuslagenTyp);
  RegisterChildNode('sonstigeshonorar', TXMLBmgNormPrivatTypSonstigeshonorar);
  RegisterChildNode('gozziffer', TXMLGOZZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLBmgNormPrivatTypPositionen.Get_Goziffer: IXMLGOZifferTyp; begin Result := ChildNodes['goziffer'] as IXMLGOZifferTyp; end;
function TXMLBmgNormPrivatTypPositionen.Get_Entschaedigung: IXMLEntschaedigungTyp; begin Result := ChildNodes['entschaedigung'] as IXMLEntschaedigungTyp; end;
function TXMLBmgNormPrivatTypPositionen.Get_Auslagen: IXMLAuslagenTyp; begin Result := ChildNodes['auslagen'] as IXMLAuslagenTyp; end;
function TXMLBmgNormPrivatTypPositionen.Get_Sonstigeshonorar: IXMLBmgNormPrivatTypSonstigeshonorar; begin Result := ChildNodes['sonstigeshonorar'] as IXMLBmgNormPrivatTypSonstigeshonorar; end;
function TXMLBmgNormPrivatTypPositionen.Get_Gozziffer: IXMLGOZZifferTyp; begin Result := ChildNodes['gozziffer'] as IXMLGOZZifferTyp; end;
function TXMLBmgNormPrivatTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLBmgNormPrivatTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLBmgNormPrivatTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLBmgNormPrivatTypPositionenList.Add: IXMLBmgNormPrivatTypPositionen; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypPositionen; end;
function TXMLBmgNormPrivatTypPositionenList.Insert(const Index: Integer): IXMLBmgNormPrivatTypPositionen; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypPositionen; end;
function TXMLBmgNormPrivatTypPositionenList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypPositionen; begin Result := List[Index] as IXMLBmgNormPrivatTypPositionen; end;

procedure TXMLBmgNormPrivatTypSonstigeshonorar.AfterConstruction;
begin
  inherited;
end;
function TXMLBmgNormPrivatTypSonstigeshonorar.Get_Leistungskuerzel: string; begin if ChildNodes.FindNode('leistungskuerzel') <> nil then Result := VarToStr(ChildNodes['leistungskuerzel'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormPrivatTypSonstigeshonorar.Set_Leistungskuerzel(const Value: string); begin if ChildNodes.FindNode('leistungskuerzel') = nil then AddChild('leistungskuerzel', TargetNamespace); ChildNodes['leistungskuerzel'].NodeValue := Value; end;
function TXMLBmgNormPrivatTypSonstigeshonorarList.Add: IXMLBmgNormPrivatTypSonstigeshonorar; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypSonstigeshonorar; end;
function TXMLBmgNormPrivatTypSonstigeshonorarList.Insert(const Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypSonstigeshonorar; end;
function TXMLBmgNormPrivatTypSonstigeshonorarList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypSonstigeshonorar; begin Result := List[Index] as IXMLBmgNormPrivatTypSonstigeshonorar; end;

procedure TXMLBmgNormPrivatTypBeleg.AfterConstruction;
begin
  RegisterChildNode('eigenlabor', TXMLEigenlaborTyp);
  RegisterChildNode('fremdlabor', TXMLFremdlaborTyp);
  RegisterChildNode('material', TXMLMaterialTyp);
  RegisterChildNode('materialpass', TXMLMaterialpassTyp);
  inherited;
end;
function TXMLBmgNormPrivatTypBeleg.Get_Eigenlabor: IXMLEigenlaborTyp; begin Result := ChildNodes['eigenlabor'] as IXMLEigenlaborTyp; end;
function TXMLBmgNormPrivatTypBeleg.Get_Fremdlabor: IXMLFremdlaborTyp; begin Result := ChildNodes['fremdlabor'] as IXMLFremdlaborTyp; end;
function TXMLBmgNormPrivatTypBeleg.Get_Material: IXMLMaterialTyp; begin Result := ChildNodes['material'] as IXMLMaterialTyp; end;
function TXMLBmgNormPrivatTypBeleg.Get_Materialpass: IXMLMaterialpassTyp; begin Result := ChildNodes['materialpass'] as IXMLMaterialpassTyp; end;
function TXMLBmgNormPrivatTypBelegList.Add: IXMLBmgNormPrivatTypBeleg; begin Result := AddItem(-1) as IXMLBmgNormPrivatTypBeleg; end;
function TXMLBmgNormPrivatTypBelegList.Insert(const Index: Integer): IXMLBmgNormPrivatTypBeleg; begin Result := AddItem(Index) as IXMLBmgNormPrivatTypBeleg; end;
function TXMLBmgNormPrivatTypBelegList.Get_Item(Index: Integer): IXMLBmgNormPrivatTypBeleg; begin Result := List[Index] as IXMLBmgNormPrivatTypBeleg; end;

procedure TXMLBmgNormKFOPrivatTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLBmgNormKFOPrivatTypUeberweiser);
  RegisterChildNode('behandelter', TXMLBmgNormKFOPrivatTypBehandelter);
  RegisterChildNode('versicherter', TXMLBmgNormKFOPrivatTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('diagnose', TXMLDiagnoseTyp);
  ItemTag := 'diagnose';
  ItemInterface := IXMLDiagnoseTyp;
  RegisterChildNode('kfoplandaten', TXMLKfoplandatenTyp);
  RegisterChildNode('positionen', TXMLBmgNormKFOPrivatTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBmgTyp);
  RegisterChildNode('begruendung', TXMLBegruendungTyp);
  ItemTag := 'begruendung';
  ItemInterface := IXMLBegruendungTyp;
  RegisterChildNode('anhangid', TXMLAnhangidTyp);
  ItemTag := 'anhangid';
  ItemInterface := IXMLAnhangidTyp;
  RegisterChildNode('beleg', TXMLBmgNormKFOPrivatTypBeleg);
  ItemTag := 'beleg';
  ItemInterface := IXMLBmgNormKFOPrivatTypBeleg;
  inherited;
end;
function TXMLBmgNormKFOPrivatTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormKFOPrivatTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLBmgNormKFOPrivatTyp.Get_Ueberweiser: IXMLBmgNormKFOPrivatTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLBmgNormKFOPrivatTypUeberweiser else Result := nil; end;
function TXMLBmgNormKFOPrivatTyp.Get_Behandelter: IXMLBmgNormKFOPrivatTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLBmgNormKFOPrivatTypBehandelter else Result := nil; end;
function TXMLBmgNormKFOPrivatTyp.Get_Versicherter: IXMLBmgNormKFOPrivatTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLBmgNormKFOPrivatTypVersicherter else Result := nil; end;
function TXMLBmgNormKFOPrivatTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLBmgNormKFOPrivatTyp.Get_Diagnose: IXMLDiagnoseTypList; begin Result := ChildNodes['diagnose'] as IXMLDiagnoseTypList; end;
function TXMLBmgNormKFOPrivatTyp.Get_Kfoplandaten: IXMLKfoplandatenTyp; begin Result := ChildNodes['kfoplandaten'] as IXMLKfoplandatenTyp; end;
function TXMLBmgNormKFOPrivatTyp.Get_Positionen: IXMLBmgNormKFOPrivatTypPositionen; begin Result := ChildNodes['positionen'] as IXMLBmgNormKFOPrivatTypPositionen; end;
function TXMLBmgNormKFOPrivatTyp.Get_Summenblock: IXMLSummenblockBmgTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBmgTyp; end;
function TXMLBmgNormKFOPrivatTyp.Get_Begruendung: IXMLBegruendungTypList; begin Result := ChildNodes['begruendung'] as IXMLBegruendungTypList; end;
function TXMLBmgNormKFOPrivatTyp.Get_Anhangid: IXMLAnhangidTypList; begin Result := ChildNodes['anhangid'] as IXMLAnhangidTypList; end;
function TXMLBmgNormKFOPrivatTyp.Get_Beleg: IXMLBmgNormKFOPrivatTypBelegList; begin Result := ChildNodes['beleg'] as IXMLBmgNormKFOPrivatTypBelegList; end;
function TXMLBmgNormKFOPrivatTypList.Add: IXMLBmgNormKFOPrivatTyp; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTyp; end;
function TXMLBmgNormKFOPrivatTypList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTyp; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTyp; end;
function TXMLBmgNormKFOPrivatTypList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTyp; begin Result := List[Index] as IXMLBmgNormKFOPrivatTyp; end;

procedure TXMLBmgNormKFOPrivatTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLBmgNormKFOPrivatTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormKFOPrivatTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLBmgNormKFOPrivatTypUeberweiserList.Add: IXMLBmgNormKFOPrivatTypUeberweiser; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTypUeberweiser; end;
function TXMLBmgNormKFOPrivatTypUeberweiserList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTypUeberweiser; end;
function TXMLBmgNormKFOPrivatTypUeberweiserList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypUeberweiser; begin Result := List[Index] as IXMLBmgNormKFOPrivatTypUeberweiser; end;

procedure TXMLBmgNormKFOPrivatTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBmgNormKFOPrivatTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormKFOPrivatTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLBmgNormKFOPrivatTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBmgNormKFOPrivatTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormKFOPrivatTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLBmgNormKFOPrivatTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLBmgNormKFOPrivatTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLBmgNormKFOPrivatTypBehandelterList.Add: IXMLBmgNormKFOPrivatTypBehandelter; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTypBehandelter; end;
function TXMLBmgNormKFOPrivatTypBehandelterList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTypBehandelter; end;
function TXMLBmgNormKFOPrivatTypBehandelterList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBehandelter; begin Result := List[Index] as IXMLBmgNormKFOPrivatTypBehandelter; end;

procedure TXMLBmgNormKFOPrivatTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLBmgNormKFOPrivatTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLBmgNormKFOPrivatTypVersicherter.Get_Anschrift: IXMLAnschriftTyp; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschriftTyp else Result := nil; end;
function TXMLBmgNormKFOPrivatTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLBmgNormKFOPrivatTypVersicherterList.Add: IXMLBmgNormKFOPrivatTypVersicherter; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTypVersicherter; end;
function TXMLBmgNormKFOPrivatTypVersicherterList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTypVersicherter; end;
function TXMLBmgNormKFOPrivatTypVersicherterList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypVersicherter; begin Result := List[Index] as IXMLBmgNormKFOPrivatTypVersicherter; end;

procedure TXMLBmgNormKFOPrivatTypPositionen.AfterConstruction;
begin
  RegisterChildNode('goziffer', TXMLGOZifferTyp);
  RegisterChildNode('entschaedigung', TXMLEntschaedigungTyp);
  RegisterChildNode('auslagen', TXMLAuslagenTyp);
  RegisterChildNode('sonstigeshonorar', TXMLHonorarTyp);
  RegisterChildNode('gozziffer', TXMLGOZZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Goziffer: IXMLGOZifferTyp; begin Result := ChildNodes['goziffer'] as IXMLGOZifferTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Entschaedigung: IXMLEntschaedigungTyp; begin Result := ChildNodes['entschaedigung'] as IXMLEntschaedigungTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Auslagen: IXMLAuslagenTyp; begin Result := ChildNodes['auslagen'] as IXMLAuslagenTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Sonstigeshonorar: IXMLHonorarTyp; begin Result := ChildNodes['sonstigeshonorar'] as IXMLHonorarTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Gozziffer: IXMLGOZZifferTyp; begin Result := ChildNodes['gozziffer'] as IXMLGOZZifferTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLBmgNormKFOPrivatTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLBmgNormKFOPrivatTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLBmgNormKFOPrivatTypPositionenList.Add: IXMLBmgNormKFOPrivatTypPositionen; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTypPositionen; end;
function TXMLBmgNormKFOPrivatTypPositionenList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypPositionen; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTypPositionen; end;
function TXMLBmgNormKFOPrivatTypPositionenList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypPositionen; begin Result := List[Index] as IXMLBmgNormKFOPrivatTypPositionen; end;

procedure TXMLBmgNormKFOPrivatTypBeleg.AfterConstruction;
begin
  RegisterChildNode('eigenlabor', TXMLEigenlaborTyp);
  RegisterChildNode('fremdlabor', TXMLFremdlaborTyp);
  RegisterChildNode('material', TXMLMaterialTyp);
  RegisterChildNode('materialpass', TXMLMaterialpassTyp);
  inherited;
end;
function TXMLBmgNormKFOPrivatTypBeleg.Get_Eigenlabor: IXMLEigenlaborTyp; begin Result := ChildNodes['eigenlabor'] as IXMLEigenlaborTyp; end;
function TXMLBmgNormKFOPrivatTypBeleg.Get_Fremdlabor: IXMLFremdlaborTyp; begin Result := ChildNodes['fremdlabor'] as IXMLFremdlaborTyp; end;
function TXMLBmgNormKFOPrivatTypBeleg.Get_Material: IXMLMaterialTyp; begin Result := ChildNodes['material'] as IXMLMaterialTyp; end;
function TXMLBmgNormKFOPrivatTypBeleg.Get_Materialpass: IXMLMaterialpassTyp; begin Result := ChildNodes['materialpass'] as IXMLMaterialpassTyp; end;
function TXMLBmgNormKFOPrivatTypBelegList.Add: IXMLBmgNormKFOPrivatTypBeleg; begin Result := AddItem(-1) as IXMLBmgNormKFOPrivatTypBeleg; end;
function TXMLBmgNormKFOPrivatTypBelegList.Insert(const Index: Integer): IXMLBmgNormKFOPrivatTypBeleg; begin Result := AddItem(Index) as IXMLBmgNormKFOPrivatTypBeleg; end;
function TXMLBmgNormKFOPrivatTypBelegList.Get_Item(Index: Integer): IXMLBmgNormKFOPrivatTypBeleg; begin Result := List[Index] as IXMLBmgNormKFOPrivatTypBeleg; end;

procedure TXMLEigenanteilsrechnungTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLEigenanteilsrechnungTypUeberweiser);
  RegisterChildNode('behandelter', TXMLEigenanteilsrechnungTypBehandelter);
  RegisterChildNode('versicherter', TXMLEigenanteilsrechnungTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('diagnose', TXMLDiagnoseTyp);
  ItemTag := 'diagnose';
  ItemInterface := IXMLDiagnoseTyp;
  RegisterChildNode('positionen', TXMLEigenanteilsrechnungTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockEigenanteilTyp);
  RegisterChildNode('begruendung', TXMLBegruendungTyp);
  ItemTag := 'begruendung';
  ItemInterface := IXMLBegruendungTyp;
  RegisterChildNode('anhangid', TXMLAnhangidTyp);
  ItemTag := 'anhangid';
  ItemInterface := IXMLAnhangidTyp;
  RegisterChildNode('beleg', TXMLEigenanteilsrechnungTypBeleg);
  ItemTag := 'beleg';
  ItemInterface := IXMLEigenanteilsrechnungTypBeleg;
  inherited;
end;
function TXMLEigenanteilsrechnungTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungTyp.Get_Ueberweiser: IXMLEigenanteilsrechnungTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLEigenanteilsrechnungTypUeberweiser else Result := nil; end;
function TXMLEigenanteilsrechnungTyp.Get_Behandelter: IXMLEigenanteilsrechnungTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLEigenanteilsrechnungTypBehandelter else Result := nil; end;
function TXMLEigenanteilsrechnungTyp.Get_Versicherter: IXMLEigenanteilsrechnungTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLEigenanteilsrechnungTypVersicherter else Result := nil; end;
function TXMLEigenanteilsrechnungTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLEigenanteilsrechnungTyp.Get_Diagnose: IXMLDiagnoseTypList; begin Result := ChildNodes['diagnose'] as IXMLDiagnoseTypList; end;
function TXMLEigenanteilsrechnungTyp.Get_Positionen: IXMLEigenanteilsrechnungTypPositionen; begin Result := ChildNodes['positionen'] as IXMLEigenanteilsrechnungTypPositionen; end;
function TXMLEigenanteilsrechnungTyp.Get_Summenblock: IXMLSummenblockEigenanteilTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockEigenanteilTyp; end;
function TXMLEigenanteilsrechnungTyp.Get_Begruendung: IXMLBegruendungTypList; begin Result := ChildNodes['begruendung'] as IXMLBegruendungTypList; end;
function TXMLEigenanteilsrechnungTyp.Get_Anhangid: IXMLAnhangidTypList; begin Result := ChildNodes['anhangid'] as IXMLAnhangidTypList; end;
function TXMLEigenanteilsrechnungTyp.Get_Beleg: IXMLEigenanteilsrechnungTypBelegList; begin Result := ChildNodes['beleg'] as IXMLEigenanteilsrechnungTypBelegList; end;
function TXMLEigenanteilsrechnungTypList.Add: IXMLEigenanteilsrechnungTyp; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTyp; end;
function TXMLEigenanteilsrechnungTypList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTyp; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTyp; end;
function TXMLEigenanteilsrechnungTypList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTyp; begin Result := List[Index] as IXMLEigenanteilsrechnungTyp; end;

procedure TXMLEigenanteilsrechnungTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLEigenanteilsrechnungTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungTypUeberweiserList.Add: IXMLEigenanteilsrechnungTypUeberweiser; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTypUeberweiser; end;
function TXMLEigenanteilsrechnungTypUeberweiserList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTypUeberweiser; end;
function TXMLEigenanteilsrechnungTypUeberweiserList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypUeberweiser; begin Result := List[Index] as IXMLEigenanteilsrechnungTypUeberweiser; end;

procedure TXMLEigenanteilsrechnungTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLEigenanteilsrechnungTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLEigenanteilsrechnungTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLEigenanteilsrechnungTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLEigenanteilsrechnungTypBehandelterList.Add: IXMLEigenanteilsrechnungTypBehandelter; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTypBehandelter; end;
function TXMLEigenanteilsrechnungTypBehandelterList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBehandelter; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTypBehandelter; end;
function TXMLEigenanteilsrechnungTypBehandelterList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBehandelter; begin Result := List[Index] as IXMLEigenanteilsrechnungTypBehandelter; end;

procedure TXMLEigenanteilsrechnungTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLEigenanteilsrechnungTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLEigenanteilsrechnungTypVersicherter.Get_Anschrift: IXMLAnschriftTyp; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschriftTyp else Result := nil; end;
function TXMLEigenanteilsrechnungTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLEigenanteilsrechnungTypVersicherterList.Add: IXMLEigenanteilsrechnungTypVersicherter; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTypVersicherter; end;
function TXMLEigenanteilsrechnungTypVersicherterList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTypVersicherter; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTypVersicherter; end;
function TXMLEigenanteilsrechnungTypVersicherterList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypVersicherter; begin Result := List[Index] as IXMLEigenanteilsrechnungTypVersicherter; end;

procedure TXMLEigenanteilsrechnungTypPositionen.AfterConstruction;
begin
  RegisterChildNode('goziffer', TXMLGOZifferTyp);
  RegisterChildNode('entschaedigung', TXMLEntschaedigungTyp);
  RegisterChildNode('auslagen', TXMLAuslagenTyp);
  RegisterChildNode('sonstigeshonorar', TXMLHonorarTyp);
  RegisterChildNode('bema', TXMLBemaZifferTyp);
  RegisterChildNode('gozziffer', TXMLGOZZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Goziffer: IXMLGOZifferTyp; begin Result := ChildNodes['goziffer'] as IXMLGOZifferTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Entschaedigung: IXMLEntschaedigungTyp; begin Result := ChildNodes['entschaedigung'] as IXMLEntschaedigungTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Auslagen: IXMLAuslagenTyp; begin Result := ChildNodes['auslagen'] as IXMLAuslagenTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Sonstigeshonorar: IXMLHonorarTyp; begin Result := ChildNodes['sonstigeshonorar'] as IXMLHonorarTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Bema: IXMLBemaZifferTyp; begin Result := ChildNodes['bema'] as IXMLBemaZifferTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Gozziffer: IXMLGOZZifferTyp; begin Result := ChildNodes['gozziffer'] as IXMLGOZZifferTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLEigenanteilsrechnungTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLEigenanteilsrechnungTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLEigenanteilsrechnungTypPositionenList.Add: IXMLEigenanteilsrechnungTypPositionen; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTypPositionen; end;
function TXMLEigenanteilsrechnungTypPositionenList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTypPositionen; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTypPositionen; end;
function TXMLEigenanteilsrechnungTypPositionenList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypPositionen; begin Result := List[Index] as IXMLEigenanteilsrechnungTypPositionen; end;

procedure TXMLEigenanteilsrechnungTypBeleg.AfterConstruction;
begin
  RegisterChildNode('eigenlabor', TXMLEigenlaborTyp);
  RegisterChildNode('fremdlabor', TXMLFremdlaborTyp);
  RegisterChildNode('material', TXMLMaterialTyp);
  RegisterChildNode('materialpass', TXMLMaterialpassTyp);
  inherited;
end;
function TXMLEigenanteilsrechnungTypBeleg.Get_Eigenlabor: IXMLEigenlaborTyp; begin Result := ChildNodes['eigenlabor'] as IXMLEigenlaborTyp; end;
function TXMLEigenanteilsrechnungTypBeleg.Get_Fremdlabor: IXMLFremdlaborTyp; begin Result := ChildNodes['fremdlabor'] as IXMLFremdlaborTyp; end;
function TXMLEigenanteilsrechnungTypBeleg.Get_Material: IXMLMaterialTyp; begin Result := ChildNodes['material'] as IXMLMaterialTyp; end;
function TXMLEigenanteilsrechnungTypBeleg.Get_Materialpass: IXMLMaterialpassTyp; begin Result := ChildNodes['materialpass'] as IXMLMaterialpassTyp; end;
function TXMLEigenanteilsrechnungTypBelegList.Add: IXMLEigenanteilsrechnungTypBeleg; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungTypBeleg; end;
function TXMLEigenanteilsrechnungTypBelegList.Insert(const Index: Integer): IXMLEigenanteilsrechnungTypBeleg; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungTypBeleg; end;
function TXMLEigenanteilsrechnungTypBelegList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungTypBeleg; begin Result := List[Index] as IXMLEigenanteilsrechnungTypBeleg; end;

procedure TXMLEigenanteilsrechnungKFOTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLEigenanteilsrechnungKFOTypUeberweiser);
  RegisterChildNode('behandelter', TXMLEigenanteilsrechnungKFOTypBehandelter);
  RegisterChildNode('versicherter', TXMLEigenanteilsrechnungKFOTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('diagnose', TXMLDiagnoseTyp);
  ItemTag := 'diagnose';
  ItemInterface := IXMLDiagnoseTyp;
  RegisterChildNode('kfokopfdaten', TXMLKVKartendatenTyp);
  RegisterChildNode('kfoplandaten', TXMLKfoplandatenTyp);
  RegisterChildNode('positionen', TXMLEigenanteilsrechnungKFOTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockEigenanteilKFOTyp);
  RegisterChildNode('anhangid', TXMLAnhangidTyp);
  ItemTag := 'anhangid';
  ItemInterface := IXMLAnhangidTyp;
  RegisterChildNode('beleg', TXMLEigenanteilsrechnungKFOTypBeleg);
  ItemTag := 'beleg';
  ItemInterface := IXMLEigenanteilsrechnungKFOTypBeleg;
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungKFOTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Ueberweiser: IXMLEigenanteilsrechnungKFOTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLEigenanteilsrechnungKFOTypUeberweiser else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Behandelter: IXMLEigenanteilsrechnungKFOTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLEigenanteilsrechnungKFOTypBehandelter else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Versicherter: IXMLEigenanteilsrechnungKFOTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLEigenanteilsrechnungKFOTypVersicherter else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Diagnose: IXMLDiagnoseTypList; begin Result := ChildNodes['diagnose'] as IXMLDiagnoseTypList; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Kfokopfdaten: IXMLKVKartendatenTyp; begin Result := ChildNodes['kfokopfdaten'] as IXMLKVKartendatenTyp; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Kfoplandaten: IXMLKfoplandatenTyp; begin Result := ChildNodes['kfoplandaten'] as IXMLKfoplandatenTyp; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Positionen: IXMLEigenanteilsrechnungKFOTypPositionen; begin Result := ChildNodes['positionen'] as IXMLEigenanteilsrechnungKFOTypPositionen; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Summenblock: IXMLSummenblockEigenanteilKFOTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockEigenanteilKFOTyp; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Anhangid: IXMLAnhangidTypList; begin Result := ChildNodes['anhangid'] as IXMLAnhangidTypList; end;
function TXMLEigenanteilsrechnungKFOTyp.Get_Beleg: IXMLEigenanteilsrechnungKFOTypBelegList; begin Result := ChildNodes['beleg'] as IXMLEigenanteilsrechnungKFOTypBelegList; end;
function TXMLEigenanteilsrechnungKFOTypList.Add: IXMLEigenanteilsrechnungKFOTyp; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTyp; end;
function TXMLEigenanteilsrechnungKFOTypList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTyp; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTyp; end;
function TXMLEigenanteilsrechnungKFOTypList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTyp; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTyp; end;

procedure TXMLEigenanteilsrechnungKFOTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungKFOTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungKFOTypUeberweiserList.Add: IXMLEigenanteilsrechnungKFOTypUeberweiser; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTypUeberweiser; end;
function TXMLEigenanteilsrechnungKFOTypUeberweiserList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTypUeberweiser; end;
function TXMLEigenanteilsrechnungKFOTypUeberweiserList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypUeberweiser; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTypUeberweiser; end;

procedure TXMLEigenanteilsrechnungKFOTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungKFOTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLEigenanteilsrechnungKFOTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLEigenanteilsrechnungKFOTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungKFOTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLEigenanteilsrechnungKFOTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLEigenanteilsrechnungKFOTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLEigenanteilsrechnungKFOTypBehandelterList.Add: IXMLEigenanteilsrechnungKFOTypBehandelter; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTypBehandelter; end;
function TXMLEigenanteilsrechnungKFOTypBehandelterList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTypBehandelter; end;
function TXMLEigenanteilsrechnungKFOTypBehandelterList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBehandelter; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTypBehandelter; end;

procedure TXMLEigenanteilsrechnungKFOTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTypVersicherter.Get_Anschrift: IXMLAnschriftTyp; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschriftTyp else Result := nil; end;
function TXMLEigenanteilsrechnungKFOTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLEigenanteilsrechnungKFOTypVersicherterList.Add: IXMLEigenanteilsrechnungKFOTypVersicherter; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTypVersicherter; end;
function TXMLEigenanteilsrechnungKFOTypVersicherterList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTypVersicherter; end;
function TXMLEigenanteilsrechnungKFOTypVersicherterList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypVersicherter; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTypVersicherter; end;

procedure TXMLEigenanteilsrechnungKFOTypPositionen.AfterConstruction;
begin
  RegisterChildNode('bema', TXMLBemaZifferTyp);
  RegisterChildNode('bemakfo', TXMLBemaKFOZifferTyp);
  RegisterChildNode('eigenlaborkfo', TXMLEigenlaborKFOZifferTyp);
  RegisterChildNode('bemakfozwsumme', TXMLBemaKFOZwSummeTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Bema: IXMLBemaZifferTyp; begin Result := ChildNodes['bema'] as IXMLBemaZifferTyp; end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Bemakfo: IXMLBemaKFOZifferTyp; begin Result := ChildNodes['bemakfo'] as IXMLBemaKFOZifferTyp; end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Eigenlaborkfo: IXMLEigenlaborKFOZifferTyp; begin Result := ChildNodes['eigenlaborkfo'] as IXMLEigenlaborKFOZifferTyp; end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Bemakfozwsumme: IXMLBemaKFOZwSummeTyp; begin Result := ChildNodes['bemakfozwsumme'] as IXMLBemaKFOZwSummeTyp; end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLEigenanteilsrechnungKFOTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLEigenanteilsrechnungKFOTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLEigenanteilsrechnungKFOTypPositionenList.Add: IXMLEigenanteilsrechnungKFOTypPositionen; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTypPositionen; end;
function TXMLEigenanteilsrechnungKFOTypPositionenList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTypPositionen; end;
function TXMLEigenanteilsrechnungKFOTypPositionenList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypPositionen; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTypPositionen; end;

procedure TXMLEigenanteilsrechnungKFOTypBeleg.AfterConstruction;
begin
  RegisterChildNode('eigenlabor', TXMLEigenlaborTyp);
  RegisterChildNode('fremdlabor', TXMLFremdlaborTyp);
  RegisterChildNode('material', TXMLMaterialTyp);
  RegisterChildNode('materialpass', TXMLMaterialpassTyp);
  inherited;
end;
function TXMLEigenanteilsrechnungKFOTypBeleg.Get_Eigenlabor: IXMLEigenlaborTyp; begin Result := ChildNodes['eigenlabor'] as IXMLEigenlaborTyp; end;
function TXMLEigenanteilsrechnungKFOTypBeleg.Get_Fremdlabor: IXMLFremdlaborTyp; begin Result := ChildNodes['fremdlabor'] as IXMLFremdlaborTyp; end;
function TXMLEigenanteilsrechnungKFOTypBeleg.Get_Material: IXMLMaterialTyp; begin Result := ChildNodes['material'] as IXMLMaterialTyp; end;
function TXMLEigenanteilsrechnungKFOTypBeleg.Get_Materialpass: IXMLMaterialpassTyp; begin Result := ChildNodes['materialpass'] as IXMLMaterialpassTyp; end;
function TXMLEigenanteilsrechnungKFOTypBelegList.Add: IXMLEigenanteilsrechnungKFOTypBeleg; begin Result := AddItem(-1) as IXMLEigenanteilsrechnungKFOTypBeleg; end;
function TXMLEigenanteilsrechnungKFOTypBelegList.Insert(const Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg; begin Result := AddItem(Index) as IXMLEigenanteilsrechnungKFOTypBeleg; end;
function TXMLEigenanteilsrechnungKFOTypBelegList.Get_Item(Index: Integer): IXMLEigenanteilsrechnungKFOTypBeleg; begin Result := List[Index] as IXMLEigenanteilsrechnungKFOTypBeleg; end;

procedure TXMLHumanmedizinTyp.AfterConstruction;
begin
  RegisterChildNode('ueberweiser', TXMLHumanmedizinTypUeberweiser);
  RegisterChildNode('behandelter', TXMLHumanmedizinTypBehandelter);
  RegisterChildNode('versicherter', TXMLHumanmedizinTypVersicherter);
  RegisterChildNode('zeitraum', TXMLZeitraumTyp);
  RegisterChildNode('beteiligung', TXMLBeteiligungTyp);
  ItemTag := 'beteiligung';
  ItemInterface := IXMLBeteiligungTyp;
  RegisterChildNode('unfalldaten', TXMLUnfalldatenTyp);
  RegisterChildNode('diagnose', TXMLDiagnoseTyp);
  ItemTag := 'diagnose';
  ItemInterface := IXMLDiagnoseTyp;
  RegisterChildNode('positionen', TXMLHumanmedizinTypPositionen);
  RegisterChildNode('anhangid', TXMLAnhangidTyp);
  ItemTag := 'anhangid';
  ItemInterface := IXMLAnhangidTyp;
  inherited;
end;
function TXMLHumanmedizinTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Ueberweiser: IXMLHumanmedizinTypUeberweiser; begin if ChildNodes.FindNode('ueberweiser') <> nil then Result := ChildNodes['ueberweiser'] as IXMLHumanmedizinTypUeberweiser else Result := nil; end;
function TXMLHumanmedizinTyp.Get_Behandelter: IXMLHumanmedizinTypBehandelter; begin if ChildNodes.FindNode('behandelter') <> nil then Result := ChildNodes['behandelter'] as IXMLHumanmedizinTypBehandelter else Result := nil; end;
function TXMLHumanmedizinTyp.Get_Versicherter: IXMLHumanmedizinTypVersicherter; begin if ChildNodes.FindNode('versicherter') <> nil then Result := ChildNodes['versicherter'] as IXMLHumanmedizinTypVersicherter else Result := nil; end;
function TXMLHumanmedizinTyp.Get_Zeitraum: IXMLZeitraumTyp; begin if ChildNodes.FindNode('zeitraum') <> nil then Result := ChildNodes['zeitraum'] as IXMLZeitraumTyp else Result := nil; end;
function TXMLHumanmedizinTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Minderungssatz: TXSDMinderungssatzEnum; begin if ChildNodes.FindNode('minderungssatz') <> nil then Result := VarToStr(ChildNodes['minderungssatz'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Minderungssatz(const Value: TXSDMinderungssatzEnum); begin if ChildNodes.FindNode('minderungssatz') = nil then AddChild('minderungssatz', TargetNamespace); ChildNodes['minderungssatz'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Behandlungsart: TXSDBehandlungsartEnum; begin if ChildNodes.FindNode('behandlungsart') <> nil then Result := VarToStr(ChildNodes['behandlungsart'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Behandlungsart(const Value: TXSDBehandlungsartEnum); begin if ChildNodes.FindNode('behandlungsart') = nil then AddChild('behandlungsart', TargetNamespace); ChildNodes['behandlungsart'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Vertragsart: TXSDVertragsartTyp; begin if ChildNodes.FindNode('vertragsart') <> nil then Result := VarToStr(ChildNodes['vertragsart'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Vertragsart(const Value: TXSDVertragsartTyp); begin if ChildNodes.FindNode('vertragsart') = nil then AddChild('vertragsart', TargetNamespace); ChildNodes['vertragsart'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Beschreibung: string; begin if ChildNodes.FindNode('beschreibung') <> nil then Result := VarToStr(ChildNodes['beschreibung'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Beschreibung(const Value: string); begin if ChildNodes.FindNode('beschreibung') = nil then AddChild('beschreibung', TargetNamespace); ChildNodes['beschreibung'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Beteiligung: IXMLBeteiligungTypList; begin Result := ChildNodes['beteiligung'] as IXMLBeteiligungTypList; end;
function TXMLHumanmedizinTyp.Get_Aktenzeichen: string; begin if ChildNodes.FindNode('aktenzeichen') <> nil then Result := VarToStr(ChildNodes['aktenzeichen'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Aktenzeichen(const Value: string); begin if ChildNodes.FindNode('aktenzeichen') = nil then AddChild('aktenzeichen', TargetNamespace); ChildNodes['aktenzeichen'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Unfalldaten: IXMLUnfalldatenTyp; begin if ChildNodes.FindNode('unfalldaten') <> nil then Result := ChildNodes['unfalldaten'] as IXMLUnfalldatenTyp else Result := nil; end;
function TXMLHumanmedizinTyp.Get_Diagnose: IXMLDiagnoseTypList; begin Result := ChildNodes['diagnose'] as IXMLDiagnoseTypList; end;
function TXMLHumanmedizinTyp.Get_Klasse: TXSDUnterkunftstationaerEnum; begin if ChildNodes.FindNode('klasse') <> nil then Result := VarToStr(ChildNodes['klasse'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Klasse(const Value: TXSDUnterkunftstationaerEnum); begin if ChildNodes.FindNode('klasse') = nil then AddChild('klasse', TargetNamespace); ChildNodes['klasse'].NodeValue := Value; end;
function TXMLHumanmedizinTyp.Get_Positionen: IXMLHumanmedizinTypPositionen; begin Result := ChildNodes['positionen'] as IXMLHumanmedizinTypPositionen; end;
function TXMLHumanmedizinTyp.Get_Anhangid: IXMLAnhangidTypList; begin Result := ChildNodes['anhangid'] as IXMLAnhangidTypList; end;
function TXMLHumanmedizinTyp.Get_Rechnungssondertyp: TXSDRechnungssondertypEnum; begin if AttributeNodes.FindNode('rechnungssondertyp') <> nil then Result := VarToStr(AttributeNodes['rechnungssondertyp'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTyp.Set_Rechnungssondertyp(const Value: TXSDRechnungssondertypEnum); begin SetAttribute('rechnungssondertyp', Value); end;
function TXMLHumanmedizinTypList.Add: IXMLHumanmedizinTyp; begin Result := AddItem(-1) as IXMLHumanmedizinTyp; end;
function TXMLHumanmedizinTypList.Insert(const Index: Integer): IXMLHumanmedizinTyp; begin Result := AddItem(Index) as IXMLHumanmedizinTyp; end;
function TXMLHumanmedizinTypList.Get_Item(Index: Integer): IXMLHumanmedizinTyp; begin Result := List[Index] as IXMLHumanmedizinTyp; end;

procedure TXMLHumanmedizinTypUeberweiser.AfterConstruction;
begin
  inherited;
end;
function TXMLHumanmedizinTypUeberweiser.Get_Lanr: TXSDLanrTyp; begin if ChildNodes.FindNode('lanr') <> nil then Result := VarToStr(ChildNodes['lanr'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTypUeberweiser.Set_Lanr(const Value: TXSDLanrTyp); begin if ChildNodes.FindNode('lanr') = nil then AddChild('lanr', TargetNamespace); ChildNodes['lanr'].NodeValue := Value; end;
function TXMLHumanmedizinTypUeberweiserList.Add: IXMLHumanmedizinTypUeberweiser; begin Result := AddItem(-1) as IXMLHumanmedizinTypUeberweiser; end;
function TXMLHumanmedizinTypUeberweiserList.Insert(const Index: Integer): IXMLHumanmedizinTypUeberweiser; begin Result := AddItem(Index) as IXMLHumanmedizinTypUeberweiser; end;
function TXMLHumanmedizinTypUeberweiserList.Get_Item(Index: Integer): IXMLHumanmedizinTypUeberweiser; begin Result := List[Index] as IXMLHumanmedizinTypUeberweiser; end;

procedure TXMLHumanmedizinTypBehandelter.AfterConstruction;
begin
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLHumanmedizinTypBehandelter.Get_Verwandtschaft: TXSDVerwandtschaftskennungEnum; begin if ChildNodes.FindNode('verwandtschaft') <> nil then Result := VarToStr(ChildNodes['verwandtschaft'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTypBehandelter.Set_Verwandtschaft(const Value: TXSDVerwandtschaftskennungEnum); begin if ChildNodes.FindNode('verwandtschaft') = nil then AddChild('verwandtschaft', TargetNamespace); ChildNodes['verwandtschaft'].NodeValue := Value; end;
function TXMLHumanmedizinTypBehandelter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLHumanmedizinTypBehandelter.Get_Aisid: TXSDIdTyp; begin if AttributeNodes.FindNode('aisid') <> nil then Result := VarToStr(AttributeNodes['aisid'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTypBehandelter.Set_Aisid(const Value: TXSDIdTyp); begin SetAttribute('aisid', Value); end;
function TXMLHumanmedizinTypBehandelter.Get_Idbundesweit: TXSDIdTyp; begin if AttributeNodes.FindNode('idbundesweit') <> nil then Result := VarToStr(AttributeNodes['idbundesweit'].NodeValue) else Result := ''; end;
procedure TXMLHumanmedizinTypBehandelter.Set_Idbundesweit(const Value: TXSDIdTyp); begin SetAttribute('idbundesweit', Value); end;
function TXMLHumanmedizinTypBehandelterList.Add: IXMLHumanmedizinTypBehandelter; begin Result := AddItem(-1) as IXMLHumanmedizinTypBehandelter; end;
function TXMLHumanmedizinTypBehandelterList.Insert(const Index: Integer): IXMLHumanmedizinTypBehandelter; begin Result := AddItem(Index) as IXMLHumanmedizinTypBehandelter; end;
function TXMLHumanmedizinTypBehandelterList.Get_Item(Index: Integer): IXMLHumanmedizinTypBehandelter; begin Result := List[Index] as IXMLHumanmedizinTypBehandelter; end;

procedure TXMLHumanmedizinTypVersicherter.AfterConstruction;
begin
  RegisterChildNode('versicherung', TXMLVersicherungTyp);
  RegisterChildNode('anschrift', TXMLAnschriftTyp);
  RegisterChildNode('kontakt', TXMLKontaktTyp);
  ItemTag := 'kontakt';
  ItemInterface := IXMLKontaktTyp;
  inherited;
end;
function TXMLHumanmedizinTypVersicherter.Get_Versicherung: IXMLVersicherungTyp; begin if ChildNodes.FindNode('versicherung') <> nil then Result := ChildNodes['versicherung'] as IXMLVersicherungTyp else Result := nil; end;
function TXMLHumanmedizinTypVersicherter.Get_Anschrift: IXMLAnschriftTyp; begin if ChildNodes.FindNode('anschrift') <> nil then Result := ChildNodes['anschrift'] as IXMLAnschriftTyp else Result := nil; end;
function TXMLHumanmedizinTypVersicherter.Get_Kontakt: IXMLKontaktTypList; begin Result := ChildNodes['kontakt'] as IXMLKontaktTypList; end;
function TXMLHumanmedizinTypVersicherterList.Add: IXMLHumanmedizinTypVersicherter; begin Result := AddItem(-1) as IXMLHumanmedizinTypVersicherter; end;
function TXMLHumanmedizinTypVersicherterList.Insert(const Index: Integer): IXMLHumanmedizinTypVersicherter; begin Result := AddItem(Index) as IXMLHumanmedizinTypVersicherter; end;
function TXMLHumanmedizinTypVersicherterList.Get_Item(Index: Integer): IXMLHumanmedizinTypVersicherter; begin Result := List[Index] as IXMLHumanmedizinTypVersicherter; end;

procedure TXMLHumanmedizinTypPositionen.AfterConstruction;
begin
  RegisterChildNode('goziffer', TXMLGOZifferTyp);
  RegisterChildNode('entschaedigung', TXMLEntschaedigungTyp);
  RegisterChildNode('auslagen', TXMLAuslagenTyp);
  RegisterChildNode('sonstigeshonorar', TXMLHonorarTyp);
  RegisterChildNode('gozziffer', TXMLGOZZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLHumanmedizinTypPositionen.Get_Goziffer: IXMLGOZifferTyp; begin Result := ChildNodes['goziffer'] as IXMLGOZifferTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Entschaedigung: IXMLEntschaedigungTyp; begin Result := ChildNodes['entschaedigung'] as IXMLEntschaedigungTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Auslagen: IXMLAuslagenTyp; begin Result := ChildNodes['auslagen'] as IXMLAuslagenTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Sonstigeshonorar: IXMLHonorarTyp; begin Result := ChildNodes['sonstigeshonorar'] as IXMLHonorarTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Gozziffer: IXMLGOZZifferTyp; begin Result := ChildNodes['gozziffer'] as IXMLGOZZifferTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLHumanmedizinTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLHumanmedizinTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLHumanmedizinTypPositionenList.Add: IXMLHumanmedizinTypPositionen; begin Result := AddItem(-1) as IXMLHumanmedizinTypPositionen; end;
function TXMLHumanmedizinTypPositionenList.Insert(const Index: Integer): IXMLHumanmedizinTypPositionen; begin Result := AddItem(Index) as IXMLHumanmedizinTypPositionen; end;
function TXMLHumanmedizinTypPositionenList.Get_Item(Index: Integer): IXMLHumanmedizinTypPositionen; begin Result := List[Index] as IXMLHumanmedizinTypPositionen; end;

procedure TXMLEigenlaborTyp.AfterConstruction;
begin
  RegisterChildNode('positionen', TXMLEigenlaborTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBelegTyp);
  inherited;
end;
function TXMLEigenlaborTyp.Get_Anfangstext: TXSDTextTyp; begin if ChildNodes.FindNode('anfangstext') <> nil then Result := VarToStr(ChildNodes['anfangstext'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Anfangstext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('anfangstext') = nil then AddChild('anfangstext', TargetNamespace); ChildNodes['anfangstext'].NodeValue := Value; end;
function TXMLEigenlaborTyp.Get_Endetext: TXSDTextTyp; begin if ChildNodes.FindNode('endetext') <> nil then Result := VarToStr(ChildNodes['endetext'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Endetext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('endetext') = nil then AddChild('endetext', TargetNamespace); ChildNodes['endetext'].NodeValue := Value; end;
function TXMLEigenlaborTyp.Get_Positionen: IXMLEigenlaborTypPositionen; begin Result := ChildNodes['positionen'] as IXMLEigenlaborTypPositionen; end;
function TXMLEigenlaborTyp.Get_Summenblock: IXMLSummenblockBelegTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBelegTyp; end;
function TXMLEigenlaborTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLEigenlaborTyp.Get_Belegdatum: string; begin if AttributeNodes.FindNode('belegdatum') <> nil then Result := VarToStr(AttributeNodes['belegdatum'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Belegdatum(const Value: string); begin SetAttribute('belegdatum', Value); end;
function TXMLEigenlaborTyp.Get_Belegnr: TXSDString115Typ; begin if AttributeNodes.FindNode('belegnr') <> nil then Result := VarToStr(AttributeNodes['belegnr'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Belegnr(const Value: TXSDString115Typ); begin SetAttribute('belegnr', Value); end;
function TXMLEigenlaborTyp.Get_Ustidnr: TXSDString115Typ; begin if AttributeNodes.FindNode('ustidnr') <> nil then Result := VarToStr(AttributeNodes['ustidnr'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborTyp.Set_Ustidnr(const Value: TXSDString115Typ); begin SetAttribute('ustidnr', Value); end;
function TXMLEigenlaborTypList.Add: IXMLEigenlaborTyp; begin Result := AddItem(-1) as IXMLEigenlaborTyp; end;
function TXMLEigenlaborTypList.Insert(const Index: Integer): IXMLEigenlaborTyp; begin Result := AddItem(Index) as IXMLEigenlaborTyp; end;
function TXMLEigenlaborTypList.Get_Item(Index: Integer): IXMLEigenlaborTyp; begin Result := List[Index] as IXMLEigenlaborTyp; end;

procedure TXMLEigenlaborTypPositionen.AfterConstruction;
begin
  RegisterChildNode('eigenlabor', TXMLLaborZifferTyp);
  RegisterChildNode('material', TXMLMaterialZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLEigenlaborTypPositionen.Get_Eigenlabor: IXMLLaborZifferTyp; begin Result := ChildNodes['eigenlabor'] as IXMLLaborZifferTyp; end;
function TXMLEigenlaborTypPositionen.Get_Material: IXMLMaterialZifferTyp; begin Result := ChildNodes['material'] as IXMLMaterialZifferTyp; end;
function TXMLEigenlaborTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLEigenlaborTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLEigenlaborTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLEigenlaborTypPositionenList.Add: IXMLEigenlaborTypPositionen; begin Result := AddItem(-1) as IXMLEigenlaborTypPositionen; end;
function TXMLEigenlaborTypPositionenList.Insert(const Index: Integer): IXMLEigenlaborTypPositionen; begin Result := AddItem(Index) as IXMLEigenlaborTypPositionen; end;
function TXMLEigenlaborTypPositionenList.Get_Item(Index: Integer): IXMLEigenlaborTypPositionen; begin Result := List[Index] as IXMLEigenlaborTypPositionen; end;

procedure TXMLFremdlaborTyp.AfterConstruction;
begin
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  RegisterChildNode('positionen', TXMLFremdlaborTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBelegTyp);
  inherited;
end;
function TXMLFremdlaborTyp.Get_Anschrift: IXMLAnschrift2Typ; begin Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ; end;
function TXMLFremdlaborTyp.Get_Anfangstext: TXSDTextTyp; begin if ChildNodes.FindNode('anfangstext') <> nil then Result := VarToStr(ChildNodes['anfangstext'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Anfangstext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('anfangstext') = nil then AddChild('anfangstext', TargetNamespace); ChildNodes['anfangstext'].NodeValue := Value; end;
function TXMLFremdlaborTyp.Get_Endetext: TXSDTextTyp; begin if ChildNodes.FindNode('endetext') <> nil then Result := VarToStr(ChildNodes['endetext'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Endetext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('endetext') = nil then AddChild('endetext', TargetNamespace); ChildNodes['endetext'].NodeValue := Value; end;
function TXMLFremdlaborTyp.Get_Positionen: IXMLFremdlaborTypPositionen; begin Result := ChildNodes['positionen'] as IXMLFremdlaborTypPositionen; end;
function TXMLFremdlaborTyp.Get_Summenblock: IXMLSummenblockBelegTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBelegTyp; end;
function TXMLFremdlaborTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLFremdlaborTyp.Get_Belegdatum: string; begin if AttributeNodes.FindNode('belegdatum') <> nil then Result := VarToStr(AttributeNodes['belegdatum'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Belegdatum(const Value: string); begin SetAttribute('belegdatum', Value); end;
function TXMLFremdlaborTyp.Get_Aisrechnungsnr: string; begin if AttributeNodes.FindNode('aisrechnungsnr') <> nil then Result := VarToStr(AttributeNodes['aisrechnungsnr'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Aisrechnungsnr(const Value: string); begin SetAttribute('aisrechnungsnr', Value); end;
function TXMLFremdlaborTyp.Get_Aisauftragsnr: string; begin if AttributeNodes.FindNode('aisauftragsnr') <> nil then Result := VarToStr(AttributeNodes['aisauftragsnr'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Aisauftragsnr(const Value: string); begin SetAttribute('aisauftragsnr', Value); end;
function TXMLFremdlaborTyp.Get_Aisendbetrag: TXSDBetragTyp; begin if AttributeNodes.FindNode('aisendbetrag') <> nil then Result := VarToStr(AttributeNodes['aisendbetrag'].NodeValue) else Result := ''; end;
procedure TXMLFremdlaborTyp.Set_Aisendbetrag(const Value: TXSDBetragTyp); begin SetAttribute('aisendbetrag', Value); end;
function TXMLFremdlaborTypList.Add: IXMLFremdlaborTyp; begin Result := AddItem(-1) as IXMLFremdlaborTyp; end;
function TXMLFremdlaborTypList.Insert(const Index: Integer): IXMLFremdlaborTyp; begin Result := AddItem(Index) as IXMLFremdlaborTyp; end;
function TXMLFremdlaborTypList.Get_Item(Index: Integer): IXMLFremdlaborTyp; begin Result := List[Index] as IXMLFremdlaborTyp; end;

procedure TXMLFremdlaborTypPositionen.AfterConstruction;
begin
  RegisterChildNode('fremdlabor', TXMLLaborZifferTyp);
  RegisterChildNode('material', TXMLMaterialZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLFremdlaborTypPositionen.Get_Fremdlabor: IXMLLaborZifferTyp; begin Result := ChildNodes['fremdlabor'] as IXMLLaborZifferTyp; end;
function TXMLFremdlaborTypPositionen.Get_Material: IXMLMaterialZifferTyp; begin Result := ChildNodes['material'] as IXMLMaterialZifferTyp; end;
function TXMLFremdlaborTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLFremdlaborTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLFremdlaborTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLFremdlaborTypPositionenList.Add: IXMLFremdlaborTypPositionen; begin Result := AddItem(-1) as IXMLFremdlaborTypPositionen; end;
function TXMLFremdlaborTypPositionenList.Insert(const Index: Integer): IXMLFremdlaborTypPositionen; begin Result := AddItem(Index) as IXMLFremdlaborTypPositionen; end;
function TXMLFremdlaborTypPositionenList.Get_Item(Index: Integer): IXMLFremdlaborTypPositionen; begin Result := List[Index] as IXMLFremdlaborTypPositionen; end;

procedure TXMLMaterialTyp.AfterConstruction;
begin
  RegisterChildNode('positionen', TXMLMaterialTypPositionen);
  RegisterChildNode('summenblock', TXMLSummenblockBelegTyp);
  inherited;
end;
function TXMLMaterialTyp.Get_Anfangstext: TXSDTextTyp; begin if ChildNodes.FindNode('anfangstext') <> nil then Result := VarToStr(ChildNodes['anfangstext'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Anfangstext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('anfangstext') = nil then AddChild('anfangstext', TargetNamespace); ChildNodes['anfangstext'].NodeValue := Value; end;
function TXMLMaterialTyp.Get_Endetext: TXSDTextTyp; begin if ChildNodes.FindNode('endetext') <> nil then Result := VarToStr(ChildNodes['endetext'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Endetext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('endetext') = nil then AddChild('endetext', TargetNamespace); ChildNodes['endetext'].NodeValue := Value; end;
function TXMLMaterialTyp.Get_Positionen: IXMLMaterialTypPositionen; begin Result := ChildNodes['positionen'] as IXMLMaterialTypPositionen; end;
function TXMLMaterialTyp.Get_Summenblock: IXMLSummenblockBelegTyp; begin Result := ChildNodes['summenblock'] as IXMLSummenblockBelegTyp; end;
function TXMLMaterialTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLMaterialTyp.Get_Belegdatum: string; begin if AttributeNodes.FindNode('belegdatum') <> nil then Result := VarToStr(AttributeNodes['belegdatum'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Belegdatum(const Value: string); begin SetAttribute('belegdatum', Value); end;
function TXMLMaterialTyp.Get_Belegnr: TXSDString115Typ; begin if AttributeNodes.FindNode('belegnr') <> nil then Result := VarToStr(AttributeNodes['belegnr'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Belegnr(const Value: TXSDString115Typ); begin SetAttribute('belegnr', Value); end;
function TXMLMaterialTyp.Get_Belegaktenzeichen: TXSDString140Typ; begin if AttributeNodes.FindNode('belegaktenzeichen') <> nil then Result := VarToStr(AttributeNodes['belegaktenzeichen'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Belegaktenzeichen(const Value: TXSDString140Typ); begin SetAttribute('belegaktenzeichen', Value); end;
function TXMLMaterialTyp.Get_Ustidnr: TXSDString115Typ; begin if AttributeNodes.FindNode('ustidnr') <> nil then Result := VarToStr(AttributeNodes['ustidnr'].NodeValue) else Result := ''; end;
procedure TXMLMaterialTyp.Set_Ustidnr(const Value: TXSDString115Typ); begin SetAttribute('ustidnr', Value); end;
function TXMLMaterialTypList.Add: IXMLMaterialTyp; begin Result := AddItem(-1) as IXMLMaterialTyp; end;
function TXMLMaterialTypList.Insert(const Index: Integer): IXMLMaterialTyp; begin Result := AddItem(Index) as IXMLMaterialTyp; end;
function TXMLMaterialTypList.Get_Item(Index: Integer): IXMLMaterialTyp; begin Result := List[Index] as IXMLMaterialTyp; end;

procedure TXMLMaterialTypPositionen.AfterConstruction;
begin
  RegisterChildNode('material', TXMLMaterialZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLMaterialTypPositionen.Get_Material: IXMLMaterialZifferTyp; begin Result := ChildNodes['material'] as IXMLMaterialZifferTyp; end;
function TXMLMaterialTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLMaterialTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLMaterialTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLMaterialTypPositionenList.Add: IXMLMaterialTypPositionen; begin Result := AddItem(-1) as IXMLMaterialTypPositionen; end;
function TXMLMaterialTypPositionenList.Insert(const Index: Integer): IXMLMaterialTypPositionen; begin Result := AddItem(Index) as IXMLMaterialTypPositionen; end;
function TXMLMaterialTypPositionenList.Get_Item(Index: Integer): IXMLMaterialTypPositionen; begin Result := List[Index] as IXMLMaterialTypPositionen; end;

procedure TXMLMaterialpassTyp.AfterConstruction;
begin
  RegisterChildNode('positionen', TXMLMaterialpassTypPositionen);
  inherited;
end;
function TXMLMaterialpassTyp.Get_Anfangstext: TXSDTextTyp; begin if ChildNodes.FindNode('anfangstext') <> nil then Result := VarToStr(ChildNodes['anfangstext'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Anfangstext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('anfangstext') = nil then AddChild('anfangstext', TargetNamespace); ChildNodes['anfangstext'].NodeValue := Value; end;
function TXMLMaterialpassTyp.Get_Endetext: TXSDTextTyp; begin if ChildNodes.FindNode('endetext') <> nil then Result := VarToStr(ChildNodes['endetext'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Endetext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('endetext') = nil then AddChild('endetext', TargetNamespace); ChildNodes['endetext'].NodeValue := Value; end;
function TXMLMaterialpassTyp.Get_Positionen: IXMLMaterialpassTypPositionen; begin Result := ChildNodes['positionen'] as IXMLMaterialpassTypPositionen; end;
function TXMLMaterialpassTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLMaterialpassTyp.Get_Belegdatum: string; begin if AttributeNodes.FindNode('belegdatum') <> nil then Result := VarToStr(AttributeNodes['belegdatum'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Belegdatum(const Value: string); begin SetAttribute('belegdatum', Value); end;
function TXMLMaterialpassTyp.Get_Aisrechnungsnr: string; begin if AttributeNodes.FindNode('aisrechnungsnr') <> nil then Result := VarToStr(AttributeNodes['aisrechnungsnr'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Aisrechnungsnr(const Value: string); begin SetAttribute('aisrechnungsnr', Value); end;
function TXMLMaterialpassTyp.Get_Aisaktenzeichen: string; begin if AttributeNodes.FindNode('aisaktenzeichen') <> nil then Result := VarToStr(AttributeNodes['aisaktenzeichen'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassTyp.Set_Aisaktenzeichen(const Value: string); begin SetAttribute('aisaktenzeichen', Value); end;
function TXMLMaterialpassTypList.Add: IXMLMaterialpassTyp; begin Result := AddItem(-1) as IXMLMaterialpassTyp; end;
function TXMLMaterialpassTypList.Insert(const Index: Integer): IXMLMaterialpassTyp; begin Result := AddItem(Index) as IXMLMaterialpassTyp; end;
function TXMLMaterialpassTypList.Get_Item(Index: Integer): IXMLMaterialpassTyp; begin Result := List[Index] as IXMLMaterialpassTyp; end;

procedure TXMLMaterialpassTypPositionen.AfterConstruction;
begin
  RegisterChildNode('materialpass', TXMLMaterialpassZifferTyp);
  RegisterChildNode('text', TXMLTextzeileTyp);
  inherited;
end;
function TXMLMaterialpassTypPositionen.Get_Materialpass: IXMLMaterialpassZifferTyp; begin Result := ChildNodes['materialpass'] as IXMLMaterialpassZifferTyp; end;
function TXMLMaterialpassTypPositionen.Get_Text: IXMLTextzeileTyp; begin Result := ChildNodes['text'] as IXMLTextzeileTyp; end;
function TXMLMaterialpassTypPositionen.Get_Posanzahl: Integer; begin if AttributeNodes.FindNode('posanzahl') <> nil then Result := Integer(AttributeNodes['posanzahl'].NodeValue) else Result := 0; end;
procedure TXMLMaterialpassTypPositionen.Set_Posanzahl(const Value: Integer); begin SetAttribute('posanzahl', Value); end;
function TXMLMaterialpassTypPositionenList.Add: IXMLMaterialpassTypPositionen; begin Result := AddItem(-1) as IXMLMaterialpassTypPositionen; end;
function TXMLMaterialpassTypPositionenList.Insert(const Index: Integer): IXMLMaterialpassTypPositionen; begin Result := AddItem(Index) as IXMLMaterialpassTypPositionen; end;
function TXMLMaterialpassTypPositionenList.Get_Item(Index: Integer): IXMLMaterialpassTypPositionen; begin Result := List[Index] as IXMLMaterialpassTypPositionen; end;

procedure TXMLSummenblockBelegTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLSummenblockBelegTyp.Get_Belegrechnungsbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('belegrechnungsbetrag') <> nil then Result := VarToStr(ChildNodes['belegrechnungsbetrag'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBelegTyp.Set_Belegrechnungsbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('belegrechnungsbetrag') = nil then AddChild('belegrechnungsbetrag', TargetNamespace); ChildNodes['belegrechnungsbetrag'].NodeValue := Value; end;
function TXMLSummenblockBelegTypList.Add: IXMLSummenblockBelegTyp; begin Result := AddItem(-1) as IXMLSummenblockBelegTyp; end;
function TXMLSummenblockBelegTypList.Insert(const Index: Integer): IXMLSummenblockBelegTyp; begin Result := AddItem(Index) as IXMLSummenblockBelegTyp; end;
function TXMLSummenblockBelegTypList.Get_Item(Index: Integer): IXMLSummenblockBelegTyp; begin Result := List[Index] as IXMLSummenblockBelegTyp; end;

procedure TXMLSummenblockBelegTypBelegsumme.AfterConstruction;
begin
  inherited;
end;
function TXMLSummenblockBelegTypBelegsumme.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLSummenblockBelegTypBelegsumme.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLSummenblockBelegTypBelegsumme.Get_Text: TXSDString140Typ; begin if AttributeNodes.FindNode('text') <> nil then Result := VarToStr(AttributeNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBelegTypBelegsumme.Set_Text(const Value: TXSDString140Typ); begin SetAttribute('text', Value); end;
function TXMLSummenblockBelegTypBelegsummeList.Add: IXMLSummenblockBelegTypBelegsumme; begin Result := AddItem(-1) as IXMLSummenblockBelegTypBelegsumme; end;
function TXMLSummenblockBelegTypBelegsummeList.Insert(const Index: Integer): IXMLSummenblockBelegTypBelegsumme; begin Result := AddItem(Index) as IXMLSummenblockBelegTypBelegsumme; end;
function TXMLSummenblockBelegTypBelegsummeList.Get_Item(Index: Integer): IXMLSummenblockBelegTypBelegsumme; begin Result := List[Index] as IXMLSummenblockBelegTypBelegsumme; end;

procedure TXMLBegruendungTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBegruendungTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLBegruendungTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLBegruendungTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLBegruendungTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLBegruendungTypList.Add: IXMLBegruendungTyp; begin Result := AddItem(-1) as IXMLBegruendungTyp; end;
function TXMLBegruendungTypList.Insert(const Index: Integer): IXMLBegruendungTyp; begin Result := AddItem(Index) as IXMLBegruendungTyp; end;
function TXMLBegruendungTypList.Get_Item(Index: Integer): IXMLBegruendungTyp; begin Result := List[Index] as IXMLBegruendungTyp; end;

procedure TXMLBehandlungsortTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBehandlungsortTyp.Get_Bsnr: string; begin if ChildNodes.FindNode('bsnr') <> nil then Result := VarToStr(ChildNodes['bsnr'].NodeValue) else Result := ''; end;
procedure TXMLBehandlungsortTyp.Set_Bsnr(const Value: string); begin if ChildNodes.FindNode('bsnr') = nil then AddChild('bsnr', TargetNamespace); ChildNodes['bsnr'].NodeValue := Value; end;
function TXMLBehandlungsortTyp.Get_Nbsnr: string; begin if ChildNodes.FindNode('nbsnr') <> nil then Result := VarToStr(ChildNodes['nbsnr'].NodeValue) else Result := ''; end;
procedure TXMLBehandlungsortTyp.Set_Nbsnr(const Value: string); begin if ChildNodes.FindNode('nbsnr') = nil then AddChild('nbsnr', TargetNamespace); ChildNodes['nbsnr'].NodeValue := Value; end;
function TXMLBehandlungsortTypList.Add: IXMLBehandlungsortTyp; begin Result := AddItem(-1) as IXMLBehandlungsortTyp; end;
function TXMLBehandlungsortTypList.Insert(const Index: Integer): IXMLBehandlungsortTyp; begin Result := AddItem(Index) as IXMLBehandlungsortTyp; end;
function TXMLBehandlungsortTypList.Get_Item(Index: Integer): IXMLBehandlungsortTyp; begin Result := List[Index] as IXMLBehandlungsortTyp; end;

procedure TXMLBeteiligungTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBeteiligungTyp.Get_Beteiligter: string; begin if ChildNodes.FindNode('beteiligter') <> nil then Result := VarToStr(ChildNodes['beteiligter'].NodeValue) else Result := ''; end;
procedure TXMLBeteiligungTyp.Set_Beteiligter(const Value: string); begin if ChildNodes.FindNode('beteiligter') = nil then AddChild('beteiligter', TargetNamespace); ChildNodes['beteiligter'].NodeValue := Value; end;
function TXMLBeteiligungTypList.Add: IXMLBeteiligungTyp; begin Result := AddItem(-1) as IXMLBeteiligungTyp; end;
function TXMLBeteiligungTypList.Insert(const Index: Integer): IXMLBeteiligungTyp; begin Result := AddItem(Index) as IXMLBeteiligungTyp; end;
function TXMLBeteiligungTypList.Get_Item(Index: Integer): IXMLBeteiligungTyp; begin Result := List[Index] as IXMLBeteiligungTyp; end;

procedure TXMLDiagnoseTyp.AfterConstruction;
begin
  RegisterChildNode('code', TXMLDiagnosecodeTyp);
  inherited;
end;
function TXMLDiagnoseTyp.Get_Text: string; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Text(const Value: string); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLDiagnoseTyp.Get_Code: IXMLDiagnosecodeTyp; begin if ChildNodes.FindNode('code') <> nil then Result := ChildNodes['code'] as IXMLDiagnosecodeTyp else Result := nil; end;
function TXMLDiagnoseTyp.Get_Typ: TXSDDiagnosetypEnum; begin if ChildNodes.FindNode('typ') <> nil then Result := VarToStr(ChildNodes['typ'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Typ(const Value: TXSDDiagnosetypEnum); begin if ChildNodes.FindNode('typ') = nil then AddChild('typ', TargetNamespace); ChildNodes['typ'].NodeValue := Value; end;
function TXMLDiagnoseTyp.Get_Art: TXSDDiagnoseartEnum; begin if ChildNodes.FindNode('art') <> nil then Result := VarToStr(ChildNodes['art'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Art(const Value: TXSDDiagnoseartEnum); begin if ChildNodes.FindNode('art') = nil then AddChild('art', TargetNamespace); ChildNodes['art'].NodeValue := Value; end;
function TXMLDiagnoseTyp.Get_Datum: string; begin if ChildNodes.FindNode('datum') <> nil then Result := VarToStr(ChildNodes['datum'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Datum(const Value: string); begin if ChildNodes.FindNode('datum') = nil then AddChild('datum', TargetNamespace); ChildNodes['datum'].NodeValue := Value; end;
function TXMLDiagnoseTyp.Get_Sicherheit: TXSDDiagnosesicherheitEnum; begin if ChildNodes.FindNode('sicherheit') <> nil then Result := VarToStr(ChildNodes['sicherheit'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Sicherheit(const Value: TXSDDiagnosesicherheitEnum); begin if ChildNodes.FindNode('sicherheit') = nil then AddChild('sicherheit', TargetNamespace); ChildNodes['sicherheit'].NodeValue := Value; end;
function TXMLDiagnoseTyp.Get_Lokalisation: TXSDLokalisationEnum; begin if ChildNodes.FindNode('lokalisation') <> nil then Result := VarToStr(ChildNodes['lokalisation'].NodeValue) else Result := ''; end;
procedure TXMLDiagnoseTyp.Set_Lokalisation(const Value: TXSDLokalisationEnum); begin if ChildNodes.FindNode('lokalisation') = nil then AddChild('lokalisation', TargetNamespace); ChildNodes['lokalisation'].NodeValue := Value; end;
function TXMLDiagnoseTypList.Add: IXMLDiagnoseTyp; begin Result := AddItem(-1) as IXMLDiagnoseTyp; end;
function TXMLDiagnoseTypList.Insert(const Index: Integer): IXMLDiagnoseTyp; begin Result := AddItem(Index) as IXMLDiagnoseTyp; end;
function TXMLDiagnoseTypList.Get_Item(Index: Integer): IXMLDiagnoseTyp; begin Result := List[Index] as IXMLDiagnoseTyp; end;

procedure TXMLDiagnosecodeTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLDiagnosecodeTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLDiagnosecodeTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLDiagnosecodeTyp.Get_System: TXSDDiagnosesystemEnum; begin if AttributeNodes.FindNode('system') <> nil then Result := VarToStr(AttributeNodes['system'].NodeValue) else Result := ''; end;
procedure TXMLDiagnosecodeTyp.Set_System(const Value: TXSDDiagnosesystemEnum); begin SetAttribute('system', Value); end;
function TXMLDiagnosecodeTypList.Add: IXMLDiagnosecodeTyp; begin Result := AddItem(-1) as IXMLDiagnosecodeTyp; end;
function TXMLDiagnosecodeTypList.Insert(const Index: Integer): IXMLDiagnosecodeTyp; begin Result := AddItem(Index) as IXMLDiagnosecodeTyp; end;
function TXMLDiagnosecodeTypList.Get_Item(Index: Integer): IXMLDiagnosecodeTyp; begin Result := List[Index] as IXMLDiagnosecodeTyp; end;

procedure TXMLFachangabeTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLFachangabeTyp.Get_Value: Integer; begin Result := NodeValue; end;
procedure TXMLFachangabeTyp.Set_Value(const Value: Integer); begin NodeValue := Value; end;
function TXMLFachangabeTyp.Get_Textname: string; begin if AttributeNodes.FindNode('textname') <> nil then Result := VarToStr(AttributeNodes['textname'].NodeValue) else Result := ''; end;
procedure TXMLFachangabeTyp.Set_Textname(const Value: string); begin SetAttribute('textname', Value); end;
function TXMLFachangabeTypList.Add: IXMLFachangabeTyp; begin Result := AddItem(-1) as IXMLFachangabeTyp; end;
function TXMLFachangabeTypList.Insert(const Index: Integer): IXMLFachangabeTyp; begin Result := AddItem(Index) as IXMLFachangabeTyp; end;
function TXMLFachangabeTypList.Get_Item(Index: Integer): IXMLFachangabeTyp; begin Result := List[Index] as IXMLFachangabeTyp; end;

procedure TXMLFachbereichTyp.AfterConstruction;
begin
  RegisterChildNode('fachgebiet', TXMLFachbereichTypFachgebiet);
  RegisterChildNode('facharzt', TXMLFachbereichTypFacharzt);
  ItemTag := 'facharzt';
  ItemInterface := IXMLFachbereichTypFacharzt;
  inherited;
end;
function TXMLFachbereichTyp.Get_Fachgebiet: IXMLFachbereichTypFachgebiet; begin Result := ChildNodes['fachgebiet'] as IXMLFachbereichTypFachgebiet; end;
function TXMLFachbereichTyp.Get_Facharzt: IXMLFachbereichTypFacharztList; begin Result := ChildNodes['facharzt'] as IXMLFachbereichTypFacharztList; end;
function TXMLFachbereichTypList.Add: IXMLFachbereichTyp; begin Result := AddItem(-1) as IXMLFachbereichTyp; end;
function TXMLFachbereichTypList.Insert(const Index: Integer): IXMLFachbereichTyp; begin Result := AddItem(Index) as IXMLFachbereichTyp; end;
function TXMLFachbereichTypList.Get_Item(Index: Integer): IXMLFachbereichTyp; begin Result := List[Index] as IXMLFachbereichTyp; end;

procedure TXMLFachbereichTypFachgebiet.AfterConstruction;
begin
  inherited;
end;
function TXMLFachbereichTypFachgebietList.Add: IXMLFachbereichTypFachgebiet; begin Result := AddItem(-1) as IXMLFachbereichTypFachgebiet; end;
function TXMLFachbereichTypFachgebietList.Insert(const Index: Integer): IXMLFachbereichTypFachgebiet; begin Result := AddItem(Index) as IXMLFachbereichTypFachgebiet; end;
function TXMLFachbereichTypFachgebietList.Get_Item(Index: Integer): IXMLFachbereichTypFachgebiet; begin Result := List[Index] as IXMLFachbereichTypFachgebiet; end;

procedure TXMLFachbereichTypFacharzt.AfterConstruction;
begin
  inherited;
end;
function TXMLFachbereichTypFacharztList.Add: IXMLFachbereichTypFacharzt; begin Result := AddItem(-1) as IXMLFachbereichTypFacharzt; end;
function TXMLFachbereichTypFacharztList.Insert(const Index: Integer): IXMLFachbereichTypFacharzt; begin Result := AddItem(Index) as IXMLFachbereichTypFacharzt; end;
function TXMLFachbereichTypFacharztList.Get_Item(Index: Integer): IXMLFachbereichTypFacharzt; begin Result := List[Index] as IXMLFachbereichTypFacharzt; end;

procedure TXMLKontoTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLKontoTyp.Get_Inhaber: string; begin if ChildNodes.FindNode('inhaber') <> nil then Result := VarToStr(ChildNodes['inhaber'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Inhaber(const Value: string); begin if ChildNodes.FindNode('inhaber') = nil then AddChild('inhaber', TargetNamespace); ChildNodes['inhaber'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Bank: string; begin if ChildNodes.FindNode('bank') <> nil then Result := VarToStr(ChildNodes['bank'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Bank(const Value: string); begin if ChildNodes.FindNode('bank') = nil then AddChild('bank', TargetNamespace); ChildNodes['bank'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Blz: string; begin if ChildNodes.FindNode('blz') <> nil then Result := VarToStr(ChildNodes['blz'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Blz(const Value: string); begin if ChildNodes.FindNode('blz') = nil then AddChild('blz', TargetNamespace); ChildNodes['blz'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Kontonr: string; begin if ChildNodes.FindNode('kontonr') <> nil then Result := VarToStr(ChildNodes['kontonr'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Kontonr(const Value: string); begin if ChildNodes.FindNode('kontonr') = nil then AddChild('kontonr', TargetNamespace); ChildNodes['kontonr'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Bic: string; begin if ChildNodes.FindNode('bic') <> nil then Result := VarToStr(ChildNodes['bic'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Bic(const Value: string); begin if ChildNodes.FindNode('bic') = nil then AddChild('bic', TargetNamespace); ChildNodes['bic'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Iban: string; begin if ChildNodes.FindNode('iban') <> nil then Result := VarToStr(ChildNodes['iban'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Iban(const Value: string); begin if ChildNodes.FindNode('iban') = nil then AddChild('iban', TargetNamespace); ChildNodes['iban'].NodeValue := Value; end;
function TXMLKontoTyp.Get_Mandatsreferenz: TXSDString140Typ; begin if ChildNodes.FindNode('mandatsreferenz') <> nil then Result := VarToStr(ChildNodes['mandatsreferenz'].NodeValue) else Result := ''; end;
procedure TXMLKontoTyp.Set_Mandatsreferenz(const Value: TXSDString140Typ); begin if ChildNodes.FindNode('mandatsreferenz') = nil then AddChild('mandatsreferenz', TargetNamespace); ChildNodes['mandatsreferenz'].NodeValue := Value; end;
function TXMLKontoTypList.Add: IXMLKontoTyp; begin Result := AddItem(-1) as IXMLKontoTyp; end;
function TXMLKontoTypList.Insert(const Index: Integer): IXMLKontoTyp; begin Result := AddItem(Index) as IXMLKontoTyp; end;
function TXMLKontoTypList.Get_Item(Index: Integer): IXMLKontoTyp; begin Result := List[Index] as IXMLKontoTyp; end;

procedure TXMLKVKartendatenTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLKVKartendatenTyp.Get_Kassenname: string; begin if ChildNodes.FindNode('kassenname') <> nil then Result := VarToStr(ChildNodes['kassenname'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Kassenname(const Value: string); begin if ChildNodes.FindNode('kassenname') = nil then AddChild('kassenname', TargetNamespace); ChildNodes['kassenname'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Kassennr: string; begin if ChildNodes.FindNode('kassennr') <> nil then Result := VarToStr(ChildNodes['kassennr'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Kassennr(const Value: string); begin if ChildNodes.FindNode('kassennr') = nil then AddChild('kassennr', TargetNamespace); ChildNodes['kassennr'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Versichertennr: string; begin if ChildNodes.FindNode('versichertennr') <> nil then Result := VarToStr(ChildNodes['versichertennr'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Versichertennr(const Value: string); begin if ChildNodes.FindNode('versichertennr') = nil then AddChild('versichertennr', TargetNamespace); ChildNodes['versichertennr'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Versichertenart: TXSDVersichertenartEnum; begin if ChildNodes.FindNode('versichertenart') <> nil then Result := VarToStr(ChildNodes['versichertenart'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Versichertenart(const Value: TXSDVersichertenartEnum); begin if ChildNodes.FindNode('versichertenart') = nil then AddChild('versichertenart', TargetNamespace); ChildNodes['versichertenart'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum; begin if ChildNodes.FindNode('bpersonenkreis') <> nil then Result := VarToStr(ChildNodes['bpersonenkreis'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum); begin if ChildNodes.FindNode('bpersonenkreis') = nil then AddChild('bpersonenkreis', TargetNamespace); ChildNodes['bpersonenkreis'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Dmpteilnahme: TXSDDMPkennzeichenEnum; begin if ChildNodes.FindNode('dmpteilnahme') <> nil then Result := VarToStr(ChildNodes['dmpteilnahme'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum); begin if ChildNodes.FindNode('dmpteilnahme') = nil then AddChild('dmpteilnahme', TargetNamespace); ChildNodes['dmpteilnahme'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Kzvnr: string; begin if ChildNodes.FindNode('kzvnr') <> nil then Result := VarToStr(ChildNodes['kzvnr'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Kzvnr(const Value: string); begin if ChildNodes.FindNode('kzvnr') = nil then AddChild('kzvnr', TargetNamespace); ChildNodes['kzvnr'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Gueltigbis: string; begin if ChildNodes.FindNode('gueltigbis') <> nil then Result := VarToStr(ChildNodes['gueltigbis'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Gueltigbis(const Value: string); begin if ChildNodes.FindNode('gueltigbis') = nil then AddChild('gueltigbis', TargetNamespace); ChildNodes['gueltigbis'].NodeValue := Value; end;
function TXMLKVKartendatenTyp.Get_Einlesedatum: string; begin if ChildNodes.FindNode('einlesedatum') <> nil then Result := VarToStr(ChildNodes['einlesedatum'].NodeValue) else Result := ''; end;
procedure TXMLKVKartendatenTyp.Set_Einlesedatum(const Value: string); begin if ChildNodes.FindNode('einlesedatum') = nil then AddChild('einlesedatum', TargetNamespace); ChildNodes['einlesedatum'].NodeValue := Value; end;
function TXMLKVKartendatenTypList.Add: IXMLKVKartendatenTyp; begin Result := AddItem(-1) as IXMLKVKartendatenTyp; end;
function TXMLKVKartendatenTypList.Insert(const Index: Integer): IXMLKVKartendatenTyp; begin Result := AddItem(Index) as IXMLKVKartendatenTyp; end;
function TXMLKVKartendatenTypList.Get_Item(Index: Integer): IXMLKVKartendatenTyp; begin Result := List[Index] as IXMLKVKartendatenTyp; end;

procedure TXMLKfoplandatenTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLKfoplandatenTyp.Get_Leistungsquartal: string; begin if ChildNodes.FindNode('leistungsquartal') <> nil then Result := VarToStr(ChildNodes['leistungsquartal'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Leistungsquartal(const Value: string); begin if ChildNodes.FindNode('leistungsquartal') = nil then AddChild('leistungsquartal', TargetNamespace); ChildNodes['leistungsquartal'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Leistungsjahr: string; begin if ChildNodes.FindNode('leistungsjahr') <> nil then Result := VarToStr(ChildNodes['leistungsjahr'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Leistungsjahr(const Value: string); begin if ChildNodes.FindNode('leistungsjahr') = nil then AddChild('leistungsjahr', TargetNamespace); ChildNodes['leistungsjahr'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Leerquartal: Boolean; begin if ChildNodes.FindNode('leerquartal') <> nil then Result := Boolean(ChildNodes['leerquartal'].NodeValue) else Result := False; end;
procedure TXMLKfoplandatenTyp.Set_Leerquartal(const Value: Boolean); begin if ChildNodes.FindNode('leerquartal') = nil then AddChild('leerquartal', TargetNamespace); ChildNodes['leerquartal'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Abschlagsnr: TXSDString18Typ; begin if ChildNodes.FindNode('abschlagsnr') <> nil then Result := VarToStr(ChildNodes['abschlagsnr'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Abschlagsnr(const Value: TXSDString18Typ); begin if ChildNodes.FindNode('abschlagsnr') = nil then AddChild('abschlagsnr', TargetNamespace); ChildNodes['abschlagsnr'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Planungsdatum: string; begin if ChildNodes.FindNode('planungsdatum') <> nil then Result := VarToStr(ChildNodes['planungsdatum'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Planungsdatum(const Value: string); begin if ChildNodes.FindNode('planungsdatum') = nil then AddChild('planungsdatum', TargetNamespace); ChildNodes['planungsdatum'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Verlaengerungsdatum: string; begin if ChildNodes.FindNode('verlaengerungsdatum') <> nil then Result := VarToStr(ChildNodes['verlaengerungsdatum'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Verlaengerungsdatum(const Value: string); begin if ChildNodes.FindNode('verlaengerungsdatum') = nil then AddChild('verlaengerungsdatum', TargetNamespace); ChildNodes['verlaengerungsdatum'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Behandlungsbeginn: string; begin if ChildNodes.FindNode('behandlungsbeginn') <> nil then Result := VarToStr(ChildNodes['behandlungsbeginn'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Behandlungsbeginn(const Value: string); begin if ChildNodes.FindNode('behandlungsbeginn') = nil then AddChild('behandlungsbeginn', TargetNamespace); ChildNodes['behandlungsbeginn'].NodeValue := Value; end;
function TXMLKfoplandatenTyp.Get_Behandlungsende: string; begin if ChildNodes.FindNode('behandlungsende') <> nil then Result := VarToStr(ChildNodes['behandlungsende'].NodeValue) else Result := ''; end;
procedure TXMLKfoplandatenTyp.Set_Behandlungsende(const Value: string); begin if ChildNodes.FindNode('behandlungsende') = nil then AddChild('behandlungsende', TargetNamespace); ChildNodes['behandlungsende'].NodeValue := Value; end;
function TXMLKfoplandatenTypList.Add: IXMLKfoplandatenTyp; begin Result := AddItem(-1) as IXMLKfoplandatenTyp; end;
function TXMLKfoplandatenTypList.Insert(const Index: Integer): IXMLKfoplandatenTyp; begin Result := AddItem(Index) as IXMLKfoplandatenTyp; end;
function TXMLKfoplandatenTypList.Get_Item(Index: Integer): IXMLKfoplandatenTyp; begin Result := List[Index] as IXMLKfoplandatenTyp; end;

procedure TXMLNachlassTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLNachlassTyp.Get_Betrag: TXSDBetragTyp; begin if ChildNodes.FindNode('betrag') <> nil then Result := VarToStr(ChildNodes['betrag'].NodeValue) else Result := ''; end;
procedure TXMLNachlassTyp.Set_Betrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('betrag') = nil then AddChild('betrag', TargetNamespace); ChildNodes['betrag'].NodeValue := Value; end;
function TXMLNachlassTyp.Get_Prozent: TXSDProzentTyp; begin if ChildNodes.FindNode('prozent') <> nil then Result := VarToStr(ChildNodes['prozent'].NodeValue) else Result := ''; end;
procedure TXMLNachlassTyp.Set_Prozent(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('prozent') = nil then AddChild('prozent', TargetNamespace); ChildNodes['prozent'].NodeValue := Value; end;
function TXMLNachlassTypList.Add: IXMLNachlassTyp; begin Result := AddItem(-1) as IXMLNachlassTyp; end;
function TXMLNachlassTypList.Insert(const Index: Integer): IXMLNachlassTyp; begin Result := AddItem(Index) as IXMLNachlassTyp; end;
function TXMLNachlassTypList.Get_Item(Index: Integer): IXMLNachlassTyp; begin Result := List[Index] as IXMLNachlassTyp; end;

procedure TXMLOPSTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLOPSTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLOPSTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLOPSTyp.Get_Lokalisation: TXSDLokalisationEnum; begin if AttributeNodes.FindNode('lokalisation') <> nil then Result := VarToStr(AttributeNodes['lokalisation'].NodeValue) else Result := ''; end;
procedure TXMLOPSTyp.Set_Lokalisation(const Value: TXSDLokalisationEnum); begin SetAttribute('lokalisation', Value); end;
function TXMLOPSTypList.Add: IXMLOPSTyp; begin Result := AddItem(-1) as IXMLOPSTyp; end;
function TXMLOPSTypList.Insert(const Index: Integer): IXMLOPSTyp; begin Result := AddItem(Index) as IXMLOPSTyp; end;
function TXMLOPSTypList.Get_Item(Index: Integer): IXMLOPSTyp; begin Result := List[Index] as IXMLOPSTyp; end;

procedure TXMLRatenzahlungTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLRatenzahlungTyp.Get_Vereinbarung: TXSDRatenvereinbarungEnum; begin if ChildNodes.FindNode('vereinbarung') <> nil then Result := VarToStr(ChildNodes['vereinbarung'].NodeValue) else Result := ''; end;
procedure TXMLRatenzahlungTyp.Set_Vereinbarung(const Value: TXSDRatenvereinbarungEnum); begin if ChildNodes.FindNode('vereinbarung') = nil then AddChild('vereinbarung', TargetNamespace); ChildNodes['vereinbarung'].NodeValue := Value; end;
function TXMLRatenzahlungTyp.Get_Ersterbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('ersterbetrag') <> nil then Result := VarToStr(ChildNodes['ersterbetrag'].NodeValue) else Result := ''; end;
procedure TXMLRatenzahlungTyp.Set_Ersterbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('ersterbetrag') = nil then AddChild('ersterbetrag', TargetNamespace); ChildNodes['ersterbetrag'].NodeValue := Value; end;
function TXMLRatenzahlungTyp.Get_Startdatum: string; begin if ChildNodes.FindNode('startdatum') <> nil then Result := VarToStr(ChildNodes['startdatum'].NodeValue) else Result := ''; end;
procedure TXMLRatenzahlungTyp.Set_Startdatum(const Value: string); begin if ChildNodes.FindNode('startdatum') = nil then AddChild('startdatum', TargetNamespace); ChildNodes['startdatum'].NodeValue := Value; end;
function TXMLRatenzahlungTypList.Add: IXMLRatenzahlungTyp; begin Result := AddItem(-1) as IXMLRatenzahlungTyp; end;
function TXMLRatenzahlungTypList.Insert(const Index: Integer): IXMLRatenzahlungTyp; begin Result := AddItem(Index) as IXMLRatenzahlungTyp; end;
function TXMLRatenzahlungTypList.Get_Item(Index: Integer): IXMLRatenzahlungTyp; begin Result := List[Index] as IXMLRatenzahlungTyp; end;

procedure TXMLSummenblockBemaTyp.AfterConstruction;
begin
  RegisterChildNode('summehonorarbema', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summezahlbetrag', TXMLBetragBezeichnungTyp);
  inherited;
end;
function TXMLSummenblockBemaTyp.Get_Summehonorarbema: IXMLBetragBezeichnungTyp; begin Result := ChildNodes['summehonorarbema'] as IXMLBetragBezeichnungTyp; end;
function TXMLSummenblockBemaTyp.Get_Summezahlbetrag: IXMLBetragBezeichnungTyp; begin Result := ChildNodes['summezahlbetrag'] as IXMLBetragBezeichnungTyp; end;
function TXMLSummenblockBemaTypList.Add: IXMLSummenblockBemaTyp; begin Result := AddItem(-1) as IXMLSummenblockBemaTyp; end;
function TXMLSummenblockBemaTypList.Insert(const Index: Integer): IXMLSummenblockBemaTyp; begin Result := AddItem(Index) as IXMLSummenblockBemaTyp; end;
function TXMLSummenblockBemaTypList.Get_Item(Index: Integer): IXMLSummenblockBemaTyp; begin Result := List[Index] as IXMLSummenblockBemaTyp; end;

procedure TXMLSummenblockBmgTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLSummenblockBmgTyp.Get_Gozeigenlabor: TXSDBetragTyp; begin if ChildNodes.FindNode('gozeigenlabor') <> nil then Result := VarToStr(ChildNodes['gozeigenlabor'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozeigenlabor(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozeigenlabor') = nil then AddChild('gozeigenlabor', TargetNamespace); ChildNodes['gozeigenlabor'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozfremdlabor: TXSDBetragTyp; begin if ChildNodes.FindNode('gozfremdlabor') <> nil then Result := VarToStr(ChildNodes['gozfremdlabor'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozfremdlabor(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozfremdlabor') = nil then AddChild('gozfremdlabor', TargetNamespace); ChildNodes['gozfremdlabor'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozzwischensummehonorar: TXSDBetragTyp; begin if ChildNodes.FindNode('gozzwischensummehonorar') <> nil then Result := VarToStr(ChildNodes['gozzwischensummehonorar'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozzwischensummehonorar(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozzwischensummehonorar') = nil then AddChild('gozzwischensummehonorar', TargetNamespace); ChildNodes['gozzwischensummehonorar'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozauslagen: TXSDBetragTyp; begin if ChildNodes.FindNode('gozauslagen') <> nil then Result := VarToStr(ChildNodes['gozauslagen'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozauslagen(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozauslagen') = nil then AddChild('gozauslagen', TargetNamespace); ChildNodes['gozauslagen'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozwegegeld: TXSDBetragTyp; begin if ChildNodes.FindNode('gozwegegeld') <> nil then Result := VarToStr(ChildNodes['gozwegegeld'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozwegegeld(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozwegegeld') = nil then AddChild('gozwegegeld', TargetNamespace); ChildNodes['gozwegegeld'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozrechnungsbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gozrechnungsbetrag') <> nil then Result := VarToStr(ChildNodes['gozrechnungsbetrag'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozrechnungsbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozrechnungsbetrag') = nil then AddChild('gozrechnungsbetrag', TargetNamespace); ChildNodes['gozrechnungsbetrag'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozvorauszahlung: TXSDBetragTyp; begin if ChildNodes.FindNode('gozvorauszahlung') <> nil then Result := VarToStr(ChildNodes['gozvorauszahlung'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozvorauszahlung(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozvorauszahlung') = nil then AddChild('gozvorauszahlung', TargetNamespace); ChildNodes['gozvorauszahlung'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozminderungsbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gozminderungsbetrag') <> nil then Result := VarToStr(ChildNodes['gozminderungsbetrag'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozminderungsbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozminderungsbetrag') = nil then AddChild('gozminderungsbetrag', TargetNamespace); ChildNodes['gozminderungsbetrag'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozvorleistung: TXSDBetragTyp; begin if ChildNodes.FindNode('gozvorleistung') <> nil then Result := VarToStr(ChildNodes['gozvorleistung'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozvorleistung(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozvorleistung') = nil then AddChild('gozvorleistung', TargetNamespace); ChildNodes['gozvorleistung'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozzahlbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gozzahlbetrag') <> nil then Result := VarToStr(ChildNodes['gozzahlbetrag'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozzahlbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozzahlbetrag') = nil then AddChild('gozzahlbetrag', TargetNamespace); ChildNodes['gozzahlbetrag'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozustvoll: TXSDBetragTyp; begin if ChildNodes.FindNode('gozustvoll') <> nil then Result := VarToStr(ChildNodes['gozustvoll'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozustvoll(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozustvoll') = nil then AddChild('gozustvoll', TargetNamespace); ChildNodes['gozustvoll'].NodeValue := Value; end;
function TXMLSummenblockBmgTyp.Get_Gozustgemindert: TXSDBetragTyp; begin if ChildNodes.FindNode('gozustgemindert') <> nil then Result := VarToStr(ChildNodes['gozustgemindert'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockBmgTyp.Set_Gozustgemindert(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gozustgemindert') = nil then AddChild('gozustgemindert', TargetNamespace); ChildNodes['gozustgemindert'].NodeValue := Value; end;
function TXMLSummenblockBmgTypList.Add: IXMLSummenblockBmgTyp; begin Result := AddItem(-1) as IXMLSummenblockBmgTyp; end;
function TXMLSummenblockBmgTypList.Insert(const Index: Integer): IXMLSummenblockBmgTyp; begin Result := AddItem(Index) as IXMLSummenblockBmgTyp; end;
function TXMLSummenblockBmgTypList.Get_Item(Index: Integer): IXMLSummenblockBmgTyp; begin Result := List[Index] as IXMLSummenblockBmgTyp; end;

procedure TXMLSummenblockEigenanteilTyp.AfterConstruction;
begin
  RegisterChildNode('summehonorarbema', TXMLBetragBezeichnungTyp);
  ItemTag := 'summehonorarbema';
  ItemInterface := IXMLBetragBezeichnungTyp;
  RegisterChildNode('summehonorargoz', TXMLBetragBezeichnungTyp);
  ItemTag := 'summehonorargoz';
  ItemInterface := IXMLBetragBezeichnungTyp;
  RegisterChildNode('summeeigenlabor', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summefremdlabor', TXMLBetragBezeichnungTyp);
  ItemTag := 'summefremdlabor';
  ItemInterface := IXMLBetragBezeichnungTyp;
  RegisterChildNode('summeverbrauchsmaterial', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summeeigenlabormehrkosten', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summefremdlabormehrkosten', TXMLBetragBezeichnungTyp);
  ItemTag := 'summefremdlabormehrkosten';
  ItemInterface := IXMLBetragBezeichnungTyp;
  RegisterChildNode('summeverbrauchsmaterialmehrkosten', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summegesamt', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summekassenanteil', TXMLBetragBezeichnungSatzTyp);
  RegisterChildNode('summeeigenanteil', TXMLBetragBezeichnungSatzTyp);
  RegisterChildNode('summezahlbetrag', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summeabzug', TXMLSummenblockEigenanteilTypSummeabzug);
  RegisterChildNode('summeauslagen', TXMLSummenblockEigenanteilTypSummeauslagen);
  inherited;
end;
function TXMLSummenblockEigenanteilTyp.Get_Summehonorarbema: IXMLBetragBezeichnungTypList; begin Result := ChildNodes['summehonorarbema'] as IXMLBetragBezeichnungTypList; end;
function TXMLSummenblockEigenanteilTyp.Get_Summehonorargoz: IXMLBetragBezeichnungTypList; begin Result := ChildNodes['summehonorargoz'] as IXMLBetragBezeichnungTypList; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeeigenlabor: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeeigenlabor') <> nil then Result := ChildNodes['summeeigenlabor'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summefremdlabor: IXMLBetragBezeichnungTypList; begin Result := ChildNodes['summefremdlabor'] as IXMLBetragBezeichnungTypList; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeverbrauchsmaterial') <> nil then Result := ChildNodes['summeverbrauchsmaterial'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeeigenlabormehrkosten: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeeigenlabormehrkosten') <> nil then Result := ChildNodes['summeeigenlabormehrkosten'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summefremdlabormehrkosten: IXMLBetragBezeichnungTypList; begin Result := ChildNodes['summefremdlabormehrkosten'] as IXMLBetragBezeichnungTypList; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeverbrauchsmaterialmehrkosten: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeverbrauchsmaterialmehrkosten') <> nil then Result := ChildNodes['summeverbrauchsmaterialmehrkosten'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summegesamt: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summegesamt') <> nil then Result := ChildNodes['summegesamt'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp; begin if ChildNodes.FindNode('summekassenanteil') <> nil then Result := ChildNodes['summekassenanteil'] as IXMLBetragBezeichnungSatzTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeeigenanteil: IXMLBetragBezeichnungSatzTyp; begin if ChildNodes.FindNode('summeeigenanteil') <> nil then Result := ChildNodes['summeeigenanteil'] as IXMLBetragBezeichnungSatzTyp else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summezahlbetrag: IXMLBetragBezeichnungTyp; begin Result := ChildNodes['summezahlbetrag'] as IXMLBetragBezeichnungTyp; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeabzug: IXMLSummenblockEigenanteilTypSummeabzug; begin if ChildNodes.FindNode('summeabzug') <> nil then Result := ChildNodes['summeabzug'] as IXMLSummenblockEigenanteilTypSummeabzug else Result := nil; end;
function TXMLSummenblockEigenanteilTyp.Get_Summeauslagen: IXMLSummenblockEigenanteilTypSummeauslagen; begin if ChildNodes.FindNode('summeauslagen') <> nil then Result := ChildNodes['summeauslagen'] as IXMLSummenblockEigenanteilTypSummeauslagen else Result := nil; end;
function TXMLSummenblockEigenanteilTypList.Add: IXMLSummenblockEigenanteilTyp; begin Result := AddItem(-1) as IXMLSummenblockEigenanteilTyp; end;
function TXMLSummenblockEigenanteilTypList.Insert(const Index: Integer): IXMLSummenblockEigenanteilTyp; begin Result := AddItem(Index) as IXMLSummenblockEigenanteilTyp; end;
function TXMLSummenblockEigenanteilTypList.Get_Item(Index: Integer): IXMLSummenblockEigenanteilTyp; begin Result := List[Index] as IXMLSummenblockEigenanteilTyp; end;

procedure TXMLSummenblockEigenanteilTypSummeabzug.AfterConstruction;
begin
  inherited;
end;
function TXMLSummenblockEigenanteilTypSummeabzug.Get_Bezeichnung: TXSDString180Typ; begin if AttributeNodes.FindNode('bezeichnung') <> nil then Result := VarToStr(AttributeNodes['bezeichnung'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockEigenanteilTypSummeabzug.Set_Bezeichnung(const Value: TXSDString180Typ); begin SetAttribute('bezeichnung', Value); end;
function TXMLSummenblockEigenanteilTypSummeabzugList.Add: IXMLSummenblockEigenanteilTypSummeabzug; begin Result := AddItem(-1) as IXMLSummenblockEigenanteilTypSummeabzug; end;
function TXMLSummenblockEigenanteilTypSummeabzugList.Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug; begin Result := AddItem(Index) as IXMLSummenblockEigenanteilTypSummeabzug; end;
function TXMLSummenblockEigenanteilTypSummeabzugList.Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeabzug; begin Result := List[Index] as IXMLSummenblockEigenanteilTypSummeabzug; end;

procedure TXMLSummenblockEigenanteilTypSummeauslagen.AfterConstruction;
begin
  inherited;
end;
function TXMLSummenblockEigenanteilTypSummeauslagen.Get_Bezeichnung: TXSDString180Typ; begin if AttributeNodes.FindNode('bezeichnung') <> nil then Result := VarToStr(AttributeNodes['bezeichnung'].NodeValue) else Result := ''; end;
procedure TXMLSummenblockEigenanteilTypSummeauslagen.Set_Bezeichnung(const Value: TXSDString180Typ); begin SetAttribute('bezeichnung', Value); end;
function TXMLSummenblockEigenanteilTypSummeauslagenList.Add: IXMLSummenblockEigenanteilTypSummeauslagen; begin Result := AddItem(-1) as IXMLSummenblockEigenanteilTypSummeauslagen; end;
function TXMLSummenblockEigenanteilTypSummeauslagenList.Insert(const Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen; begin Result := AddItem(Index) as IXMLSummenblockEigenanteilTypSummeauslagen; end;
function TXMLSummenblockEigenanteilTypSummeauslagenList.Get_Item(Index: Integer): IXMLSummenblockEigenanteilTypSummeauslagen; begin Result := List[Index] as IXMLSummenblockEigenanteilTypSummeauslagen; end;

procedure TXMLSummenblockEigenanteilKFOTyp.AfterConstruction;
begin
  RegisterChildNode('summehonorarbema', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summeeigenlabor', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summefremdlabor', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summeverbrauchsmaterial', TXMLBetragBezeichnungTyp);
  RegisterChildNode('summeversichertenanteil', TXMLBetragBezeichnungSatzTyp);
  RegisterChildNode('summekassenanteil', TXMLBetragBezeichnungSatzTyp);
  RegisterChildNode('summemehrkosten', TXMLBetragBezeichnungTyp);
  ItemTag := 'summemehrkosten';
  ItemInterface := IXMLBetragBezeichnungTyp;
  RegisterChildNode('summezahlbetrag', TXMLBetragBezeichnungTyp);
  inherited;
end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summehonorarbema: IXMLBetragBezeichnungTyp; begin Result := ChildNodes['summehonorarbema'] as IXMLBetragBezeichnungTyp; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summeeigenlabor: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeeigenlabor') <> nil then Result := ChildNodes['summeeigenlabor'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summefremdlabor: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summefremdlabor') <> nil then Result := ChildNodes['summefremdlabor'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summeverbrauchsmaterial: IXMLBetragBezeichnungTyp; begin if ChildNodes.FindNode('summeverbrauchsmaterial') <> nil then Result := ChildNodes['summeverbrauchsmaterial'] as IXMLBetragBezeichnungTyp else Result := nil; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summeversichertenanteil: IXMLBetragBezeichnungSatzTyp; begin Result := ChildNodes['summeversichertenanteil'] as IXMLBetragBezeichnungSatzTyp; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summekassenanteil: IXMLBetragBezeichnungSatzTyp; begin Result := ChildNodes['summekassenanteil'] as IXMLBetragBezeichnungSatzTyp; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summemehrkosten: IXMLBetragBezeichnungTypList; begin Result := ChildNodes['summemehrkosten'] as IXMLBetragBezeichnungTypList; end;
function TXMLSummenblockEigenanteilKFOTyp.Get_Summezahlbetrag: IXMLBetragBezeichnungTyp; begin Result := ChildNodes['summezahlbetrag'] as IXMLBetragBezeichnungTyp; end;
function TXMLSummenblockEigenanteilKFOTypList.Add: IXMLSummenblockEigenanteilKFOTyp; begin Result := AddItem(-1) as IXMLSummenblockEigenanteilKFOTyp; end;
function TXMLSummenblockEigenanteilKFOTypList.Insert(const Index: Integer): IXMLSummenblockEigenanteilKFOTyp; begin Result := AddItem(Index) as IXMLSummenblockEigenanteilKFOTyp; end;
function TXMLSummenblockEigenanteilKFOTypList.Get_Item(Index: Integer): IXMLSummenblockEigenanteilKFOTyp; begin Result := List[Index] as IXMLSummenblockEigenanteilKFOTyp; end;

procedure TXMLUnfallarbeitgeberTyp.AfterConstruction;
begin
  RegisterChildNode('anschrift', TXMLAnschrift2Typ);
  inherited;
end;
function TXMLUnfallarbeitgeberTyp.Get_Name: string; begin if ChildNodes.FindNode('name') <> nil then Result := VarToStr(ChildNodes['name'].NodeValue) else Result := ''; end;
procedure TXMLUnfallarbeitgeberTyp.Set_Name(const Value: string); begin if ChildNodes.FindNode('name') = nil then AddChild('name', TargetNamespace); ChildNodes['name'].NodeValue := Value; end;
function TXMLUnfallarbeitgeberTyp.Get_Anschrift: IXMLAnschrift2Typ; begin Result := ChildNodes['anschrift'] as IXMLAnschrift2Typ; end;
function TXMLUnfallarbeitgeberTyp.Get_Berufsgruppe: string; begin if ChildNodes.FindNode('berufsgruppe') <> nil then Result := VarToStr(ChildNodes['berufsgruppe'].NodeValue) else Result := ''; end;
procedure TXMLUnfallarbeitgeberTyp.Set_Berufsgruppe(const Value: string); begin if ChildNodes.FindNode('berufsgruppe') = nil then AddChild('berufsgruppe', TargetNamespace); ChildNodes['berufsgruppe'].NodeValue := Value; end;
function TXMLUnfallarbeitgeberTyp.Get_Einstellungsdatum: string; begin if ChildNodes.FindNode('einstellungsdatum') <> nil then Result := VarToStr(ChildNodes['einstellungsdatum'].NodeValue) else Result := ''; end;
procedure TXMLUnfallarbeitgeberTyp.Set_Einstellungsdatum(const Value: string); begin if ChildNodes.FindNode('einstellungsdatum') = nil then AddChild('einstellungsdatum', TargetNamespace); ChildNodes['einstellungsdatum'].NodeValue := Value; end;
function TXMLUnfallarbeitgeberTypList.Add: IXMLUnfallarbeitgeberTyp; begin Result := AddItem(-1) as IXMLUnfallarbeitgeberTyp; end;
function TXMLUnfallarbeitgeberTypList.Insert(const Index: Integer): IXMLUnfallarbeitgeberTyp; begin Result := AddItem(Index) as IXMLUnfallarbeitgeberTyp; end;
function TXMLUnfallarbeitgeberTypList.Get_Item(Index: Integer): IXMLUnfallarbeitgeberTyp; begin Result := List[Index] as IXMLUnfallarbeitgeberTyp; end;

procedure TXMLUnfalldatenTyp.AfterConstruction;
begin
  RegisterChildNode('arbeitgeber', TXMLUnfallarbeitgeberTyp);
  RegisterChildNode('refarztbericht', TXMLUnfalldatenTypRefarztbericht);
  inherited;
end;
function TXMLUnfalldatenTyp.Get_Unfalltag: string; begin if ChildNodes.FindNode('unfalltag') <> nil then Result := VarToStr(ChildNodes['unfalltag'].NodeValue) else Result := ''; end;
procedure TXMLUnfalldatenTyp.Set_Unfalltag(const Value: string); begin if ChildNodes.FindNode('unfalltag') = nil then AddChild('unfalltag', TargetNamespace); ChildNodes['unfalltag'].NodeValue := Value; end;
function TXMLUnfalldatenTyp.Get_Aktenzeichen: string; begin if ChildNodes.FindNode('aktenzeichen') <> nil then Result := VarToStr(ChildNodes['aktenzeichen'].NodeValue) else Result := ''; end;
procedure TXMLUnfalldatenTyp.Set_Aktenzeichen(const Value: string); begin if ChildNodes.FindNode('aktenzeichen') = nil then AddChild('aktenzeichen', TargetNamespace); ChildNodes['aktenzeichen'].NodeValue := Value; end;
function TXMLUnfalldatenTyp.Get_Unfallhergang: string; begin if ChildNodes.FindNode('unfallhergang') <> nil then Result := VarToStr(ChildNodes['unfallhergang'].NodeValue) else Result := ''; end;
procedure TXMLUnfalldatenTyp.Set_Unfallhergang(const Value: string); begin if ChildNodes.FindNode('unfallhergang') = nil then AddChild('unfallhergang', TargetNamespace); ChildNodes['unfallhergang'].NodeValue := Value; end;
function TXMLUnfalldatenTyp.Get_Personalunfall: Boolean; begin if ChildNodes.FindNode('personalunfall') <> nil then Result := Boolean(ChildNodes['personalunfall'].NodeValue) else Result := False; end;
procedure TXMLUnfalldatenTyp.Set_Personalunfall(const Value: Boolean); begin if ChildNodes.FindNode('personalunfall') = nil then AddChild('personalunfall', TargetNamespace); ChildNodes['personalunfall'].NodeValue := Value; end;
function TXMLUnfalldatenTyp.Get_Arbeitgeber: IXMLUnfallarbeitgeberTyp; begin Result := ChildNodes['arbeitgeber'] as IXMLUnfallarbeitgeberTyp; end;
function TXMLUnfalldatenTyp.Get_Refarztbericht: IXMLUnfalldatenTypRefarztbericht; begin if ChildNodes.FindNode('refarztbericht') <> nil then Result := ChildNodes['refarztbericht'] as IXMLUnfalldatenTypRefarztbericht else Result := nil; end;
function TXMLUnfalldatenTypList.Add: IXMLUnfalldatenTyp; begin Result := AddItem(-1) as IXMLUnfalldatenTyp; end;
function TXMLUnfalldatenTypList.Insert(const Index: Integer): IXMLUnfalldatenTyp; begin Result := AddItem(Index) as IXMLUnfalldatenTyp; end;
function TXMLUnfalldatenTypList.Get_Item(Index: Integer): IXMLUnfalldatenTyp; begin Result := List[Index] as IXMLUnfalldatenTyp; end;

procedure TXMLUnfalldatenTypRefarztbericht.AfterConstruction;
begin
  inherited;
end;
function TXMLUnfalldatenTypRefarztbericht.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLUnfalldatenTypRefarztbericht.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLUnfalldatenTypRefarztbericht.Get_Typ: string; begin if AttributeNodes.FindNode('typ') <> nil then Result := VarToStr(AttributeNodes['typ'].NodeValue) else Result := ''; end;
procedure TXMLUnfalldatenTypRefarztbericht.Set_Typ(const Value: string); begin SetAttribute('typ', Value); end;
function TXMLUnfalldatenTypRefarztberichtList.Add: IXMLUnfalldatenTypRefarztbericht; begin Result := AddItem(-1) as IXMLUnfalldatenTypRefarztbericht; end;
function TXMLUnfalldatenTypRefarztberichtList.Insert(const Index: Integer): IXMLUnfalldatenTypRefarztbericht; begin Result := AddItem(Index) as IXMLUnfalldatenTypRefarztbericht; end;
function TXMLUnfalldatenTypRefarztberichtList.Get_Item(Index: Integer): IXMLUnfalldatenTypRefarztbericht; begin Result := List[Index] as IXMLUnfalldatenTypRefarztbericht; end;

procedure TXMLVersicherungTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLVersicherungTyp.Get_Kassenname: string; begin if ChildNodes.FindNode('kassenname') <> nil then Result := VarToStr(ChildNodes['kassenname'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Kassenname(const Value: string); begin if ChildNodes.FindNode('kassenname') = nil then AddChild('kassenname', TargetNamespace); ChildNodes['kassenname'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Iknr: TXSDIKnrTyp; begin if ChildNodes.FindNode('iknr') <> nil then Result := VarToStr(ChildNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Iknr(const Value: TXSDIKnrTyp); begin if ChildNodes.FindNode('iknr') = nil then AddChild('iknr', TargetNamespace); ChildNodes['iknr'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Kvnr: string; begin if ChildNodes.FindNode('kvnr') <> nil then Result := VarToStr(ChildNodes['kvnr'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Kvnr(const Value: string); begin if ChildNodes.FindNode('kvnr') = nil then AddChild('kvnr', TargetNamespace); ChildNodes['kvnr'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Versichertenart: TXSDVersichertenartEnum; begin if ChildNodes.FindNode('versichertenart') <> nil then Result := VarToStr(ChildNodes['versichertenart'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Versichertenart(const Value: TXSDVersichertenartEnum); begin if ChildNodes.FindNode('versichertenart') = nil then AddChild('versichertenart', TargetNamespace); ChildNodes['versichertenart'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Bpersonenkreis: TXSDBesondererpersonenkreisEnum; begin if ChildNodes.FindNode('bpersonenkreis') <> nil then Result := VarToStr(ChildNodes['bpersonenkreis'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Bpersonenkreis(const Value: TXSDBesondererpersonenkreisEnum); begin if ChildNodes.FindNode('bpersonenkreis') = nil then AddChild('bpersonenkreis', TargetNamespace); ChildNodes['bpersonenkreis'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Dmpteilnahme: TXSDDMPkennzeichenEnum; begin if ChildNodes.FindNode('dmpteilnahme') <> nil then Result := VarToStr(ChildNodes['dmpteilnahme'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Dmpteilnahme(const Value: TXSDDMPkennzeichenEnum); begin if ChildNodes.FindNode('dmpteilnahme') = nil then AddChild('dmpteilnahme', TargetNamespace); ChildNodes['dmpteilnahme'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Gueltigab: string; begin if ChildNodes.FindNode('gueltigab') <> nil then Result := VarToStr(ChildNodes['gueltigab'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Gueltigab(const Value: string); begin if ChildNodes.FindNode('gueltigab') = nil then AddChild('gueltigab', TargetNamespace); ChildNodes['gueltigab'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Gueltigbis: string; begin if ChildNodes.FindNode('gueltigbis') <> nil then Result := VarToStr(ChildNodes['gueltigbis'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Gueltigbis(const Value: string); begin if ChildNodes.FindNode('gueltigbis') = nil then AddChild('gueltigbis', TargetNamespace); ChildNodes['gueltigbis'].NodeValue := Value; end;
function TXMLVersicherungTyp.Get_Khkennzeichen: string; begin if ChildNodes.FindNode('khkennzeichen') <> nil then Result := VarToStr(ChildNodes['khkennzeichen'].NodeValue) else Result := ''; end;
procedure TXMLVersicherungTyp.Set_Khkennzeichen(const Value: string); begin if ChildNodes.FindNode('khkennzeichen') = nil then AddChild('khkennzeichen', TargetNamespace); ChildNodes['khkennzeichen'].NodeValue := Value; end;
function TXMLVersicherungTypList.Add: IXMLVersicherungTyp; begin Result := AddItem(-1) as IXMLVersicherungTyp; end;
function TXMLVersicherungTypList.Insert(const Index: Integer): IXMLVersicherungTyp; begin Result := AddItem(Index) as IXMLVersicherungTyp; end;
function TXMLVersicherungTypList.Get_Item(Index: Integer): IXMLVersicherungTyp; begin Result := List[Index] as IXMLVersicherungTyp; end;

procedure TXMLLeistungspositionTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLLeistungspositionTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Datum: string; begin if ChildNodes.FindNode('datum') <> nil then Result := VarToStr(ChildNodes['datum'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Datum(const Value: string); begin if ChildNodes.FindNode('datum') = nil then AddChild('datum', TargetNamespace); ChildNodes['datum'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Uhrzeit: string; begin if ChildNodes.FindNode('uhrzeit') <> nil then Result := VarToStr(ChildNodes['uhrzeit'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Uhrzeit(const Value: string); begin if ChildNodes.FindNode('uhrzeit') = nil then AddChild('uhrzeit', TargetNamespace); ChildNodes['uhrzeit'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Anzahl: string; begin if ChildNodes.FindNode('anzahl') <> nil then Result := VarToStr(ChildNodes['anzahl'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Anzahl(const Value: string); begin if ChildNodes.FindNode('anzahl') = nil then AddChild('anzahl', TargetNamespace); ChildNodes['anzahl'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Zusatztext: TXSDTextTyp; begin if ChildNodes.FindNode('zusatztext') <> nil then Result := VarToStr(ChildNodes['zusatztext'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Zusatztext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('zusatztext') = nil then AddChild('zusatztext', TargetNamespace); ChildNodes['zusatztext'].NodeValue := Value; end;
function TXMLLeistungspositionTyp.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLLeistungspositionTyp.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLLeistungspositionTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLLeistungspositionTyp.Get_Idref: TXSDIdTyp; begin if AttributeNodes.FindNode('idref') <> nil then Result := VarToStr(AttributeNodes['idref'].NodeValue) else Result := ''; end;
procedure TXMLLeistungspositionTyp.Set_Idref(const Value: TXSDIdTyp); begin SetAttribute('idref', Value); end;
function TXMLLeistungspositionTypList.Add: IXMLLeistungspositionTyp; begin Result := AddItem(-1) as IXMLLeistungspositionTyp; end;
function TXMLLeistungspositionTypList.Insert(const Index: Integer): IXMLLeistungspositionTyp; begin Result := AddItem(Index) as IXMLLeistungspositionTyp; end;
function TXMLLeistungspositionTypList.Get_Item(Index: Integer): IXMLLeistungspositionTyp; begin Result := List[Index] as IXMLLeistungspositionTyp; end;

procedure TXMLLeistungsposition2Typ.AfterConstruction;
begin
  inherited;
end;
function TXMLLeistungsposition2Typ.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Datum: string; begin if ChildNodes.FindNode('datum') <> nil then Result := VarToStr(ChildNodes['datum'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Datum(const Value: string); begin if ChildNodes.FindNode('datum') = nil then AddChild('datum', TargetNamespace); ChildNodes['datum'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Uhrzeit: string; begin if ChildNodes.FindNode('uhrzeit') <> nil then Result := VarToStr(ChildNodes['uhrzeit'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Uhrzeit(const Value: string); begin if ChildNodes.FindNode('uhrzeit') = nil then AddChild('uhrzeit', TargetNamespace); ChildNodes['uhrzeit'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Anzahl: string; begin if ChildNodes.FindNode('anzahl') <> nil then Result := VarToStr(ChildNodes['anzahl'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Anzahl(const Value: string); begin if ChildNodes.FindNode('anzahl') = nil then AddChild('anzahl', TargetNamespace); ChildNodes['anzahl'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Zusatztext: TXSDTextTyp; begin if ChildNodes.FindNode('zusatztext') <> nil then Result := VarToStr(ChildNodes['zusatztext'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Zusatztext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('zusatztext') = nil then AddChild('zusatztext', TargetNamespace); ChildNodes['zusatztext'].NodeValue := Value; end;
function TXMLLeistungsposition2Typ.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLLeistungsposition2Typ.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLLeistungsposition2Typ.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLLeistungsposition2Typ.Get_Idref: TXSDIdTyp; begin if AttributeNodes.FindNode('idref') <> nil then Result := VarToStr(AttributeNodes['idref'].NodeValue) else Result := ''; end;
procedure TXMLLeistungsposition2Typ.Set_Idref(const Value: TXSDIdTyp); begin SetAttribute('idref', Value); end;
function TXMLLeistungsposition2TypList.Add: IXMLLeistungsposition2Typ; begin Result := AddItem(-1) as IXMLLeistungsposition2Typ; end;
function TXMLLeistungsposition2TypList.Insert(const Index: Integer): IXMLLeistungsposition2Typ; begin Result := AddItem(Index) as IXMLLeistungsposition2Typ; end;
function TXMLLeistungsposition2TypList.Get_Item(Index: Integer): IXMLLeistungsposition2Typ; begin Result := List[Index] as IXMLLeistungsposition2Typ; end;

procedure TXMLZifferTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLZifferTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLZifferTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLZifferTyp.Get_Analog: Boolean; begin if AttributeNodes.FindNode('analog') <> nil then Result := Boolean(AttributeNodes['analog'].NodeValue) else Result := False; end;
procedure TXMLZifferTyp.Set_Analog(const Value: Boolean); begin SetAttribute('analog', Value); end;
function TXMLZifferTypList.Add: IXMLZifferTyp; begin Result := AddItem(-1) as IXMLZifferTyp; end;
function TXMLZifferTypList.Insert(const Index: Integer): IXMLZifferTyp; begin Result := AddItem(Index) as IXMLZifferTyp; end;
function TXMLZifferTypList.Get_Item(Index: Integer): IXMLZifferTyp; begin Result := List[Index] as IXMLZifferTyp; end;

procedure TXMLBemaZifferTyp.AfterConstruction;
begin
  RegisterChildNode('anteil', TXMLBemaZifferTypAnteil);
  inherited;
end;
function TXMLBemaZifferTyp.Get_Anteil: IXMLBemaZifferTypAnteil; begin if ChildNodes.FindNode('anteil') <> nil then Result := ChildNodes['anteil'] as IXMLBemaZifferTypAnteil else Result := nil; end;
function TXMLBemaZifferTyp.Get_Zahnangabe: TXSDZahnangabeTyp; begin if ChildNodes.FindNode('zahnangabe') <> nil then Result := VarToStr(ChildNodes['zahnangabe'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Zahnangabe(const Value: TXSDZahnangabeTyp); begin if ChildNodes.FindNode('zahnangabe') = nil then AddChild('zahnangabe', TargetNamespace); ChildNodes['zahnangabe'].NodeValue := Value; end;
function TXMLBemaZifferTyp.Get_Punktwert: string; begin if ChildNodes.FindNode('punktwert') <> nil then Result := VarToStr(ChildNodes['punktwert'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Punktwert(const Value: string); begin if ChildNodes.FindNode('punktwert') = nil then AddChild('punktwert', TargetNamespace); ChildNodes['punktwert'].NodeValue := Value; end;
function TXMLBemaZifferTyp.Get_Punktzahl: string; begin if ChildNodes.FindNode('punktzahl') <> nil then Result := VarToStr(ChildNodes['punktzahl'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Punktzahl(const Value: string); begin if ChildNodes.FindNode('punktzahl') = nil then AddChild('punktzahl', TargetNamespace); ChildNodes['punktzahl'].NodeValue := Value; end;
function TXMLBemaZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLBemaZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLBemaZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLBemaZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLBemaZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLBemaZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLBemaZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLBemaZifferTyp.Get_Abzug: Boolean; begin if AttributeNodes.FindNode('abzug') <> nil then Result := Boolean(AttributeNodes['abzug'].NodeValue) else Result := False; end;
procedure TXMLBemaZifferTyp.Set_Abzug(const Value: Boolean); begin SetAttribute('abzug', Value); end;
function TXMLBemaZifferTypList.Add: IXMLBemaZifferTyp; begin Result := AddItem(-1) as IXMLBemaZifferTyp; end;
function TXMLBemaZifferTypList.Insert(const Index: Integer): IXMLBemaZifferTyp; begin Result := AddItem(Index) as IXMLBemaZifferTyp; end;
function TXMLBemaZifferTypList.Get_Item(Index: Integer): IXMLBemaZifferTyp; begin Result := List[Index] as IXMLBemaZifferTyp; end;

procedure TXMLBemaZifferTypAnteil.AfterConstruction;
begin
  inherited;
end;
function TXMLBemaZifferTypAnteil.Get_Zaehler: Integer; begin if AttributeNodes.FindNode('zaehler') <> nil then Result := Integer(AttributeNodes['zaehler'].NodeValue) else Result := 0; end;
procedure TXMLBemaZifferTypAnteil.Set_Zaehler(const Value: Integer); begin SetAttribute('zaehler', Value); end;
function TXMLBemaZifferTypAnteil.Get_Nenner: Integer; begin if AttributeNodes.FindNode('nenner') <> nil then Result := Integer(AttributeNodes['nenner'].NodeValue) else Result := 0; end;
procedure TXMLBemaZifferTypAnteil.Set_Nenner(const Value: Integer); begin SetAttribute('nenner', Value); end;
function TXMLBemaZifferTypAnteilList.Add: IXMLBemaZifferTypAnteil; begin Result := AddItem(-1) as IXMLBemaZifferTypAnteil; end;
function TXMLBemaZifferTypAnteilList.Insert(const Index: Integer): IXMLBemaZifferTypAnteil; begin Result := AddItem(Index) as IXMLBemaZifferTypAnteil; end;
function TXMLBemaZifferTypAnteilList.Get_Item(Index: Integer): IXMLBemaZifferTypAnteil; begin Result := List[Index] as IXMLBemaZifferTypAnteil; end;

procedure TXMLBemaKFOZifferTyp.AfterConstruction;
begin
  RegisterChildNode('anteil', TXMLBemaKFOZifferTypAnteil);
  inherited;
end;
function TXMLBemaKFOZifferTyp.Get_Anteil: IXMLBemaKFOZifferTypAnteil; begin if ChildNodes.FindNode('anteil') <> nil then Result := ChildNodes['anteil'] as IXMLBemaKFOZifferTypAnteil else Result := nil; end;
function TXMLBemaKFOZifferTyp.Get_Zahnangabe: TXSDZahnangabeTyp; begin if ChildNodes.FindNode('zahnangabe') <> nil then Result := VarToStr(ChildNodes['zahnangabe'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Zahnangabe(const Value: TXSDZahnangabeTyp); begin if ChildNodes.FindNode('zahnangabe') = nil then AddChild('zahnangabe', TargetNamespace); ChildNodes['zahnangabe'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Leistungsart: TXSDLeistungsartkfoEnum; begin if ChildNodes.FindNode('leistungsart') <> nil then Result := VarToStr(ChildNodes['leistungsart'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum); begin if ChildNodes.FindNode('leistungsart') = nil then AddChild('leistungsart', TargetNamespace); ChildNodes['leistungsart'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_EdvNr: string; begin if ChildNodes.FindNode('edv-nr') <> nil then Result := VarToStr(ChildNodes['edv-nr'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_EdvNr(const Value: string); begin if ChildNodes.FindNode('edv-nr') = nil then AddChild('edv-nr', TargetNamespace); ChildNodes['edv-nr'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Punktwert: string; begin if ChildNodes.FindNode('punktwert') <> nil then Result := VarToStr(ChildNodes['punktwert'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Punktwert(const Value: string); begin if ChildNodes.FindNode('punktwert') = nil then AddChild('punktwert', TargetNamespace); ChildNodes['punktwert'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Punktzahl: string; begin if ChildNodes.FindNode('punktzahl') <> nil then Result := VarToStr(ChildNodes['punktzahl'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Punktzahl(const Value: string); begin if ChildNodes.FindNode('punktzahl') = nil then AddChild('punktzahl', TargetNamespace); ChildNodes['punktzahl'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Punktzahlgesamt: string; begin if ChildNodes.FindNode('punktzahlgesamt') <> nil then Result := VarToStr(ChildNodes['punktzahlgesamt'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Punktzahlgesamt(const Value: string); begin if ChildNodes.FindNode('punktzahlgesamt') = nil then AddChild('punktzahlgesamt', TargetNamespace); ChildNodes['punktzahlgesamt'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLBemaKFOZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLBemaKFOZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLBemaKFOZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLBemaKFOZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLBemaKFOZifferTyp.Get_Abzug: Boolean; begin if AttributeNodes.FindNode('abzug') <> nil then Result := Boolean(AttributeNodes['abzug'].NodeValue) else Result := False; end;
procedure TXMLBemaKFOZifferTyp.Set_Abzug(const Value: Boolean); begin SetAttribute('abzug', Value); end;
function TXMLBemaKFOZifferTypList.Add: IXMLBemaKFOZifferTyp; begin Result := AddItem(-1) as IXMLBemaKFOZifferTyp; end;
function TXMLBemaKFOZifferTypList.Insert(const Index: Integer): IXMLBemaKFOZifferTyp; begin Result := AddItem(Index) as IXMLBemaKFOZifferTyp; end;
function TXMLBemaKFOZifferTypList.Get_Item(Index: Integer): IXMLBemaKFOZifferTyp; begin Result := List[Index] as IXMLBemaKFOZifferTyp; end;

procedure TXMLBemaKFOZifferTypAnteil.AfterConstruction;
begin
  inherited;
end;
function TXMLBemaKFOZifferTypAnteil.Get_Zaehler: Integer; begin if AttributeNodes.FindNode('zaehler') <> nil then Result := Integer(AttributeNodes['zaehler'].NodeValue) else Result := 0; end;
procedure TXMLBemaKFOZifferTypAnteil.Set_Zaehler(const Value: Integer); begin SetAttribute('zaehler', Value); end;
function TXMLBemaKFOZifferTypAnteil.Get_Nenner: Integer; begin if AttributeNodes.FindNode('nenner') <> nil then Result := Integer(AttributeNodes['nenner'].NodeValue) else Result := 0; end;
procedure TXMLBemaKFOZifferTypAnteil.Set_Nenner(const Value: Integer); begin SetAttribute('nenner', Value); end;
function TXMLBemaKFOZifferTypAnteilList.Add: IXMLBemaKFOZifferTypAnteil; begin Result := AddItem(-1) as IXMLBemaKFOZifferTypAnteil; end;
function TXMLBemaKFOZifferTypAnteilList.Insert(const Index: Integer): IXMLBemaKFOZifferTypAnteil; begin Result := AddItem(Index) as IXMLBemaKFOZifferTypAnteil; end;
function TXMLBemaKFOZifferTypAnteilList.Get_Item(Index: Integer): IXMLBemaKFOZifferTypAnteil; begin Result := List[Index] as IXMLBemaKFOZifferTypAnteil; end;

procedure TXMLBemaKFOZwSummeTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBemaKFOZwSummeTyp.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLBemaKFOZwSummeTyp.Get_Leistungsart: TXSDLeistungsartkfoEnum; begin if ChildNodes.FindNode('leistungsart') <> nil then Result := VarToStr(ChildNodes['leistungsart'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Leistungsart(const Value: TXSDLeistungsartkfoEnum); begin if ChildNodes.FindNode('leistungsart') = nil then AddChild('leistungsart', TargetNamespace); ChildNodes['leistungsart'].NodeValue := Value; end;
function TXMLBemaKFOZwSummeTyp.Get_Punktwert: string; begin if ChildNodes.FindNode('punktwert') <> nil then Result := VarToStr(ChildNodes['punktwert'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Punktwert(const Value: string); begin if ChildNodes.FindNode('punktwert') = nil then AddChild('punktwert', TargetNamespace); ChildNodes['punktwert'].NodeValue := Value; end;
function TXMLBemaKFOZwSummeTyp.Get_Punktzahlgesamt: string; begin if ChildNodes.FindNode('punktzahlgesamt') <> nil then Result := VarToStr(ChildNodes['punktzahlgesamt'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Punktzahlgesamt(const Value: string); begin if ChildNodes.FindNode('punktzahlgesamt') = nil then AddChild('punktzahlgesamt', TargetNamespace); ChildNodes['punktzahlgesamt'].NodeValue := Value; end;
function TXMLBemaKFOZwSummeTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLBemaKFOZwSummeTyp.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLBemaKFOZwSummeTyp.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLBemaKFOZwSummeTypList.Add: IXMLBemaKFOZwSummeTyp; begin Result := AddItem(-1) as IXMLBemaKFOZwSummeTyp; end;
function TXMLBemaKFOZwSummeTypList.Insert(const Index: Integer): IXMLBemaKFOZwSummeTyp; begin Result := AddItem(Index) as IXMLBemaKFOZwSummeTyp; end;
function TXMLBemaKFOZwSummeTypList.Get_Item(Index: Integer): IXMLBemaKFOZwSummeTyp; begin Result := List[Index] as IXMLBemaKFOZwSummeTyp; end;

procedure TXMLGOZifferTyp.AfterConstruction;
begin
  RegisterChildNode('beteiligung', TXMLBeteiligungTyp);
  ItemTag := 'beteiligung';
  ItemInterface := IXMLBeteiligungTyp;
  RegisterChildNode('anteil', TXMLGOZifferTypAnteil);
  RegisterChildNode('ambo', TXMLAmboTyp);
  inherited;
end;
function TXMLGOZifferTyp.Get_Beteiligung: IXMLBeteiligungTypList; begin Result := ChildNodes['beteiligung'] as IXMLBeteiligungTypList; end;
function TXMLGOZifferTyp.Get_Anteil: IXMLGOZifferTypAnteil; begin if ChildNodes.FindNode('anteil') <> nil then Result := ChildNodes['anteil'] as IXMLGOZifferTypAnteil else Result := nil; end;
function TXMLGOZifferTyp.Get_Begruendung: TXSDTextTyp; begin if ChildNodes.FindNode('begruendung') <> nil then Result := VarToStr(ChildNodes['begruendung'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Begruendung(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('begruendung') = nil then AddChild('begruendung', TargetNamespace); ChildNodes['begruendung'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Minderungssatz: TXSDMinderungssatzEnum; begin if ChildNodes.FindNode('minderungssatz') <> nil then Result := VarToStr(ChildNodes['minderungssatz'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Minderungssatz(const Value: TXSDMinderungssatzEnum); begin if ChildNodes.FindNode('minderungssatz') = nil then AddChild('minderungssatz', TargetNamespace); ChildNodes['minderungssatz'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Ambo: IXMLAmboTyp; begin if ChildNodes.FindNode('ambo') <> nil then Result := ChildNodes['ambo'] as IXMLAmboTyp else Result := nil; end;
function TXMLGOZifferTyp.Get_Punktwert: string; begin if ChildNodes.FindNode('punktwert') <> nil then Result := VarToStr(ChildNodes['punktwert'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Punktwert(const Value: string); begin if ChildNodes.FindNode('punktwert') = nil then AddChild('punktwert', TargetNamespace); ChildNodes['punktwert'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Punktzahl: string; begin if ChildNodes.FindNode('punktzahl') <> nil then Result := VarToStr(ChildNodes['punktzahl'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Punktzahl(const Value: string); begin if ChildNodes.FindNode('punktzahl') = nil then AddChild('punktzahl', TargetNamespace); ChildNodes['punktzahl'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLGOZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLGOZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLGOZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLGOZifferTyp.Get_Analog: TXSDString18Typ; begin if AttributeNodes.FindNode('analog') <> nil then Result := VarToStr(AttributeNodes['analog'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Analog(const Value: TXSDString18Typ); begin SetAttribute('analog', Value); end;
function TXMLGOZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLGOZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLGOZifferTypList.Add: IXMLGOZifferTyp; begin Result := AddItem(-1) as IXMLGOZifferTyp; end;
function TXMLGOZifferTypList.Insert(const Index: Integer): IXMLGOZifferTyp; begin Result := AddItem(Index) as IXMLGOZifferTyp; end;
function TXMLGOZifferTypList.Get_Item(Index: Integer): IXMLGOZifferTyp; begin Result := List[Index] as IXMLGOZifferTyp; end;

procedure TXMLGOZifferTypAnteil.AfterConstruction;
begin
  inherited;
end;
function TXMLGOZifferTypAnteil.Get_Zaehler: Integer; begin if AttributeNodes.FindNode('zaehler') <> nil then Result := Integer(AttributeNodes['zaehler'].NodeValue) else Result := 0; end;
procedure TXMLGOZifferTypAnteil.Set_Zaehler(const Value: Integer); begin SetAttribute('zaehler', Value); end;
function TXMLGOZifferTypAnteil.Get_Nenner: Integer; begin if AttributeNodes.FindNode('nenner') <> nil then Result := Integer(AttributeNodes['nenner'].NodeValue) else Result := 0; end;
procedure TXMLGOZifferTypAnteil.Set_Nenner(const Value: Integer); begin SetAttribute('nenner', Value); end;
function TXMLGOZifferTypAnteilList.Add: IXMLGOZifferTypAnteil; begin Result := AddItem(-1) as IXMLGOZifferTypAnteil; end;
function TXMLGOZifferTypAnteilList.Insert(const Index: Integer): IXMLGOZifferTypAnteil; begin Result := AddItem(Index) as IXMLGOZifferTypAnteil; end;
function TXMLGOZifferTypAnteilList.Get_Item(Index: Integer): IXMLGOZifferTypAnteil; begin Result := List[Index] as IXMLGOZifferTypAnteil; end;

procedure TXMLGOZZifferTyp.AfterConstruction;
begin
  RegisterChildNode('anteil', TXMLGOZZifferTypAnteil);
  inherited;
end;
function TXMLGOZZifferTyp.Get_Anteil: IXMLGOZZifferTypAnteil; begin if ChildNodes.FindNode('anteil') <> nil then Result := ChildNodes['anteil'] as IXMLGOZZifferTypAnteil else Result := nil; end;
function TXMLGOZZifferTyp.Get_Minderungssatz: TXSDMinderungssatzEnum; begin if ChildNodes.FindNode('minderungssatz') <> nil then Result := VarToStr(ChildNodes['minderungssatz'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Minderungssatz(const Value: TXSDMinderungssatzEnum); begin if ChildNodes.FindNode('minderungssatz') = nil then AddChild('minderungssatz', TargetNamespace); ChildNodes['minderungssatz'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Zahnangabe: TXSDZahnangabeTyp; begin if ChildNodes.FindNode('zahnangabe') <> nil then Result := VarToStr(ChildNodes['zahnangabe'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Zahnangabe(const Value: TXSDZahnangabeTyp); begin if ChildNodes.FindNode('zahnangabe') = nil then AddChild('zahnangabe', TargetNamespace); ChildNodes['zahnangabe'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Punktwert: string; begin if ChildNodes.FindNode('punktwert') <> nil then Result := VarToStr(ChildNodes['punktwert'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Punktwert(const Value: string); begin if ChildNodes.FindNode('punktwert') = nil then AddChild('punktwert', TargetNamespace); ChildNodes['punktwert'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Punktzahl: string; begin if ChildNodes.FindNode('punktzahl') <> nil then Result := VarToStr(ChildNodes['punktzahl'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Punktzahl(const Value: string); begin if ChildNodes.FindNode('punktzahl') = nil then AddChild('punktzahl', TargetNamespace); ChildNodes['punktzahl'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLGOZZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLGOZZifferTyp.Get_Abzug: Boolean; begin if AttributeNodes.FindNode('abzug') <> nil then Result := Boolean(AttributeNodes['abzug'].NodeValue) else Result := False; end;
procedure TXMLGOZZifferTyp.Set_Abzug(const Value: Boolean); begin SetAttribute('abzug', Value); end;
function TXMLGOZZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLGOZZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLGOZZifferTyp.Get_Analog: TXSDString18Typ; begin if AttributeNodes.FindNode('analog') <> nil then Result := VarToStr(AttributeNodes['analog'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Analog(const Value: TXSDString18Typ); begin SetAttribute('analog', Value); end;
function TXMLGOZZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLGOZZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLGOZZifferTyp.Get_Verlangensleistung: Boolean; begin if AttributeNodes.FindNode('verlangensleistung') <> nil then Result := Boolean(AttributeNodes['verlangensleistung'].NodeValue) else Result := False; end;
procedure TXMLGOZZifferTyp.Set_Verlangensleistung(const Value: Boolean); begin SetAttribute('verlangensleistung', Value); end;
function TXMLGOZZifferTypList.Add: IXMLGOZZifferTyp; begin Result := AddItem(-1) as IXMLGOZZifferTyp; end;
function TXMLGOZZifferTypList.Insert(const Index: Integer): IXMLGOZZifferTyp; begin Result := AddItem(Index) as IXMLGOZZifferTyp; end;
function TXMLGOZZifferTypList.Get_Item(Index: Integer): IXMLGOZZifferTyp; begin Result := List[Index] as IXMLGOZZifferTyp; end;

procedure TXMLGOZZifferTypAnteil.AfterConstruction;
begin
  inherited;
end;
function TXMLGOZZifferTypAnteil.Get_Zaehler: Integer; begin if AttributeNodes.FindNode('zaehler') <> nil then Result := Integer(AttributeNodes['zaehler'].NodeValue) else Result := 0; end;
procedure TXMLGOZZifferTypAnteil.Set_Zaehler(const Value: Integer); begin SetAttribute('zaehler', Value); end;
function TXMLGOZZifferTypAnteil.Get_Nenner: Integer; begin if AttributeNodes.FindNode('nenner') <> nil then Result := Integer(AttributeNodes['nenner'].NodeValue) else Result := 0; end;
procedure TXMLGOZZifferTypAnteil.Set_Nenner(const Value: Integer); begin SetAttribute('nenner', Value); end;
function TXMLGOZZifferTypAnteilList.Add: IXMLGOZZifferTypAnteil; begin Result := AddItem(-1) as IXMLGOZZifferTypAnteil; end;
function TXMLGOZZifferTypAnteilList.Insert(const Index: Integer): IXMLGOZZifferTypAnteil; begin Result := AddItem(Index) as IXMLGOZZifferTypAnteil; end;
function TXMLGOZZifferTypAnteilList.Get_Item(Index: Integer): IXMLGOZZifferTypAnteil; begin Result := List[Index] as IXMLGOZZifferTypAnteil; end;

procedure TXMLLaborZifferTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLLaborZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLLaborZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLLaborZifferTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLLaborZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLLaborZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLLaborZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLLaborZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLLaborZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLLaborZifferTypList.Add: IXMLLaborZifferTyp; begin Result := AddItem(-1) as IXMLLaborZifferTyp; end;
function TXMLLaborZifferTypList.Insert(const Index: Integer): IXMLLaborZifferTyp; begin Result := AddItem(Index) as IXMLLaborZifferTyp; end;
function TXMLLaborZifferTypList.Get_Item(Index: Integer): IXMLLaborZifferTyp; begin Result := List[Index] as IXMLLaborZifferTyp; end;

procedure TXMLEigenlaborKFOZifferTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLEigenlaborKFOZifferTyp.Get_Einheit: string; begin if ChildNodes.FindNode('einheit') <> nil then Result := VarToStr(ChildNodes['einheit'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Einheit(const Value: string); begin if ChildNodes.FindNode('einheit') = nil then AddChild('einheit', TargetNamespace); ChildNodes['einheit'].NodeValue := Value; end;
function TXMLEigenlaborKFOZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLEigenlaborKFOZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLEigenlaborKFOZifferTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLEigenlaborKFOZifferTyp.Get_Berechnung: TXSDBerechnungskennzeichenEnum; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Berechnung(const Value: TXSDBerechnungskennzeichenEnum); begin SetAttribute('berechnung', Value); end;
function TXMLEigenlaborKFOZifferTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLEigenlaborKFOZifferTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLEigenlaborKFOZifferTyp.Get_Ziffer: TXSDString18Typ; begin if AttributeNodes.FindNode('ziffer') <> nil then Result := VarToStr(AttributeNodes['ziffer'].NodeValue) else Result := ''; end;
procedure TXMLEigenlaborKFOZifferTyp.Set_Ziffer(const Value: TXSDString18Typ); begin SetAttribute('ziffer', Value); end;
function TXMLEigenlaborKFOZifferTypList.Add: IXMLEigenlaborKFOZifferTyp; begin Result := AddItem(-1) as IXMLEigenlaborKFOZifferTyp; end;
function TXMLEigenlaborKFOZifferTypList.Insert(const Index: Integer): IXMLEigenlaborKFOZifferTyp; begin Result := AddItem(Index) as IXMLEigenlaborKFOZifferTyp; end;
function TXMLEigenlaborKFOZifferTypList.Get_Item(Index: Integer): IXMLEigenlaborKFOZifferTyp; begin Result := List[Index] as IXMLEigenlaborKFOZifferTyp; end;

procedure TXMLMaterialZifferTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLMaterialZifferTyp.Get_Datum: string; begin if ChildNodes.FindNode('datum') <> nil then Result := VarToStr(ChildNodes['datum'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Datum(const Value: string); begin if ChildNodes.FindNode('datum') = nil then AddChild('datum', TargetNamespace); ChildNodes['datum'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Menge: Double; begin if ChildNodes.FindNode('menge') <> nil then Result := Double(ChildNodes['menge'].NodeValue) else Result := 0; end;
procedure TXMLMaterialZifferTyp.Set_Menge(const Value: Double); begin if ChildNodes.FindNode('menge') = nil then AddChild('menge', TargetNamespace); ChildNodes['menge'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Einheit: string; begin if ChildNodes.FindNode('einheit') <> nil then Result := VarToStr(ChildNodes['einheit'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Einheit(const Value: string); begin if ChildNodes.FindNode('einheit') = nil then AddChild('einheit', TargetNamespace); ChildNodes['einheit'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLMaterialZifferTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLMaterialZifferTyp.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLMaterialZifferTyp.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLMaterialZifferTypList.Add: IXMLMaterialZifferTyp; begin Result := AddItem(-1) as IXMLMaterialZifferTyp; end;
function TXMLMaterialZifferTypList.Insert(const Index: Integer): IXMLMaterialZifferTyp; begin Result := AddItem(Index) as IXMLMaterialZifferTyp; end;
function TXMLMaterialZifferTypList.Get_Item(Index: Integer): IXMLMaterialZifferTyp; begin Result := List[Index] as IXMLMaterialZifferTyp; end;

procedure TXMLMaterialpassZifferTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLMaterialpassZifferTyp.Get_Bezeichnung: string; begin if ChildNodes.FindNode('bezeichnung') <> nil then Result := VarToStr(ChildNodes['bezeichnung'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Bezeichnung(const Value: string); begin if ChildNodes.FindNode('bezeichnung') = nil then AddChild('bezeichnung', TargetNamespace); ChildNodes['bezeichnung'].NodeValue := Value; end;
function TXMLMaterialpassZifferTyp.Get_Hersteller: string; begin if ChildNodes.FindNode('hersteller') <> nil then Result := VarToStr(ChildNodes['hersteller'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Hersteller(const Value: string); begin if ChildNodes.FindNode('hersteller') = nil then AddChild('hersteller', TargetNamespace); ChildNodes['hersteller'].NodeValue := Value; end;
function TXMLMaterialpassZifferTyp.Get_Seriennr: string; begin if ChildNodes.FindNode('seriennr') <> nil then Result := VarToStr(ChildNodes['seriennr'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Seriennr(const Value: string); begin if ChildNodes.FindNode('seriennr') = nil then AddChild('seriennr', TargetNamespace); ChildNodes['seriennr'].NodeValue := Value; end;
function TXMLMaterialpassZifferTyp.Get_Chargennr: string; begin if ChildNodes.FindNode('chargennr') <> nil then Result := VarToStr(ChildNodes['chargennr'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Chargennr(const Value: string); begin if ChildNodes.FindNode('chargennr') = nil then AddChild('chargennr', TargetNamespace); ChildNodes['chargennr'].NodeValue := Value; end;
function TXMLMaterialpassZifferTyp.Get_Bestandteile: string; begin if ChildNodes.FindNode('bestandteile') <> nil then Result := VarToStr(ChildNodes['bestandteile'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Bestandteile(const Value: string); begin if ChildNodes.FindNode('bestandteile') = nil then AddChild('bestandteile', TargetNamespace); ChildNodes['bestandteile'].NodeValue := Value; end;
function TXMLMaterialpassZifferTyp.Get_Erklaerung: string; begin if ChildNodes.FindNode('erklaerung') <> nil then Result := VarToStr(ChildNodes['erklaerung'].NodeValue) else Result := ''; end;
procedure TXMLMaterialpassZifferTyp.Set_Erklaerung(const Value: string); begin if ChildNodes.FindNode('erklaerung') = nil then AddChild('erklaerung', TargetNamespace); ChildNodes['erklaerung'].NodeValue := Value; end;
function TXMLMaterialpassZifferTypList.Add: IXMLMaterialpassZifferTyp; begin Result := AddItem(-1) as IXMLMaterialpassZifferTyp; end;
function TXMLMaterialpassZifferTypList.Insert(const Index: Integer): IXMLMaterialpassZifferTyp; begin Result := AddItem(Index) as IXMLMaterialpassZifferTyp; end;
function TXMLMaterialpassZifferTypList.Get_Item(Index: Integer): IXMLMaterialpassZifferTyp; begin Result := List[Index] as IXMLMaterialpassZifferTyp; end;

procedure TXMLAmboTyp.AfterConstruction;
begin
  RegisterChildNode('ops', TXMLOPSTyp);
  RegisterChildNode('einzelverguetung', TXMLAmboTypEinzelverguetung);
  inherited;
end;
function TXMLAmboTyp.Get_Ops: IXMLOPSTyp; begin if ChildNodes.FindNode('ops') <> nil then Result := ChildNodes['ops'] as IXMLOPSTyp else Result := nil; end;
function TXMLAmboTyp.Get_Doppeluntersuchung: Boolean; begin if ChildNodes.FindNode('doppeluntersuchung') <> nil then Result := Boolean(ChildNodes['doppeluntersuchung'].NodeValue) else Result := False; end;
procedure TXMLAmboTyp.Set_Doppeluntersuchung(const Value: Boolean); begin if ChildNodes.FindNode('doppeluntersuchung') = nil then AddChild('doppeluntersuchung', TargetNamespace); ChildNodes['doppeluntersuchung'].NodeValue := Value; end;
function TXMLAmboTyp.Get_Einzelverguetung: IXMLAmboTypEinzelverguetung; begin if ChildNodes.FindNode('einzelverguetung') <> nil then Result := ChildNodes['einzelverguetung'] as IXMLAmboTypEinzelverguetung else Result := nil; end;
function TXMLAmboTyp.Get_Zusatzebm: string; begin if ChildNodes.FindNode('zusatzebm') <> nil then Result := VarToStr(ChildNodes['zusatzebm'].NodeValue) else Result := ''; end;
procedure TXMLAmboTyp.Set_Zusatzebm(const Value: string); begin if ChildNodes.FindNode('zusatzebm') = nil then AddChild('zusatzebm', TargetNamespace); ChildNodes['zusatzebm'].NodeValue := Value; end;
function TXMLAmboTypList.Add: IXMLAmboTyp; begin Result := AddItem(-1) as IXMLAmboTyp; end;
function TXMLAmboTypList.Insert(const Index: Integer): IXMLAmboTyp; begin Result := AddItem(Index) as IXMLAmboTyp; end;
function TXMLAmboTypList.Get_Item(Index: Integer): IXMLAmboTyp; begin Result := List[Index] as IXMLAmboTyp; end;

procedure TXMLAmboTypEinzelverguetung.AfterConstruction;
begin
  inherited;
end;
function TXMLAmboTypEinzelverguetung.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLAmboTypEinzelverguetung.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLAmboTypEinzelverguetung.Get_Kennzeichen: string; begin if AttributeNodes.FindNode('kennzeichen') <> nil then Result := VarToStr(AttributeNodes['kennzeichen'].NodeValue) else Result := ''; end;
procedure TXMLAmboTypEinzelverguetung.Set_Kennzeichen(const Value: string); begin SetAttribute('kennzeichen', Value); end;
function TXMLAmboTypEinzelverguetungList.Add: IXMLAmboTypEinzelverguetung; begin Result := AddItem(-1) as IXMLAmboTypEinzelverguetung; end;
function TXMLAmboTypEinzelverguetungList.Insert(const Index: Integer): IXMLAmboTypEinzelverguetung; begin Result := AddItem(Index) as IXMLAmboTypEinzelverguetung; end;
function TXMLAmboTypEinzelverguetungList.Get_Item(Index: Integer): IXMLAmboTypEinzelverguetung; begin Result := List[Index] as IXMLAmboTypEinzelverguetung; end;

procedure TXMLAuslagenTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLAuslagenTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLAuslagenTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLAuslagenTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLAuslagenTyp.Get_Kennzeichen: TXSDPositionskennzeichenEnum; begin if AttributeNodes.FindNode('kennzeichen') <> nil then Result := VarToStr(AttributeNodes['kennzeichen'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenTyp.Set_Kennzeichen(const Value: TXSDPositionskennzeichenEnum); begin SetAttribute('kennzeichen', Value); end;
function TXMLAuslagenTyp.Get_Berechnung: string; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenTyp.Set_Berechnung(const Value: string); begin SetAttribute('berechnung', Value); end;
function TXMLAuslagenTypList.Add: IXMLAuslagenTyp; begin Result := AddItem(-1) as IXMLAuslagenTyp; end;
function TXMLAuslagenTypList.Insert(const Index: Integer): IXMLAuslagenTyp; begin Result := AddItem(Index) as IXMLAuslagenTyp; end;
function TXMLAuslagenTypList.Get_Item(Index: Integer): IXMLAuslagenTyp; begin Result := List[Index] as IXMLAuslagenTyp; end;

procedure TXMLAuslagenpositionTyp.AfterConstruction;
begin
  RegisterChildNode('beteiligung', TXMLBeteiligungTyp);
  ItemTag := 'beteiligung';
  ItemInterface := IXMLBeteiligungTyp;
  inherited;
end;
function TXMLAuslagenpositionTyp.Get_Leistungserbringerid: TXSDIdTyp; begin if ChildNodes.FindNode('leistungserbringerid') <> nil then Result := VarToStr(ChildNodes['leistungserbringerid'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Leistungserbringerid(const Value: TXSDIdTyp); begin if ChildNodes.FindNode('leistungserbringerid') = nil then AddChild('leistungserbringerid', TargetNamespace); ChildNodes['leistungserbringerid'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Datum: string; begin if ChildNodes.FindNode('datum') <> nil then Result := VarToStr(ChildNodes['datum'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Datum(const Value: string); begin if ChildNodes.FindNode('datum') = nil then AddChild('datum', TargetNamespace); ChildNodes['datum'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Uhrzeit: string; begin if ChildNodes.FindNode('uhrzeit') <> nil then Result := VarToStr(ChildNodes['uhrzeit'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Uhrzeit(const Value: string); begin if ChildNodes.FindNode('uhrzeit') = nil then AddChild('uhrzeit', TargetNamespace); ChildNodes['uhrzeit'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Anzahl: string; begin if ChildNodes.FindNode('anzahl') <> nil then Result := VarToStr(ChildNodes['anzahl'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Anzahl(const Value: string); begin if ChildNodes.FindNode('anzahl') = nil then AddChild('anzahl', TargetNamespace); ChildNodes['anzahl'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Zusatztext: TXSDTextTyp; begin if ChildNodes.FindNode('zusatztext') <> nil then Result := VarToStr(ChildNodes['zusatztext'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Zusatztext(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('zusatztext') = nil then AddChild('zusatztext', TargetNamespace); ChildNodes['zusatztext'].NodeValue := Value; end;
function TXMLAuslagenpositionTyp.Get_Beteiligung: IXMLBeteiligungTypList; begin Result := ChildNodes['beteiligung'] as IXMLBeteiligungTypList; end;
function TXMLAuslagenpositionTyp.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLAuslagenpositionTyp.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLAuslagenpositionTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLAuslagenpositionTyp.Get_Idref: TXSDIdTyp; begin if AttributeNodes.FindNode('idref') <> nil then Result := VarToStr(AttributeNodes['idref'].NodeValue) else Result := ''; end;
procedure TXMLAuslagenpositionTyp.Set_Idref(const Value: TXSDIdTyp); begin SetAttribute('idref', Value); end;
function TXMLAuslagenpositionTypList.Add: IXMLAuslagenpositionTyp; begin Result := AddItem(-1) as IXMLAuslagenpositionTyp; end;
function TXMLAuslagenpositionTypList.Insert(const Index: Integer): IXMLAuslagenpositionTyp; begin Result := AddItem(Index) as IXMLAuslagenpositionTyp; end;
function TXMLAuslagenpositionTypList.Get_Item(Index: Integer): IXMLAuslagenpositionTyp; begin Result := List[Index] as IXMLAuslagenpositionTyp; end;

procedure TXMLEntschaedigungTyp.AfterConstruction;
begin
  RegisterChildNode('anteil', TXMLEntschaedigungTypAnteil);
  inherited;
end;
function TXMLEntschaedigungTyp.Get_Anteil: IXMLEntschaedigungTypAnteil; begin if ChildNodes.FindNode('anteil') <> nil then Result := ChildNodes['anteil'] as IXMLEntschaedigungTypAnteil else Result := nil; end;
function TXMLEntschaedigungTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLEntschaedigungTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLEntschaedigungTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLEntschaedigungTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLEntschaedigungTyp.Get_Go: TXSDGebuehrenordnungEnum; begin if AttributeNodes.FindNode('go') <> nil then Result := VarToStr(AttributeNodes['go'].NodeValue) else Result := ''; end;
procedure TXMLEntschaedigungTyp.Set_Go(const Value: TXSDGebuehrenordnungEnum); begin SetAttribute('go', Value); end;
function TXMLEntschaedigungTyp.Get_Goversion: string; begin if AttributeNodes.FindNode('goversion') <> nil then Result := VarToStr(AttributeNodes['goversion'].NodeValue) else Result := ''; end;
procedure TXMLEntschaedigungTyp.Set_Goversion(const Value: string); begin SetAttribute('goversion', Value); end;
function TXMLEntschaedigungTypList.Add: IXMLEntschaedigungTyp; begin Result := AddItem(-1) as IXMLEntschaedigungTyp; end;
function TXMLEntschaedigungTypList.Insert(const Index: Integer): IXMLEntschaedigungTyp; begin Result := AddItem(Index) as IXMLEntschaedigungTyp; end;
function TXMLEntschaedigungTypList.Get_Item(Index: Integer): IXMLEntschaedigungTyp; begin Result := List[Index] as IXMLEntschaedigungTyp; end;

procedure TXMLEntschaedigungTypAnteil.AfterConstruction;
begin
  inherited;
end;
function TXMLEntschaedigungTypAnteil.Get_Teiler: Integer; begin if AttributeNodes.FindNode('teiler') <> nil then Result := Integer(AttributeNodes['teiler'].NodeValue) else Result := 0; end;
procedure TXMLEntschaedigungTypAnteil.Set_Teiler(const Value: Integer); begin SetAttribute('teiler', Value); end;
function TXMLEntschaedigungTypAnteilList.Add: IXMLEntschaedigungTypAnteil; begin Result := AddItem(-1) as IXMLEntschaedigungTypAnteil; end;
function TXMLEntschaedigungTypAnteilList.Insert(const Index: Integer): IXMLEntschaedigungTypAnteil; begin Result := AddItem(Index) as IXMLEntschaedigungTypAnteil; end;
function TXMLEntschaedigungTypAnteilList.Get_Item(Index: Integer): IXMLEntschaedigungTypAnteil; begin Result := List[Index] as IXMLEntschaedigungTypAnteil; end;

procedure TXMLHonorarTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLHonorarTyp.Get_Mwstsatz: TXSDProzentTyp; begin if ChildNodes.FindNode('mwstsatz') <> nil then Result := VarToStr(ChildNodes['mwstsatz'].NodeValue) else Result := ''; end;
procedure TXMLHonorarTyp.Set_Mwstsatz(const Value: TXSDProzentTyp); begin if ChildNodes.FindNode('mwstsatz') = nil then AddChild('mwstsatz', TargetNamespace); ChildNodes['mwstsatz'].NodeValue := Value; end;
function TXMLHonorarTyp.Get_Minderungssatz: TXSDMinderungssatzEnum; begin if ChildNodes.FindNode('minderungssatz') <> nil then Result := VarToStr(ChildNodes['minderungssatz'].NodeValue) else Result := ''; end;
procedure TXMLHonorarTyp.Set_Minderungssatz(const Value: TXSDMinderungssatzEnum); begin if ChildNodes.FindNode('minderungssatz') = nil then AddChild('minderungssatz', TargetNamespace); ChildNodes['minderungssatz'].NodeValue := Value; end;
function TXMLHonorarTyp.Get_Einzelbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('einzelbetrag') <> nil then Result := VarToStr(ChildNodes['einzelbetrag'].NodeValue) else Result := ''; end;
procedure TXMLHonorarTyp.Set_Einzelbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('einzelbetrag') = nil then AddChild('einzelbetrag', TargetNamespace); ChildNodes['einzelbetrag'].NodeValue := Value; end;
function TXMLHonorarTyp.Get_Gesamtbetrag: TXSDBetragTyp; begin if ChildNodes.FindNode('gesamtbetrag') <> nil then Result := VarToStr(ChildNodes['gesamtbetrag'].NodeValue) else Result := ''; end;
procedure TXMLHonorarTyp.Set_Gesamtbetrag(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('gesamtbetrag') = nil then AddChild('gesamtbetrag', TargetNamespace); ChildNodes['gesamtbetrag'].NodeValue := Value; end;
function TXMLHonorarTyp.Get_Berechnung: string; begin if AttributeNodes.FindNode('berechnung') <> nil then Result := VarToStr(AttributeNodes['berechnung'].NodeValue) else Result := ''; end;
procedure TXMLHonorarTyp.Set_Berechnung(const Value: string); begin SetAttribute('berechnung', Value); end;
function TXMLHonorarTypList.Add: IXMLHonorarTyp; begin Result := AddItem(-1) as IXMLHonorarTyp; end;
function TXMLHonorarTypList.Insert(const Index: Integer): IXMLHonorarTyp; begin Result := AddItem(Index) as IXMLHonorarTyp; end;
function TXMLHonorarTypList.Get_Item(Index: Integer): IXMLHonorarTyp; begin Result := List[Index] as IXMLHonorarTyp; end;

procedure TXMLReisekostenTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLReisekostenTyp.Get_Wegstrecke: string; begin if ChildNodes.FindNode('wegstrecke') <> nil then Result := VarToStr(ChildNodes['wegstrecke'].NodeValue) else Result := ''; end;
procedure TXMLReisekostenTyp.Set_Wegstrecke(const Value: string); begin if ChildNodes.FindNode('wegstrecke') = nil then AddChild('wegstrecke', TargetNamespace); ChildNodes['wegstrecke'].NodeValue := Value; end;
function TXMLReisekostenTyp.Get_Uebernachtungskosten: TXSDBetragTyp; begin if ChildNodes.FindNode('uebernachtungskosten') <> nil then Result := VarToStr(ChildNodes['uebernachtungskosten'].NodeValue) else Result := ''; end;
procedure TXMLReisekostenTyp.Set_Uebernachtungskosten(const Value: TXSDBetragTyp); begin if ChildNodes.FindNode('uebernachtungskosten') = nil then AddChild('uebernachtungskosten', TargetNamespace); ChildNodes['uebernachtungskosten'].NodeValue := Value; end;
function TXMLReisekostenTyp.Get_Abwesenheit: string; begin if AttributeNodes.FindNode('abwesenheit') <> nil then Result := VarToStr(AttributeNodes['abwesenheit'].NodeValue) else Result := ''; end;
procedure TXMLReisekostenTyp.Set_Abwesenheit(const Value: string); begin SetAttribute('abwesenheit', Value); end;
function TXMLReisekostenTypList.Add: IXMLReisekostenTyp; begin Result := AddItem(-1) as IXMLReisekostenTyp; end;
function TXMLReisekostenTypList.Insert(const Index: Integer): IXMLReisekostenTyp; begin Result := AddItem(Index) as IXMLReisekostenTyp; end;
function TXMLReisekostenTypList.Get_Item(Index: Integer): IXMLReisekostenTyp; begin Result := List[Index] as IXMLReisekostenTyp; end;

procedure TXMLWegegeldTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLWegegeldTyp.Get_Radius: string; begin if ChildNodes.FindNode('radius') <> nil then Result := VarToStr(ChildNodes['radius'].NodeValue) else Result := ''; end;
procedure TXMLWegegeldTyp.Set_Radius(const Value: string); begin if ChildNodes.FindNode('radius') = nil then AddChild('radius', TargetNamespace); ChildNodes['radius'].NodeValue := Value; end;
function TXMLWegegeldTyp.Get_Tageszeit: string; begin if AttributeNodes.FindNode('tageszeit') <> nil then Result := VarToStr(AttributeNodes['tageszeit'].NodeValue) else Result := ''; end;
procedure TXMLWegegeldTyp.Set_Tageszeit(const Value: string); begin SetAttribute('tageszeit', Value); end;
function TXMLWegegeldTypList.Add: IXMLWegegeldTyp; begin Result := AddItem(-1) as IXMLWegegeldTyp; end;
function TXMLWegegeldTypList.Insert(const Index: Integer): IXMLWegegeldTyp; begin Result := AddItem(Index) as IXMLWegegeldTyp; end;
function TXMLWegegeldTypList.Get_Item(Index: Integer): IXMLWegegeldTyp; begin Result := List[Index] as IXMLWegegeldTyp; end;

procedure TXMLTextzeileTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLTextzeileTyp.Get_Text: TXSDTextTyp; begin if ChildNodes.FindNode('text') <> nil then Result := VarToStr(ChildNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLTextzeileTyp.Set_Text(const Value: TXSDTextTyp); begin if ChildNodes.FindNode('text') = nil then AddChild('text', TargetNamespace); ChildNodes['text'].NodeValue := Value; end;
function TXMLTextzeileTyp.Get_Id: TXSDIdTyp; begin if AttributeNodes.FindNode('id') <> nil then Result := VarToStr(AttributeNodes['id'].NodeValue) else Result := ''; end;
procedure TXMLTextzeileTyp.Set_Id(const Value: TXSDIdTyp); begin SetAttribute('id', Value); end;
function TXMLTextzeileTyp.Get_Idref: TXSDIdTyp; begin if AttributeNodes.FindNode('idref') <> nil then Result := VarToStr(AttributeNodes['idref'].NodeValue) else Result := ''; end;
procedure TXMLTextzeileTyp.Set_Idref(const Value: TXSDIdTyp); begin SetAttribute('idref', Value); end;
function TXMLTextzeileTyp.Get_Positionsnr: Integer; begin if AttributeNodes.FindNode('positionsnr') <> nil then Result := Integer(AttributeNodes['positionsnr'].NodeValue) else Result := 0; end;
procedure TXMLTextzeileTyp.Set_Positionsnr(const Value: Integer); begin SetAttribute('positionsnr', Value); end;
function TXMLTextzeileTypList.Add: IXMLTextzeileTyp; begin Result := AddItem(-1) as IXMLTextzeileTyp; end;
function TXMLTextzeileTypList.Insert(const Index: Integer): IXMLTextzeileTyp; begin Result := AddItem(Index) as IXMLTextzeileTyp; end;
function TXMLTextzeileTypList.Get_Item(Index: Integer): IXMLTextzeileTyp; begin Result := List[Index] as IXMLTextzeileTyp; end;

procedure TXMLBetragSatzTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBetragSatzTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLBetragSatzTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLBetragSatzTyp.Get_Satz: TXSDProzentTyp; begin if AttributeNodes.FindNode('satz') <> nil then Result := VarToStr(AttributeNodes['satz'].NodeValue) else Result := ''; end;
procedure TXMLBetragSatzTyp.Set_Satz(const Value: TXSDProzentTyp); begin SetAttribute('satz', Value); end;
function TXMLBetragSatzTypList.Add: IXMLBetragSatzTyp; begin Result := AddItem(-1) as IXMLBetragSatzTyp; end;
function TXMLBetragSatzTypList.Insert(const Index: Integer): IXMLBetragSatzTyp; begin Result := AddItem(Index) as IXMLBetragSatzTyp; end;
function TXMLBetragSatzTypList.Get_Item(Index: Integer): IXMLBetragSatzTyp; begin Result := List[Index] as IXMLBetragSatzTyp; end;

procedure TXMLBetragBezeichnungTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBetragBezeichnungTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLBetragBezeichnungTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLBetragBezeichnungTyp.Get_Bezeichnung: TXSDString180Typ; begin if AttributeNodes.FindNode('bezeichnung') <> nil then Result := VarToStr(AttributeNodes['bezeichnung'].NodeValue) else Result := ''; end;
procedure TXMLBetragBezeichnungTyp.Set_Bezeichnung(const Value: TXSDString180Typ); begin SetAttribute('bezeichnung', Value); end;
function TXMLBetragBezeichnungTypList.Add: IXMLBetragBezeichnungTyp; begin Result := AddItem(-1) as IXMLBetragBezeichnungTyp; end;
function TXMLBetragBezeichnungTypList.Insert(const Index: Integer): IXMLBetragBezeichnungTyp; begin Result := AddItem(Index) as IXMLBetragBezeichnungTyp; end;
function TXMLBetragBezeichnungTypList.Get_Item(Index: Integer): IXMLBetragBezeichnungTyp; begin Result := List[Index] as IXMLBetragBezeichnungTyp; end;

procedure TXMLBetragBezeichnungSatzTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLBetragBezeichnungSatzTyp.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLBetragBezeichnungSatzTyp.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLBetragBezeichnungSatzTyp.Get_Bezeichnung: TXSDString140Typ; begin if AttributeNodes.FindNode('bezeichnung') <> nil then Result := VarToStr(AttributeNodes['bezeichnung'].NodeValue) else Result := ''; end;
procedure TXMLBetragBezeichnungSatzTyp.Set_Bezeichnung(const Value: TXSDString140Typ); begin SetAttribute('bezeichnung', Value); end;
function TXMLBetragBezeichnungSatzTyp.Get_Satz: TXSDProzentTyp; begin if AttributeNodes.FindNode('satz') <> nil then Result := VarToStr(AttributeNodes['satz'].NodeValue) else Result := ''; end;
procedure TXMLBetragBezeichnungSatzTyp.Set_Satz(const Value: TXSDProzentTyp); begin SetAttribute('satz', Value); end;
function TXMLBetragBezeichnungSatzTypList.Add: IXMLBetragBezeichnungSatzTyp; begin Result := AddItem(-1) as IXMLBetragBezeichnungSatzTyp; end;
function TXMLBetragBezeichnungSatzTypList.Insert(const Index: Integer): IXMLBetragBezeichnungSatzTyp; begin Result := AddItem(Index) as IXMLBetragBezeichnungSatzTyp; end;
function TXMLBetragBezeichnungSatzTypList.Get_Item(Index: Integer): IXMLBetragBezeichnungSatzTyp; begin Result := List[Index] as IXMLBetragBezeichnungSatzTyp; end;

procedure TXMLDateilaengeTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLDateilaengeTyp.Get_Laenge: string; begin if AttributeNodes.FindNode('laenge') <> nil then Result := VarToStr(AttributeNodes['laenge'].NodeValue) else Result := ''; end;
procedure TXMLDateilaengeTyp.Set_Laenge(const Value: string); begin SetAttribute('laenge', Value); end;
function TXMLDateilaengeTyp.Get_Pruefsumme: string; begin if AttributeNodes.FindNode('pruefsumme') <> nil then Result := VarToStr(AttributeNodes['pruefsumme'].NodeValue) else Result := ''; end;
procedure TXMLDateilaengeTyp.Set_Pruefsumme(const Value: string); begin SetAttribute('pruefsumme', Value); end;
function TXMLDateilaengeTypList.Add: IXMLDateilaengeTyp; begin Result := AddItem(-1) as IXMLDateilaengeTyp; end;
function TXMLDateilaengeTypList.Insert(const Index: Integer): IXMLDateilaengeTyp; begin Result := AddItem(Index) as IXMLDateilaengeTyp; end;
function TXMLDateilaengeTypList.Get_Item(Index: Integer): IXMLDateilaengeTyp; begin Result := List[Index] as IXMLDateilaengeTyp; end;

procedure TXMLFehlerTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLFehlerTyp.Get_Code: Integer; begin if AttributeNodes.FindNode('code') <> nil then Result := Integer(AttributeNodes['code'].NodeValue) else Result := 0; end;
procedure TXMLFehlerTyp.Set_Code(const Value: Integer); begin SetAttribute('code', Value); end;
function TXMLFehlerTyp.Get_Text: string; begin if AttributeNodes.FindNode('text') <> nil then Result := VarToStr(AttributeNodes['text'].NodeValue) else Result := ''; end;
procedure TXMLFehlerTyp.Set_Text(const Value: string); begin SetAttribute('text', Value); end;
function TXMLFehlerTyp.Get_Hinweis: string; begin if AttributeNodes.FindNode('hinweis') <> nil then Result := VarToStr(AttributeNodes['hinweis'].NodeValue) else Result := ''; end;
procedure TXMLFehlerTyp.Set_Hinweis(const Value: string); begin SetAttribute('hinweis', Value); end;
function TXMLFehlerTypList.Add: IXMLFehlerTyp; begin Result := AddItem(-1) as IXMLFehlerTyp; end;
function TXMLFehlerTypList.Insert(const Index: Integer): IXMLFehlerTyp; begin Result := AddItem(Index) as IXMLFehlerTyp; end;
function TXMLFehlerTypList.Get_Item(Index: Integer): IXMLFehlerTyp; begin Result := List[Index] as IXMLFehlerTyp; end;

procedure TXMLTeilnehmerTyp.AfterConstruction;
begin
  RegisterChildNode('logisch', TXMLTeilnehmerTypLogisch);
  RegisterChildNode('physikalisch', TXMLTeilnehmerTypPhysikalisch);
  inherited;
end;
function TXMLTeilnehmerTyp.Get_Logisch: IXMLTeilnehmerTypLogisch; begin Result := ChildNodes['logisch'] as IXMLTeilnehmerTypLogisch; end;
function TXMLTeilnehmerTyp.Get_Physikalisch: IXMLTeilnehmerTypPhysikalisch; begin Result := ChildNodes['physikalisch'] as IXMLTeilnehmerTypPhysikalisch; end;
function TXMLTeilnehmerTypList.Add: IXMLTeilnehmerTyp; begin Result := AddItem(-1) as IXMLTeilnehmerTyp; end;
function TXMLTeilnehmerTypList.Insert(const Index: Integer): IXMLTeilnehmerTyp; begin Result := AddItem(Index) as IXMLTeilnehmerTyp; end;
function TXMLTeilnehmerTypList.Get_Item(Index: Integer): IXMLTeilnehmerTyp; begin Result := List[Index] as IXMLTeilnehmerTyp; end;

procedure TXMLTeilnehmerTypLogisch.AfterConstruction;
begin
  inherited;
end;
function TXMLTeilnehmerTypLogisch.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLTeilnehmerTypLogisch.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLTeilnehmerTypLogisch.Get_Kundennr: TXSDPVSkundennrTyp; begin if AttributeNodes.FindNode('kundennr') <> nil then Result := VarToStr(AttributeNodes['kundennr'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypLogisch.Set_Kundennr(const Value: TXSDPVSkundennrTyp); begin SetAttribute('kundennr', Value); end;
function TXMLTeilnehmerTypLogisch.Get_Rzid: TXSDPvsIdsEnum; begin if AttributeNodes.FindNode('rzid') <> nil then Result := VarToStr(AttributeNodes['rzid'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypLogisch.Set_Rzid(const Value: TXSDPvsIdsEnum); begin SetAttribute('rzid', Value); end;
function TXMLTeilnehmerTypLogisch.Get_Iknr: TXSDIKnrTyp; begin if AttributeNodes.FindNode('iknr') <> nil then Result := VarToStr(AttributeNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypLogisch.Set_Iknr(const Value: TXSDIKnrTyp); begin SetAttribute('iknr', Value); end;
function TXMLTeilnehmerTypLogischList.Add: IXMLTeilnehmerTypLogisch; begin Result := AddItem(-1) as IXMLTeilnehmerTypLogisch; end;
function TXMLTeilnehmerTypLogischList.Insert(const Index: Integer): IXMLTeilnehmerTypLogisch; begin Result := AddItem(Index) as IXMLTeilnehmerTypLogisch; end;
function TXMLTeilnehmerTypLogischList.Get_Item(Index: Integer): IXMLTeilnehmerTypLogisch; begin Result := List[Index] as IXMLTeilnehmerTypLogisch; end;

procedure TXMLTeilnehmerTypPhysikalisch.AfterConstruction;
begin
  inherited;
end;
function TXMLTeilnehmerTypPhysikalisch.Get_Value: string; begin Result := NodeValue; end;
procedure TXMLTeilnehmerTypPhysikalisch.Set_Value(const Value: string); begin NodeValue := Value; end;
function TXMLTeilnehmerTypPhysikalisch.Get_Kundennr: TXSDPVSkundennrTyp; begin if AttributeNodes.FindNode('kundennr') <> nil then Result := VarToStr(AttributeNodes['kundennr'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypPhysikalisch.Set_Kundennr(const Value: TXSDPVSkundennrTyp); begin SetAttribute('kundennr', Value); end;
function TXMLTeilnehmerTypPhysikalisch.Get_Rzid: TXSDPvsIdsEnum; begin if AttributeNodes.FindNode('rzid') <> nil then Result := VarToStr(AttributeNodes['rzid'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypPhysikalisch.Set_Rzid(const Value: TXSDPvsIdsEnum); begin SetAttribute('rzid', Value); end;
function TXMLTeilnehmerTypPhysikalisch.Get_Iknr: TXSDIKnrTyp; begin if AttributeNodes.FindNode('iknr') <> nil then Result := VarToStr(AttributeNodes['iknr'].NodeValue) else Result := ''; end;
procedure TXMLTeilnehmerTypPhysikalisch.Set_Iknr(const Value: TXSDIKnrTyp); begin SetAttribute('iknr', Value); end;
function TXMLTeilnehmerTypPhysikalischList.Add: IXMLTeilnehmerTypPhysikalisch; begin Result := AddItem(-1) as IXMLTeilnehmerTypPhysikalisch; end;
function TXMLTeilnehmerTypPhysikalischList.Insert(const Index: Integer): IXMLTeilnehmerTypPhysikalisch; begin Result := AddItem(Index) as IXMLTeilnehmerTypPhysikalisch; end;
function TXMLTeilnehmerTypPhysikalischList.Get_Item(Index: Integer): IXMLTeilnehmerTypPhysikalisch; begin Result := List[Index] as IXMLTeilnehmerTypPhysikalisch; end;

procedure TXMLZeitraumTyp.AfterConstruction;
begin
  inherited;
end;
function TXMLZeitraumTyp.Get_Startdatum: string; begin if ChildNodes.FindNode('startdatum') <> nil then Result := VarToStr(ChildNodes['startdatum'].NodeValue) else Result := ''; end;
procedure TXMLZeitraumTyp.Set_Startdatum(const Value: string); begin if ChildNodes.FindNode('startdatum') = nil then AddChild('startdatum', TargetNamespace); ChildNodes['startdatum'].NodeValue := Value; end;
function TXMLZeitraumTyp.Get_Endedatum: string; begin if ChildNodes.FindNode('endedatum') <> nil then Result := VarToStr(ChildNodes['endedatum'].NodeValue) else Result := ''; end;
procedure TXMLZeitraumTyp.Set_Endedatum(const Value: string); begin if ChildNodes.FindNode('endedatum') = nil then AddChild('endedatum', TargetNamespace); ChildNodes['endedatum'].NodeValue := Value; end;
function TXMLZeitraumTyp.Get_Anzahltage: string; begin if ChildNodes.FindNode('anzahltage') <> nil then Result := VarToStr(ChildNodes['anzahltage'].NodeValue) else Result := ''; end;
procedure TXMLZeitraumTyp.Set_Anzahltage(const Value: string); begin if ChildNodes.FindNode('anzahltage') = nil then AddChild('anzahltage', TargetNamespace); ChildNodes['anzahltage'].NodeValue := Value; end;
function TXMLZeitraumTypList.Add: IXMLZeitraumTyp; begin Result := AddItem(-1) as IXMLZeitraumTyp; end;
function TXMLZeitraumTypList.Insert(const Index: Integer): IXMLZeitraumTyp; begin Result := AddItem(Index) as IXMLZeitraumTyp; end;
function TXMLZeitraumTypList.Get_Item(Index: Integer): IXMLZeitraumTyp; begin Result := List[Index] as IXMLZeitraumTyp; end;


end.
