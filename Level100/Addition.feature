# www.DIGITAL-TURBO.de :)

Feature: Addition
  Um Fehler zu vermeiden, müssen die Kassierer in der Lage sein,
  Additionen auszurechnen

  Scenario: Regular numbers
    Given ich habe die Zahl 3 im Taschenrechner eingegeben
    And ich habe die Taste "Addition" gedrückt
    And ich habe die Zahl 2 im Taschenrechner eingegeben
    When ich auf die Taste "Gleich" drücke
    Then sollte als Resultat 5 am Bildschirm ausgegeben werden