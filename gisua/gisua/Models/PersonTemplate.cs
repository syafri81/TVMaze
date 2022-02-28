using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace gisua.Models
{
    public class PersonTemplate
    {
        public int id { get; set; }
        public string url { get; set; }
        public string name { get; set; }
        public CountryTemplate country { get; set; }
        public string birthday { get; set; }
        public string deathday { get; set; }
        public string gender { get; set; }
        public ImageTemplate image { get; set; }
        public string updated { get; set; }
        public LinkTemplate _links { get; set; }
    }

    public class CountryTemplate
    {
        public string name { get; set; }
        public string code { get; set; }
        public string timezone { get; set; }
    }

    public class ImageTemplate
    {
        public string medium { get; set; }
        public string original { get; set; }
    }
    public class CharacterTemplate
    {
        public int id { get; set; }
        public string url { get; set; }
        public string name { get; set; }
        public ImageTemplate image { get; set; }
        public LinkTemplate _links { get; set; }
        public bool self { get; set; }
        public bool voice { get; set; }
    }

    public class LinkTemplate
    {
        public SelfTemplate self { get; set; }
    }

    public class SelfTemplate
    {
        public string href { get; set; }
    }

    public class CastTemplate
    {
        public PersonTemplate person { get; set; }
        public CharacterTemplate character { get; set; }
    }
}