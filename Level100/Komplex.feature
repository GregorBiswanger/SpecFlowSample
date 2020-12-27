# www.DIGITAL-TURBO.de :)

Feature: Komplex
  Um Fehler zu vermeiden, müssen die Kassierer in der Lage sein,
  Divisionen auszurechnen und mit Addition zu kombinieren

  Scenario: Regular numbers
    Given ich habe die Zahl 3 im Taschenrechner eingegeben
    And ich habe die Taste "Division" gedrückt
    And ich habe die Zahl 2 im Taschenrechner eingegeben
    And ich habe die Taste "Addition" gedrückt
    And ich habe die Zahl 5 im Taschenrechner eingegeben
    When ich auf die Taste "Gleich" drücke
    Then sollte als Resultat 6.5 am Bildschirm ausgegeben werden