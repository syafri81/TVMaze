using gisua.Controllers;
using gisua.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace gisua.Tests
{
    [TestClass]
    public class TVMazeTest
    {
        string baseUrl = "https://api.tvmaze.com/";
        string query = string.Empty;

        //[TestMethod]
        [DataTestMethod]
        [DataRow(1)]
        [DataRow(2)]
        public void GetShowCast(int castID)
        {
            var url = baseUrl + "shows/" + castID + "/cast";

            try
            {
                var controller = new ShowCastController();
                var records = controller.GetShowCast(url);
                Assert.IsInstanceOfType(records, typeof(List<CastTemplate>));
            }
            catch (Exception ex)
            {

            }
        }

        //[TestMethod]
        [DataTestMethod]
        [DataRow(1)]
        [DataRow(2)]
        public void SaveCast(int castID)
        {
            var url = baseUrl + "shows/" + castID + "/cast";
            var controller = new ShowCastController();
            var records = controller.GetShowCast(url);

            foreach (var item in records)
            {
                //if (item.person.id == 6)
                //{
                //    var a = 1;
                //}

                var result = controller.SavePerson(item);
                Assert.IsTrue(result);

                result = controller.SaveCountry(item.person.country, item.person.id);
                Assert.IsTrue(result);

                int castType = Convert.ToInt32(CastTypeEnum.person);
                query = "select * from tblImage where id=" + item.person.id + " and casttype=" + castType;
                var exist = CsData.GetDataTable(query, CommandType.Text, new SortedList());
                if (exist.Rows.Count == 0)
                {
                    result = controller.SaveImage(item.person.image, item.person.id, castType);
                    Assert.IsTrue(result);
                }

                query = "select * from tblLink where id=" + item.person.id + " and casttype=" + castType;
                exist = CsData.GetDataTable(query, CommandType.Text, new SortedList());
                if (exist.Rows.Count == 0)
                {
                    result = controller.SaveLink(item.person._links, item.person.id, castType);
                    Assert.IsTrue(result);
                }

                //character

                //if (item.character.id == 6)
                //{
                //    var a = 1;
                //}

                result = controller.SaveCharacter(item);
                Assert.IsTrue(result);

                castType = Convert.ToInt32(CastTypeEnum.character);
                query = "select * from tblImage where id=" + item.person.id + " and casttype=" + castType;
                exist = CsData.GetDataTable(query, CommandType.Text, new SortedList());
                if (exist.Rows.Count == 0)
                {
                    result = controller.SaveImage(item.character.image, item.character.id, castType);
                    Assert.IsTrue(result);
                }

                query = "select * from tblLink where id=" + item.person.id + " and casttype=" + castType;
                exist = CsData.GetDataTable(query, CommandType.Text, new SortedList());
                if (exist.Rows.Count == 0)
                {
                    result = controller.SaveLink(item.character._links, item.character.id, Convert.ToInt32(CastTypeEnum.character));
                    Assert.IsTrue(result);
                }
            }
        }

    }
}
