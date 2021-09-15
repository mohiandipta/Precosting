using System;
using System.Data;
using DAL.LCPreCostingTableAdapters;

namespace BLL
{
    public class Precosting_BLL
    {
        DataTable dt = new DataTable();

        public DataTable GetData()
        { 
            try
            {
                PrecostingSetup_SPTableAdapter adp = new PrecostingSetup_SPTableAdapter();
                dt = adp.GetData();
            }
            catch(Exception ex)
            {
                dt = new DataTable();
            }
            return dt;
        }
    }
}
