using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class CsData
{
    public static string myContext = "Data Source=HP-ADI;Initial Catalog=TVMaze;User ID=sa;Password=Adi@4321;";

    public static int Execute(string sqlStatement, CommandType cmdType, SortedList sqlPara)
    {
        int affected = -1;
        try
        {
            var connection = myContext;
            using (SqlConnection ctx = new SqlConnection(connection))
            {
                ctx.Open();
                using (var cmd = new SqlCommand(sqlStatement, ctx))
                {
                    cmd.CommandType = cmdType;
                    foreach (DictionaryEntry dPara in sqlPara)
                    {
                        cmd.Parameters.AddWithValue(dPara.Key.ToString(), dPara.Value);
                    }

                    DbParameter myReturnValue = null;
                    myReturnValue = cmd.CreateParameter();
                    myReturnValue.Direction = ParameterDirection.ReturnValue;
                    cmd.Parameters.Add(myReturnValue);

                    cmd.CommandTimeout = 90;
                    cmd.ExecuteNonQuery();
                    affected = Convert.ToInt32(myReturnValue.Value);
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }

        return affected;
    }

    public static object ExecuteQryScalarSP(String spname, SortedList parameters)
    {
        object rtnValue = null;

        try
        {
            var conn = myContext;

            using (SqlConnection connection = new SqlConnection(conn))
            using (SqlCommand cmd = new SqlCommand(spname, connection))
            {
                connection.Open();

                cmd.CommandType = CommandType.StoredProcedure;
                foreach (DictionaryEntry dPara in parameters)
                {
                    cmd.Parameters.AddWithValue("@" + dPara.Key.ToString(), dPara.Value);
                }

                rtnValue = cmd.ExecuteScalar();

                connection.Close();
            }
        }
        catch (Exception ex)
        {

        }

        return rtnValue;
    }

    public static DataTable GetDataTable(string sqlStatement, CommandType cmdType, SortedList sqlPara)
    {
        var result = new DataTable();

        try
        {
            var connection = myContext;

            using (SqlConnection ctx = new SqlConnection(connection))
            {
                ctx.Open();
                using (var cmd = new SqlCommand(sqlStatement, ctx))
                {
                    cmd.CommandType = cmdType;
                    foreach (DictionaryEntry dPara in sqlPara)
                    {
                        cmd.Parameters.AddWithValue(dPara.Key.ToString(), dPara.Value);
                    }

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(result);
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }

        return result;
    }
}