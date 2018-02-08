using mvcproject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int id)
        {
            premierleagueEntities dbContextObj = new premierleagueEntities();
            var data = dbContextObj.GetGameDetails(5);
            ViewBag.Message = id;
            return View(id);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult GameDetails()
        {
            GameDetailsViewModel getgames = new GameDetailsViewModel();
            List<GameDetailsViewModel> gamesList = new List<GameDetailsViewModel>();
            gamesList = getgames.GetGameInfo();
            return View(gamesList);
        }
        public ActionResult PlaceBet(int id)
        {
            ViewBag.Message = "Place Bets!";
            PlaceBetViewModel placeBetModel = new PlaceBetViewModel();
            BetTypesModel betModelObj = new BetTypesModel();
            MatchPlayersModel matchPlayersModelObj = new MatchPlayersModel();
            List<BetTypesModel> betlist= betModelObj.GetBetsForGame();

            placeBetModel.Bets = (from one in betlist where one.BetTypeId > 1 select one).ToList();
            placeBetModel.GameBet = (from one in betlist where one.BetTypeId == 1 select one).ToList().First();
            placeBetModel.Players = matchPlayersModelObj.GetPlayersForGame(id);
            placeBetModel.GameID = id;            
            return View(placeBetModel);
        }

        
        public ActionResult SaveBet(PlaceBetViewModel obj, string gameID)
        {
            return View();
        }
    }
}