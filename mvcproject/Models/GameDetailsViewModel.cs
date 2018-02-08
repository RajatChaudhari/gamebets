using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace mvcproject.Models
{
    public class GameDetailsViewModel
    {
        public System.DateTime Date { get; set; }
        public decimal GAME_ID { get; set; }
        public decimal TEAM_1_ID { get; set; }
        public decimal TEAM_2_ID { get; set; }
        public string TEAM_1_NAME { get; set; }
        public string TEAM_2_NAME { get; set; }
        public List<GameDetailsViewModel> gamelist { get; set; }

        public List<GameDetailsViewModel> GetGameInfo()
        {
            premierleagueEntities dbContextObj = new premierleagueEntities();
            var gameData = dbContextObj.GetGameDetails(0).ToList();
            gamelist = new List<GameDetailsViewModel>();
            foreach (var data in gameData.ToList())
            {
                GameDetailsViewModel gameObj = new GameDetailsViewModel();
                gameObj.Date = data.Date;
                gameObj.GAME_ID = data.GAME_ID;
                gameObj.TEAM_1_ID = data.TEAM_1_ID;
                gameObj.TEAM_1_NAME = data.TEAM_1_NAME;
                gameObj.TEAM_2_ID = data.TEAM_2_ID;
                gameObj.TEAM_2_NAME = data.TEAM_2_NAME;
                gamelist.Add(gameObj);
            }

            return gamelist;
        }
   }
}