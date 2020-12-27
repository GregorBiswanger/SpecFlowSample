using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace Level100
{
    [Binding]
    public class AccountFormDefinition
    {
        private AccountForm _sut;

        [Given(@"I entered the following data into the new account form")]
        public void GivenIEnteredTheFollowingDataIntoTheNewAccountForm(Table table)
        {
            _sut = table.CreateInstance<AccountForm>();
        }

        [Then(@"I get back the following accounts")]
        public void ThenIGetBackTheFollowingAccounts(Table table)
        {
            table.CompareToInstance(_sut);
        }
    }

    public class AccountForm
    {
        public string Name { get; set; }
        public string Birthdate { get; set; }
        public string HeightInInches { get; set; }
        public string BankAccountBalance { get; set; }
    }
}
