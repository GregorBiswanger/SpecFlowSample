using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Level100
{
    public class Calculator
    {
        private CalculatorOperation _key = CalculatorOperation.None;
        public void Do(decimal number)
        {
            //CurrentResult = number;
            switch (_key)
            {
                case CalculatorOperation.Division:
                    CurrentResult = CurrentResult / number;
                    break;
                case CalculatorOperation.Addition:
                    CurrentResult = CurrentResult + number;
                    break;
                default:
                    CurrentResult = number;
                    break;
            }
        }

        public void Do(CalculatorOperation key)
        {
            _key = key;
        }

        public decimal CurrentResult { get; private set; }
    }
}
