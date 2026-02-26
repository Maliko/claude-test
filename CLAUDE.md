# PADneXt XML-Datenbindung

## Aufgabe
Erstelle aus den XSD-Schemas im Repository-Root eine vollständige Delphi-Datenbindungs-Unit
im Stil des **Delphi XML Data Binding Wizards**.

**Zieldatei:** `PADneXt.Xml.pas`

---

## Vorgehensweise

1. Lies zunächst `padx_adl_v2.12.xsd` aus dem Repository-Root
2. Identifiziere alle `<xs:import>`- und `<xs:include>`-Referenzen und lies diese ebenfalls ein
3. Analysiere die vollständige Typenhierarchie (ComplexTypes, SimpleTypes, Elements, Attributes)
4. Generiere daraus `PADneXt.Xml.pas` – vollständig, kompilierbereit, keine Platzhalter

---

## Technische Vorgaben

### Framework
- **Nur native Delphi-Bordmittel**: `XMLDoc`, `XMLIntf`, `msxmldom` oder `oxmldom`
- Keine Drittanbieter-Bibliotheken
- Ziel-Delphi-Version: so kompatibel wie möglich (ab Delphi XE2)

### Codestil: Delphi XML Data Binding Wizard
Generiere Code **exakt im Stil des Delphi XML Data Binding Wizards**:

```pascal
// Interface-Deklaration
IXMLMeinTyp = interface(IXMLNode)
  ['{GUID}']
  // Getter/Setter
  function Get_Attribut: string;
  procedure Set_Attribut(const Value: string);
  function Get_KindElement: IXMLKindTyp;
  // Properties
  property Attribut: string read Get_Attribut write Set_Attribut;
  property KindElement: IXMLKindTyp read Get_KindElement;
end;

// Implementierungsklasse
TXMLMeinTyp = class(TXMLNode, IXMLMeinTyp)
  function Get_Attribut: string;
  procedure Set_Attribut(const Value: string);
  function Get_KindElement: IXMLKindTyp;
end;

// Factory-Funktion
function GetMeinTyp(Doc: IXMLDocument): IXMLMeinTyp;
function LoadMeinTyp(const FileName: string): IXMLMeinTyp;
function NewMeinTyp: IXMLMeinTyp;
```

### Namensgebung
- Interface-Namen: `IXML` + PascalCase des XSD-Typnamens
- Implementierungsklassen: `TXML` + PascalCase des XSD-Typnamens
- Collections: Interface `IXMLXxxList`, Klasse `TXMLXxxList`, erbt von `TXMLNodeCollection`
- Getter: `Get_XxxYyy`, Setter: `Set_XxxYyy`
- XSD `xs:sequence` mit `maxOccurs="unbounded"` → Collection-Interface

### Typenmapping (XSD → Delphi)
| XSD-Typ            | Delphi-Typ        |
|--------------------|-------------------|
| `xs:string`        | `string`          |
| `xs:integer`       | `Integer`         |
| `xs:decimal`       | `Double`          |
| `xs:boolean`       | `Boolean`         |
| `xs:date`          | `string`          |
| `xs:dateTime`      | `string`          |
| `xs:anyURI`        | `string`          |
| `xs:base64Binary`  | `string`          |
| Enumerations       | eigener `string`-Typ mit Kommentar der erlaubten Werte |

### Dateistruktur
```
unit PADneXt.Xml;

interface

uses
  Winapi.Windows, System.SysUtils, Xml.XMLDoc, Xml.XMLIntf;

// --- Forward-Deklarationen aller Interfaces ---
type
  IXMLTypA = interface;
  IXMLTypB = interface;
  ...

// --- Interface-Definitionen ---
  IXMLTypA = interface(IXMLNode)
    ...
  end;

// --- Implementierungsklassen ---
  TXMLTypA = class(TXMLNode, IXMLTypA)
    ...
  end;

// --- Factory-Funktionen ---
function GetRootElement(Doc: IXMLDocument): IXMLRootType;
function LoadRootElement(const FileName: string): IXMLRootType;
function NewRootElement: IXMLRootType;

implementation

uses
  Xml.xmldom, Xml.msxmldom;

...

end.
```

---

## Wichtige Hinweise

- **Vollständigkeit**: Alle Typen aus allen importierten XSD-Dateien müssen abgedeckt sein
- **Keine TODOs oder Platzhalter** in der finalen Datei
- Bei `xs:extension` und `xs:restriction`: Vererbung korrekt abbilden
- Bei optionalen Elementen (`minOccurs="0"`): Existenzprüfung via `ChildNodes.FindNode` statt direktem Zugriff
- Namespace-Handling: Namespace-URI aus dem XSD als Konstante deklarieren
- GUIDs für alle Interfaces generieren (neue, zufällige GUIDs)
- Am Dateiende: `initialization`-Block mit `RegisterChildNodes`-Aufrufen falls nötig

---

## Erlaubte Aktionen

- ✅ XSD-Dateien lesen (`Read`-Tool)
- ✅ `PADneXt.Xml.pas` erstellen und bearbeiten (`Write`-Tool)
- ❌ Keine anderen Dateien im Repository verändern
- ❌ Keine Bash-Befehle ausführen
