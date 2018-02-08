using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace mvcproject.Models
{
    public class BetTypesModel
    {
        public decimal BetTypeId { get; set; }
        public string BetDescription { get; set; }
        public Nullable<int> BetCategory { get; set; }
        public Nullable<int> BetValue { get; set; }
        public List<BetTypesModel> betList { get; set; }
        public List<BetTypesModel> GetBetsForGame()
        {
            premierleagueEntities dbContextObj = new premierleagueEntities();
            var bets = dbContextObj.GetBets();
             betList = new List<BetTypesModel>();
            //if (bets.Any())
            //{
                foreach (var bet in bets.ToList())
                {
                    BetTypesModel betsObj = new BetTypesModel();
                    betsObj.BetCategory = bet.BetCategory;
                    betsObj.BetDescription = bet.BetDescription;
                    betsObj.BetTypeId = bet.BetTypeId;
                    betsObj.BetValue = bet.BetValue;
                    betList.Add(betsObj);
                }

                return betList;
            //}

            //return betsList = null; // to check if list can null values.
        }
    }
}