using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B15
{
    public partial class RedVoznje : System.Web.UI.Page
    {
        public void popuniSmer()
        {
            DropDownList2.Items.Clear();
            string[] sviPodaci = File.ReadAllLines(Server.MapPath(DropDownList1.SelectedValue));
            foreach (string s in sviPodaci)
            {
                if (s.StartsWith("SMER"))
                    DropDownList2.Items.Add(s.Substring(5));
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                popuniSmer();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            popuniSmer();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Polazak> polasciPrikaz = new List<Polazak>();

            string[] sviPodaci = File.ReadAllLines(Server.MapPath(DropDownList1.SelectedValue));
            string smer = "";
            string vreme = "";
            int brPolaska = 0;

            foreach (string s in sviPodaci)
            {
                Polazak p = new Polazak();
                if (s.StartsWith("SMER"))
                {
                    smer = s.Substring(5);
                    brPolaska = 1;
                }
                else
                {
                    vreme = s;
                    string rbr = brPolaska + ".";
                    p = new Polazak(rbr, vreme, smer);
                    brPolaska++;
                }
                if (p.smer == DropDownList2.SelectedValue)
                    polasciPrikaz.Add(p);
            }
            GridView1.DataSource = polasciPrikaz;
            GridView1.DataBind();
        }
    }
}