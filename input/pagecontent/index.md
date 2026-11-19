<!--
  Schritt 7: Startseite eures IG
-->

### Use Case

Eine Hausarztpraxis erfasst die Arzneimittelallergien ihrer Patientinnen und Patienten strukturiert und codiert.
Die Notfallstation eines Spitals liest diese Angaben und muss auf einen Blick erkennen, gegen welches Arzneimittel eine Allergie besteht, wie gefährlich sie ist und welche Reaktionen bekannt sind.
So können gefährliche Medikamentengaben im Notfall vermieden werden.

### Scope

Dieses IG deckt nur Allergien und Intoleranzen gegen **Arzneimittel** ab (`category = medication`).
Es baut auf dem Profil CH Core AllergyIntolerance auf und schränkt es weiter ein:
der klinische Status, der Allergie-Code (Schweizer Allergieliste, extensible), die Kritikalität und die erfassende Ärztin oder der erfassende Arzt sind Pflicht.
Der Beginn kann als Datum oder als ungefähres Alter erfasst werden.
Eine bestätigte Allergie muss mindestens eine Reaktion dokumentieren (Invariante `dg-allergy-1`).

Nicht abgedeckt sind Nahrungsmittel-, Umwelt- und biologische Allergien sowie der Austausch der Daten (keine Bundles oder Dokumente).

### Artefakte

* [DG Arzneimittelallergie](StructureDefinition-dg-medication-allergy.html): Profil für eine Arzneimittelallergie mit den Regeln der Hausarztpraxis und der Notfallstation.
* [Penicillin-Allergie von Anna Muster (bestätigt)](AllergyIntolerance-PenicillinAllergieAnna.html): bestätigte Allergie mit hoher Kritikalität, Beginn als Datum und Urtikaria als Reaktion.
* [Benzylpenicillin-Allergie von Anna Muster (unbestätigt)](AllergyIntolerance-BenzylpenicillinAllergieAnna.html): unbestätigte Allergie ohne Reaktion, Beginn als ungefähres Alter (30 Jahre).

### Abhängigkeiten

Dieses IG baut auf [CH Core 6.0.0](https://fhir.ch/ig/ch-core/6.0.0/) auf.

### Autorin

Avanthiga Jeyakumar, BSc Medizininformatik (MI25a), ZHAW

<p style="font-size:smaller">Erstellt im Lab des Moduls Data Standards in Healthcare, ZHAW, HS26. Kein offizieller Standard.</p>
