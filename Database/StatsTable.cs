//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class StatsTable
    {
        public decimal ResultID { get; set; }
        public decimal GameID { get; set; }
        public decimal TeamID { get; set; }
        public Nullable<int> PlayerID { get; set; }
        public Nullable<int> Runs { get; set; }
        public Nullable<int> Wickets { get; set; }
        public Nullable<int> Sixes { get; set; }
        public Nullable<int> Fours { get; set; }
        public Nullable<bool> NotOut { get; set; }
        public Nullable<int> BallsFaced { get; set; }
        public Nullable<bool> MoM { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}
