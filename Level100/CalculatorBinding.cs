using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TechTalk.SpecFlow;

namespace Level100
{
    [Binding]
    public class CalculatorBinding
    {
        private Calculator _sut;

        [BeforeScenario]
        public void OnBeforeScenario()
        {
            _sut = new Calculator();
        }

        [Given(@"ich habe die Zahl (.*) im Taschenrechner eingegeben")]
        public void GivenIchHabeDieZahlImTaschenrechnerEingegeben(int zahl)
        {
            _sut.Do(zahl);
        }

        [Given(@"ich habe die Taste ""(.*)"" gedrückt")]
        public void GivenIchHabeDieTasteGedruckt(CalculatorOperation taste)
        {
            _sut.Do(taste);
        }

        [When(@"ich auf die Taste ""(.*)"" drücke")]
        public void WhenIchAufDieTasteDrucke(CalculatorOperation taste)
        {
            _sut.Do(taste);
        }

        [Then(@"sollte als Resultat (.*) am Bildschirm ausgegeben werden")]
        public void ThenSollteAlsResultatAmBildschirmAusgegebenWerden(Decimal expectedResult)
        {
            Assert.AreEqual(expectedResult, _sut.CurrentResult);
        }

        [Then(@"Berechnung soll ergeben")]
        public void ThenBerechnungSollErgeben(Table table)
        {
            for (int i = 0; i < table.RowCount; i++)
            {
                var row = table.Rows[i];

                var zahl1 = decimal.Parse(row[0]);
                var op = (CalculatorOperation)Enum.Parse(typeof(CalculatorOperation), row[1]);
                var zahl2 = decimal.Parse(row[2]);
                var expected = decimal.Parse(row[3]);

                var sut = new Calculator();
                sut.Do(zahl1);
                sut.Do(op);
                sut.Do(zahl2);

                Assert.AreEqual(expected, sut.CurrentResult, $"Zeile {i + 1} falsch");
            }
        }
    }
}
