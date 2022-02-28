using gisua.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace gisua.Controllers
{
    public class ShowCastController : ApiController
    {
        string query = string.Empty;

        public List<CastTemplate> GetShowCast(string url)
        {
            var result = new List<CastTemplate>();

            try
            {
                var interval = 10 * 1000;
                System.Threading.Thread.Sleep(interval);
                WebClient client = new WebClient();
                byte[] html = client.DownloadData(url);
                UTF8Encoding utf = new UTF8Encoding();
                string mystring = utf.GetString(html);

                result = new JavaScriptSerializer().Deserialize<List<CastTemplate>>(mystring);
                return result;
            }
            catch (Exception ex)
            {
                return result;
            }
        }

        public bool SavePerson(CastTemplate data)
        {
            query = "save_person";
            var param = new SortedList();
            param.Add("id", data.person.id);
            param.Add("url", data.person.url);
            param.Add("name", data.person.name);

            if (!string.IsNullOrEmpty(data.person.birthday))
                param.Add("birthday", data.person.birthday);

            //data.person.deathday = "20210226";
            if (!string.IsNullOrEmpty(data.person.deathday))
                param.Add("deathday", data.person.deathday);
            param.Add("gender", data.person.gender);
            param.Add("updated", data.person.updated);

            try
            {
                var insert = CsData.ExecuteQryScalarSP(query, param);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool SaveCountry(CountryTemplate data, int id)
        {
            query = "save_country";
            var param = new SortedList();
            param.Add("id", id);
            param.Add("name", data.name);
            param.Add("code", data.code);
            param.Add("timezone", data.timezone);

            try
            {
                var insert = CsData.ExecuteQryScalarSP(query, param);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool SaveImage(ImageTemplate data, int id, int castType)
        {
            query = "save_image";
            var param = new SortedList();
            param.Add("id", id);

            var medium = string.Empty;
            try
            {
                medium = data.medium;
            }
            catch
            {
                medium = string.Empty;
            }

            var original = string.Empty;
            try
            {
                original = data.original;
            }
            catch
            {
                original = string.Empty;
            }

            param.Add("medium", medium);
            param.Add("original", original);
            param.Add("casttype", castType);

            try
            {
                var insert = CsData.ExecuteQryScalarSP(query, param);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool SaveLink(LinkTemplate data, int id, int castType)
        {
            query = "save_link";
            var param = new SortedList();
            param.Add("id", id);
            param.Add("url", data.self.href);
            param.Add("casttype", castType);

            try
            {
                var insert = CsData.ExecuteQryScalarSP(query, param);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool SaveCharacter(CastTemplate data)
        {
            query = "save_character";
            var param = new SortedList();
            param.Add("id", data.character.id);
            param.Add("url", data.character.url);
            param.Add("name", data.character.name);
            param.Add("self", data.character.self);
            param.Add("voice", data.character.voice);

            try
            {
                var insert = CsData.ExecuteQryScalarSP(query, param);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}

public enum CastTypeEnum
{
    person = 1,
    character = 2
}
