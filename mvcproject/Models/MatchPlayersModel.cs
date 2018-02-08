using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace mvcproject.Models
{
    public class MatchPlayersModel
    {
        public int PlayerID { get; set; }
        public string Player { get; set; }
        public Nullable<decimal> TeamID { get; set; }

        public MatchPlayersModel()
        {

        }

        public List<MatchPlayersModel> GetPlayersForGame(int id)
        {
            premierleagueEntities dbContextObj = new premierleagueEntities();
            var data = dbContextObj.GetPlayersForMatch(id);
            List<MatchPlayersModel> playersList = new List<MatchPlayersModel>();
            //if (data.ToList().Any()) { 
            foreach (var v in data.ToList())
            {
                MatchPlayersModel matchPlayersObj = new MatchPlayersModel();
                matchPlayersObj.Player = v.Player;
                matchPlayersObj.PlayerID = v.PlayerID;
                matchPlayersObj.TeamID = v.TeamID;
                playersList.Add(matchPlayersObj);
            }

            return playersList;
            //}

            //return playersList=null; // to check if list can null values.
        }
    }
}