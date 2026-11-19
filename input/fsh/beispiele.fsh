/* ---------------------------------------------------------------------------
 * --  _____       _____ _______                                             -
 * -- |_   _|     |_   _|__   __|                                            -
 * --   | |  _ __   | |    | |       Institute of Computer Science           -
 * --   | | | '_ \  | |    | |       Zurich University of                    -
 * --  _| |_| | | |_| |_   | |       Applied Sciences                        -
 * -- |_____|_| |_|_____|  |_|       8401 Winterthur, Switzerland            -
 * ---------------------------------------------------------------------------
 */

// =====================================================================
// Schritt 6: Beispiel
//
// Erstellt ein gültiges Beispiel zu eurem Profil. Patientin, Ärztin und
// Praxis gibt es schon (basis-beispiele.fsh). Entfernt die // und ersetzt
// die TODOs. Das Beispiel muss alle Regeln aus eurem Profil erfüllen,
// auch die Invariante: Ist die Allergie bestätigt (confirmed), braucht
// sie eine Reaktion.
// =====================================================================

Instance: PenicillinAllergieAnna
InstanceOf: DgMedicationAllergy
Usage: #example
Title: "Penicillin-Allergie von Anna Muster (bestätigt)"
Description: "Bestätigte Penicillin-Allergie mit hoher Kritikalität und Urtikaria als Reaktion. Der Beginn ist als Datum erfasst."
* patient = Reference(AnnaMuster)
* category = #medication
* clinicalStatus = $allergy-clinical#active
* verificationStatus = $allergy-verification#confirmed
* code = $sct#91936005 "Allergy to penicillin (finding)"
* criticality = #high
* onsetDateTime = "2015-06-20"
* recorder = Reference(DrSaraKellerPraxisAmPark)
* reaction.manifestation = $sct#126485001 "Urticaria (disorder)"

Instance: BenzylpenicillinAllergieAnna
InstanceOf: DgMedicationAllergy
Usage: #example
Title: "Benzylpenicillin-Allergie von Anna Muster (unbestätigt)"
Description: "Unbestätigte Benzylpenicillin-Allergie ohne dokumentierte Reaktion. Die Patientin weiss nur noch ungefähr, in welchem Alter die Allergie aufgetreten ist, deshalb ist der Beginn als Alter erfasst."
* patient = Reference(AnnaMuster)
* category = #medication
* clinicalStatus = $allergy-clinical#active
* verificationStatus = $allergy-verification#unconfirmed
* code = $sct#294499007 "Allergy to benzylpenicillin (finding)"
* criticality = #unable-to-assess
* onsetAge = 30 'a' "Jahre"
* recorder = Reference(DrSaraKeller)
