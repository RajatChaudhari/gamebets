using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Models
{
    public class PlaceBetViewModel
    {
        public List<BetTypesModel> Bets { get; set; }
        public List<MatchPlayersModel> Players { get; set; }
        public BetTypesModel GameBet { get; set; }
        public int GameID { get; set; }
        public decimal BetTypeId { get; set; }
        public int PlayerID { get; set; }

    }
}