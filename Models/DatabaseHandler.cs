using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Xenos_Dashboard.Models
{
    public class DatabaseHandler
    {
        private String sqlConnStr = String.Empty;
        private SqlConnection sqlConn = new SqlConnection();
        private SqlDataReader sqlReader;

        public DatabaseHandler()
        {

        }
        public DatabaseHandler(String connStr = null)
        {
            if (connStr != null)
                this.sqlConn.ConnectionString = connStr;
            else
            {
                CheckConnStr();
                this.sqlConn.ConnectionString = this.sqlConnStr;

            }
        }
        private void setSqlConnStr(String str)
        {
            this.sqlConnStr = str;
        }
        private String getSqlConnStr()
        {
            return this.sqlConnStr;
        }
        private String[,] Query_SQL(String sqlCommandString)//{Select} => returns all seleted rows
        {
            this.sqlConn.Open();
            this.sqlReader = new SqlCommand(sqlCommandString, this.sqlConn).ExecuteReader();
            

            String[,] rowData = new String[1, this.sqlReader.FieldCount];
            int count = 0;

            while (this.sqlReader.Read())
            {
                for(int i = 0; i < this.sqlReader.FieldCount; i++)
                {
                    rowData[count, i] = this.sqlReader.GetValue(i).ToString();
                }
                count++;
            }

            this.sqlConn.Close();
            return rowData;
        }
        private int NonQuery_SQL(String sqlCommandString)//{Insert, Delete, Update} => returns rows affected
        {
            this.sqlConn.Open();
            int rows = new SqlCommand(sqlCommandString, this.sqlConn).ExecuteNonQuery();
            this.sqlConn.Close();

            return rows;
        }
        private void CheckConnStr()
        {
            if (String.IsNullOrEmpty(this.getSqlConnStr()))
            {
                throw new Exception("Connection string is null or empty, Set connection string 1st with DatabaseHanlder.setSqlConnStr(String str)");
            }
        } //
    }
}