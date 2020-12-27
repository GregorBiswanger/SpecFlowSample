# www.DIGITAL-TURBO.de :)

Feature: Division
  Um Fehler zu vermeiden, müssen die Kassierer in der Lage sein,
  Divisionen auszurechnen


  Scenario: Regular numbers
    Given ich habe die Zahl 3 im Taschenrechner eingegeben
    And ich habe die Taste "Division" gedrückt
    And ich habe die Zahl 2 im Taschenrechner eingegeben
    When ich auf die Taste "Gleich" drücke
    Then sollte als Resultat 1.5 am Bildschirm ausgegeben werden

  Scenario Outline: Variablentest
    Given ich habe die Zahl <Zahl1> im Taschenrechner eingegeben
    And ich habe die Taste "<Operator1>" gedrückt
    And ich habe die Zahl <Zahl2> im Taschenrechner eingegeben
    When ich auf die Taste "<Operator2>" drücke
    Then sollte als Resultat <Ergebnis> am Bildschirm ausgegeben werden

    Examples:
        | ScenarioName | Zahl1 | Operator1 | Zahl2 | Operator2 | Ergebnis |
        | Dividieren   |   3   | Division  |  2    |   Gleich  |  1.5     |
        | Addieren     |   1   | Addition  |  3    |   Gleich  |  4.0     |




Scenario: Regular numbers als Liste
    Then Berechnung soll ergeben
    | Zahl1 | Operator | Zahl2 | Ergebnis |
    | 1     | Addition | 2     | 3        |
    | 3     | Division | 2     | 1.5      |
    | 8     | Addition | 2     | 10       |


Scenario: Properties setzen
    Given Calculator wird vorinitialisiert
    | Key   | Value |
    | Zahl1 | 1     |
    | Zahl2 | 2     |
    | Zahl3 | 3     |
