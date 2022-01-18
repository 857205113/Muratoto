using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace proje
{
    class DbOperation
    {
        veritabani v = new veritabani();
        SqlConnection connection;
        SqlCommand sqlCmd;
        SqlDataAdapter sqlDa;
        string cnnStr;
        public DbOperation()
        {
            cnnStr = "Data Source=localhost;Initial Catalog=BulutOto;Integrated Security=true;";
        }
        public DbOperation(string connStr)
        {
            cnnStr = connStr;
        }
        public class veritabani
        {
            public SqlConnection baglanti = new SqlConnection("Data Source = localhost; Initial Catalog = BulutOto; Integrated Security = true;");

        }
        public DataTable SelectTable(string cmdStr)
        {
            connection = new SqlConnection(cnnStr);
            sqlCmd = new SqlCommand(cmdStr, connection);
            sqlDa = new SqlDataAdapter(sqlCmd);
            DataTable dt = new DataTable();
            try
            {
                sqlDa.Fill(dt);
            }
            catch
            {

            }
            return dt;
        }

        public int runCommand(string cmdStr)
        {
            int numberOfRows = 0;
            connection = new SqlConnection(cnnStr);
            sqlCmd = new SqlCommand(cmdStr, connection);
            try
            {
                connection.Open();
                numberOfRows = sqlCmd.ExecuteNonQuery();
                connection.Close();
            }
            catch
            {
                numberOfRows = -1;
                connection.Close();
            }
            return numberOfRows;

        }

        public SqlConnection baglan()
        {
            //SqlConnection baglanti = new SqlConnection("Server= 95.173.170.161\\MSSQLSERVER2012;Database=bazakorg_bulut;User ID=bazakorg_bulut;Password=Bulutazak18.;Integrated Security=False");
            SqlConnection baglanti = new SqlConnection("Data Source=localhost;Initial Catalog=BulutOto;Integrated Security=true;");

            baglanti.Open();
            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();
            return baglanti;

        }
        public DataTable List(string sql)
        {
            DataTable tbl = new DataTable();
            SqlDataAdapter adtr = new SqlDataAdapter(sql, v.baglanti);
            adtr.Fill(tbl);
            return tbl;

        }
        public Boolean CUD(SqlCommand Command, string sql)
        {
            v.baglanti.Open();
            Command = new SqlCommand();
            Command.CommandText = sql;
            Command.Connection = v.baglanti;
            Command.ExecuteNonQuery();
            try
            {

                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            { v.baglanti.Close(); }


        }



    }
}
