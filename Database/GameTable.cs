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
    
    public partial class GameTable
    {
        public decimal GameID { get; set; }
        public decimal Team1 { get; set; }
        public decimal Team2 { get; set; }
        public System.DateTime Date { get; set; }
        public Nullable<System.TimeSpan> Time { get; set; }
        public Nullable<decimal> TeamWon { get; set; }
        public Nullable<bool> IsActive { get; set; }
    }
}
