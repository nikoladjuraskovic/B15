using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B15
{
    public class Polazak
    {
        public string redniBr { get; set; }
        public string vreme { get; set; }
        public string smer { get; set; }

        public Polazak() { }
        public Polazak(string redniBr, string vreme, string smer)
        {
            this.redniBr = redniBr;
            this.vreme = vreme;
            this.smer = smer;
        }
    }
}